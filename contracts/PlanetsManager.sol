// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;

import "./interface/IPlanetsDescriptor.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

contract PlanetsManager is ERC721EnumerableUpgradeable, AccessControlUpgradeable {
  uint public constant MAX_PLANET_SUPPLY = 1123;
  uint public constant BASE_PLANET_PRICE = 0.5 ether;
  uint public constant STEP_PLANET_PRICE = 0.005 ether;

  event PlanetMinted(address sender,uint id, uint price);

  // Cannot be immutable because of upgradeable contracts
  uint public START_MINT;
  uint public UNVEIL_BLOCK;

  bytes32 public unveilBlockHash;
  uint public unveilIndex;

  IPlanetsDescriptor public planetDescriptor;
  bool public canChangePlanetDescriptor;

  uint private planetsSupply;


  function initialize(uint _startMint, uint _unveilBlock) external initializer {
    AccessControlUpgradeable.__AccessControl_init();
    ERC721EnumerableUpgradeable.__ERC721Enumerable_init();
    ERC721Upgradeable.__ERC721_init_unchained("Planets", "PLN");
    _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());

    START_MINT = _startMint;
    UNVEIL_BLOCK = _unveilBlock;

    canChangePlanetDescriptor = true;
  }

  function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721EnumerableUpgradeable, AccessControlUpgradeable) returns (bool) {
    return super.supportsInterface(interfaceId);
  }

  /**
   * @notice Return the price of the specified planet in BNB
   * @param _id The id of the planet
   */
  function getPlanetPrice(uint _id) public pure returns (uint) {
    return BASE_PLANET_PRICE + (STEP_PLANET_PRICE * (_id - 1));
  }

  /**
   * @notice Mint a new planet to the specified address
   */
  function mintPlanet() public payable {
    require(block.number > START_MINT, "PlanetsManager: Mint not started yet");
    require(planetsSupply < MAX_PLANET_SUPPLY, "PlanetsManager: Max supply reached");

    uint planetId = planetsSupply + 1; // First mint exclude planet 0 (Sun)
    uint planetPrice = getPlanetPrice(planetId);
    require(msg.value >= planetPrice, "PlanetsManager: Insufficent BNB amount");

    _safeMint(msg.sender, planetId);

    planetDescriptor.initPlanet(planetId);
    planetsSupply += 1;

    uint bnbDiff = msg.value - planetPrice;
    if (bnbDiff > 0) {
      payable(msg.sender).transfer(bnbDiff);
    }

    emit PlanetMinted(msg.sender, planetId, planetPrice);
  }

  /**
   * @notice Compute the unveil index of each planet
   */
  function finalizeUnveil() external {
    require(unveilBlockHash == bytes32(0), "PlanetsManager: Already finalized unveil index");

    // First case: all planets are minted
    if (planetsSupply == MAX_PLANET_SUPPLY) {
      unveilBlockHash = blockhash(block.number - 1);
    }

    // Second case: unveil block has been mined
    else if (block.number > UNVEIL_BLOCK) {
      unveilBlockHash = blockhash(UNVEIL_BLOCK);

      // Sanity check
      if (block.number - UNVEIL_BLOCK > 255) {
        unveilBlockHash = blockhash(block.number - 1);
      }
    }
    else {
      revert("PlanetsManager: cannot finalize unveil yet");
    }

    unveilIndex = uint(unveilBlockHash) % MAX_PLANET_SUPPLY;

    if (unveilIndex == 0) {
      unveilIndex = 1;
    }
  }

  /**
  * @dev See {IERC721Metadata-tokenURI}.
  */
  function tokenURI(uint _tokenId) public view virtual override returns (string memory) {
    require(unveilBlockHash != bytes32(0), "PlanetsManager: wait until unveil block");
    require(_exists(_tokenId), "PlanetsManager: URI query for nonexistent token");
    uint shiftedId = computeShiftedId(_tokenId);

    return planetDescriptor.tokenURI(shiftedId);
  }

  function totalSupply() public view override returns(uint){
    return planetsSupply;
  }

  /**
   * @notice Compute the shifted token id based on the original id and the unveil index
   * @param _tokenId Original token id
   * @return shidtedId uint Shifted token id
   */
  function computeShiftedId(uint _tokenId) public view returns (uint) {
    require(_tokenId > 0 && _tokenId <= MAX_PLANET_SUPPLY, "PlanetsManager: invalid token id");
    require(unveilIndex != 0, "PlanetsManager: wait until unveil block");

    return ((_tokenId + unveilIndex) % MAX_PLANET_SUPPLY) + 1;
  }

  /**
   * @notice Change Planet Descriptor address
   * @param _descriptor The address of the new Planet Descriptor
   */
  function addPlanetDescriptor(address _descriptor) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(canChangePlanetDescriptor, "PlanetsManager: can't change Planet Descriptor");
    require(_descriptor != address(planetDescriptor), "PlanetsManager: same Planet Descriptor address");

    planetDescriptor = IPlanetsDescriptor(_descriptor);
  }

  /**
   * @notice Disable the opportunity to change the address of the SVG descriptor
   */
  function disablePlanetDescriptorUpgradability() external onlyRole(DEFAULT_ADMIN_ROLE) {
    canChangePlanetDescriptor = false;
  }

  /**
   * @notice Admin can change start mint block number
   */
  function changeStartMint(uint _newStartMint) external onlyRole(DEFAULT_ADMIN_ROLE){
    require(block.number < START_MINT, "PlanetsManager: new start mint is the same of current start mint");
    require(_newStartMint != START_MINT, "PlanetsManager: new start mint is the same of current start mint");
    START_MINT = _newStartMint;
  }

  /**
   * @notice Withdraw raised payment BNB
   */
  function withdraw() external onlyRole(DEFAULT_ADMIN_ROLE) returns (bool) {
    payable(msg.sender).transfer(address(this).balance);
    return true;
  }

}
