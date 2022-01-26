// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "./PlanetsManager.sol";
import "./utils/SVGUtils.sol";
import "./interface/IPlanetsName.sol";
import "./interface/IPlanetsManager.sol";
import "./interface/IPlanetsDescriptor.sol";

contract PlanetsName is Context, IPlanetsName, AccessControl {

  mapping(uint => string) _tokenIdToName;
  mapping(uint => bool) _nameHashToIsUsed;

  bool canChangePlanetsManager = true;
  IPlanetsManager private planetsManager;
  bool canChangePlanetsDescriptor = true;
  IPlanetsDescriptor private planetsDescriptor;

  constructor(address _planetsManager, address _planetDescriptor) {
    _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());

    planetsManager = IPlanetsManager(_planetsManager);
    planetsDescriptor = IPlanetsDescriptor(_planetDescriptor);
  }

  function getPlanetNameById(uint _tokenId) external virtual override view returns(string memory) {

    return bytes(_tokenIdToName[_tokenId]).length > 0 ? _tokenIdToName[_tokenId] : string(abi.encodePacked("Planet ",SVGUtils.uint2str(_tokenId, 0)));
  }

  function setPlanetName(uint _tokenId, string memory newName_) public override returns(bool) {
    require(planetsManager.ownerOf(_tokenId) == _msgSender(), "PlanetsName: sender must be owner of the planet");
    require(keccak256(abi.encodePacked(newName_)) != keccak256(abi.encodePacked(_tokenIdToName[_tokenId])), "PlanetsName: new name is the same of the old name");

    string memory oldName = _tokenIdToName[_tokenId];
    uint oldNameHash = uint(
      keccak256(abi.encodePacked(oldName))
    );

    uint newNameHash = uint(
      keccak256(abi.encodePacked(newName_))
    );

    require(_nameHashToIsUsed[newNameHash] == false, "PlanetsName: name already used");

    _nameHashToIsUsed[oldNameHash] = false;
    _nameHashToIsUsed[newNameHash] = true;

    _tokenIdToName[_tokenId] = newName_;

    return true;
  }

  function addPlanetsManager(address _planetsManager) public onlyRole(DEFAULT_ADMIN_ROLE) {
    require(canChangePlanetsManager, "PlanetsName: can't change planets manager");
    require(_planetsManager != address(planetsManager), "PlanetsName: same planetsName address");

    planetsManager = IPlanetsManager(_planetsManager);
  }

  /**
 * @notice Disable the opportunity to change the address of the planets name
 */
  function disablePlanetsManagerUpgradability() external onlyRole(DEFAULT_ADMIN_ROLE) {
    canChangePlanetsManager = false;
  }

  function addPlanetsDescriptor(address _planetsDescriptor) public onlyRole(DEFAULT_ADMIN_ROLE) {
    require(canChangePlanetsDescriptor, "PlanetsName: can't change planets descriptor");
    require(_planetsDescriptor != address(planetsDescriptor), "PlanetsName: same planetsDescriptor address");

    planetsDescriptor = IPlanetsDescriptor(_planetsDescriptor);
  }

  /**
 * @notice Disable the opportunity to change the address of the planets name
 */
  function disablePlanetsDescriptorUpgradability() external onlyRole(DEFAULT_ADMIN_ROLE) {
    canChangePlanetsDescriptor = false;
  }


}
