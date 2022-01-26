// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "./utils/SVGUtils.sol";
import "./interface/IPlanetsDescriptor.sol";
import "./interface/IPlanetsName.sol";
import "./interface/ISVGDescriptor.sol";
import "./interface/IPlanetsManager.sol";
import "./utils/PlanetRandom.sol";

contract PlanetsDescriptor is AccessControl, IPlanetsDescriptor {
  bytes32 public constant PLANETS_MANAGER_ROLE = keccak256("PLANETS_MANAGER_ROLE");

  struct PlanetPosition {
    int256 x;
    int256 y;
  }

  struct PlanetMetadata {
    string name;
    uint256 habitability;
    uint256 temperature;
    uint256 size;
    uint256 nSatellite;
    PlanetPosition position;
  }

  mapping (uint => PlanetPosition) public planetCoordinates;

  IPlanetsManager public planetsManager;

  IPlanetsDescriptor private previousContract;

  bool canChangePlanetsName = true;
  IPlanetsName public planetsName;

  bool canChangeSvgDescriptor = true;
  ISVGDescriptor public svgDescriptor;

  mapping (uint256 => bytes32) public _tokenIdToBlockhash;

  uint public planetsMintedBeforeUnveil;

  constructor (address _planetsManager, address _previousContract) {
    _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());

    planetsManager = IPlanetsManager(_planetsManager);
    previousContract = IPlanetsDescriptor(_previousContract);
    planetsMintedBeforeUnveil = IPlanetsDescriptor(_previousContract).getPlanetsMintedBeforeUnveil();
  }


  /**
  * @notice Migrate blockhash of planet minted in case of migrate of contract
  * @param _tokenIds The list of token id to migrate.
  * @param _blockhash The list of blockhash to migrate.
  * @dev List length must be equal.
  * Note that this function is supposed to be called only by DEFAULT_ADMIN_ROLE
  */
  function migrateTokenIdToBlockHash(uint[] memory _tokenIds, bytes32[] memory _blockhash) external onlyRole(DEFAULT_ADMIN_ROLE) returns(bool){
    require(_blockhash.length == _tokenIds.length, "PlanetsDescriptor: list must be equal");

    for (uint i = 0; i < _tokenIds.length; i++) {
      _tokenIdToBlockhash[_tokenIds[i]] = _blockhash[i];
    }
    return true;
  }

  function getPlanetsMintedBeforeUnveil() external override view returns(uint) {
    return planetsMintedBeforeUnveil;
  }

  function initPlanet(uint256 tokenId_) external virtual override onlyRole(PLANETS_MANAGER_ROLE) {
    if (planetsManager.unveilBlockHash() == bytes32(0)) {
      planetsMintedBeforeUnveil += 1;
    } else {
      _tokenIdToBlockhash[tokenId_] = blockhash(block.number - 1);
    }
  }

  function computeMysteryHash(uint _tokenId) public view returns (bytes32) {

    bytes32 unveilBlockHash = planetsManager.unveilBlockHash();
    bytes32 mysteryHash;
    if (_tokenId <= planetsMintedBeforeUnveil) {
      mysteryHash = keccak256(abi.encodePacked(unveilBlockHash, SVGUtils.uint2str(_tokenId, 0)));
    } else {
      mysteryHash = keccak256(abi.encodePacked(unveilBlockHash, _tokenIdToBlockhash[_tokenId]));
    }

    return mysteryHash;
  }

  /**
  * @notice Constructs the token uri of the specified token
  * @param _tokenId The token id.
  * @dev For other details see {IPlanetDescriptor-tokenURI}. Note that this function
          is supposed to be called only by the PlanetsManager
  */
  function tokenURI(uint _tokenId) external view virtual override onlyRole(PLANETS_MANAGER_ROLE) returns (string memory)  {
    // getMetadata
    PlanetMetadata memory planetMetadata = getMetadata(_tokenId);

    bytes32 mysteryHash = this.computeMysteryHash(_tokenId);
    return svgDescriptor.constructTokenURI(_tokenId, mysteryHash, planetMetadata);
  }

  /**
  * @notice Constructs the token uri of the specified token without the card
  * @param _tokenId The token id.
  * @dev For other details see {IPlanetDescriptor-tokenURI}. Note that this fucntion
          is supposed to be called only by the PlanetsManager
  */
  function tokenURIWithoutCard(uint _tokenId) external view virtual override onlyRole(PLANETS_MANAGER_ROLE) returns (string memory)  {
    // getMetadata
    PlanetMetadata memory planetMetadata = getMetadata(_tokenId);

    bytes32 mysteryHash = this.computeMysteryHash(_tokenId);
    return svgDescriptor.constructTokenURIWithoutCard(_tokenId, mysteryHash, planetMetadata);
  }

  /**
   * @notice return metadata by planetId
   * @param _tokenId Tokens id we want get metadata
   */
  function getMetadata(uint256 _tokenId) public view returns(PlanetMetadata memory) {
    require(_tokenId > 0 && _tokenId <= planetsManager.totalSupply(), "PlanetsDescriptor: tokenId not exist");

    bytes32 mysteryHash = this.computeMysteryHash(_tokenId);

    PlanetMetadata memory planetMetadata;
    planetMetadata.habitability = PlanetRandom.calcRandom(1,101, mysteryHash, _tokenId);

    planetMetadata.temperature = PlanetRandom.calcRandom(173, 373, mysteryHash, _tokenId); // ° kelvin

    planetMetadata.size = PlanetRandom.calcRandom(1000,3001, mysteryHash, _tokenId);

    planetMetadata.nSatellite = PlanetRandom.calcRandom(1,21, mysteryHash, _tokenId);

    planetMetadata.position = planetCoordinates[_tokenId];

    planetMetadata.name = address(planetsName) == address(0) ?
    string(abi.encodePacked("Planet ",SVGUtils.uint2str(_tokenId, 0)))
    :
    planetsName.getPlanetNameById(_tokenId);


    return planetMetadata;
  }

  /**
   * @notice Batch add planet coordinates
   * @param _tokenIds Tokens ids relative to the position at the same index
   * @param _xCoord X coordinates
   * @param _yCoord Y coordinates
   */
  function insertPlanetCoordinates(uint[] memory _tokenIds, int[] memory _xCoord, int[] memory _yCoord) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(_tokenIds.length == _xCoord.length, "PlanetsDescriptor: invalid array");
    require(_xCoord.length == _yCoord.length, "PlanetsDescriptor: invalid array");

    for (uint i = 0; i < _tokenIds.length; i++) {
      PlanetPosition memory position = PlanetPosition({
        x: _xCoord[i],
        y: _yCoord[i]
      });

      planetCoordinates[_tokenIds[i]] = position;
    }
  }

  /**
   * @notice Change SVG Descriptor contract address
   * @param _descriptor The address of the new SVG Descriptor
   */
  function addSVGDescriptor(address _descriptor) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(canChangeSvgDescriptor, "PlanetsDescriptor: can't change SVG descriptor");
    require(_descriptor != address(svgDescriptor), "PlanetsDescriptor: same SVG descriptor address");

    svgDescriptor = ISVGDescriptor(_descriptor);
  }

  /**
   * @notice Disable the opportunity to change the address of the SVG descriptor
   */
  function disableSVGDescriptorUpgradability() external onlyRole(DEFAULT_ADMIN_ROLE) {
    canChangeSvgDescriptor = false;
  }

  /**
   * @notice Change planets name contract address
   * @param _planetsName The address of the new planets name
   */
  function addPlanetsName(address _planetsName) public onlyRole(DEFAULT_ADMIN_ROLE) {
    require(canChangePlanetsName, "PlanetsDescriptor: can't change planets name");
    require(_planetsName != address(planetsName), "PlanetsDescriptor: same planets name address");

    planetsName = IPlanetsName(_planetsName);
  }

  /**
   * @notice Disable the opportunity to change the address of the planets name
   */
  function disablePlanetsNameUpgradability() external onlyRole(DEFAULT_ADMIN_ROLE) {
    canChangePlanetsName = false;
  }

}
