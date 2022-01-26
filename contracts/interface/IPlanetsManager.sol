// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
import "@openzeppelin/contracts-upgradeable/token/ERC721/IERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/IAccessControlUpgradeable.sol";

interface IPlanetsManager is IERC721Upgradeable, IAccessControlUpgradeable{
  function unveilBlockHash() external view returns (bytes32);
  function unveilIndex() external view returns (uint);

  function totalSupply() external view returns(uint);

  function MAX_PLANET_SUPPLY() external view returns (uint);

  function computeShiftedId(uint _tokenId) external view returns (uint);
}
