// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;

interface IPlanetsDescriptor{
  /**
  * @dev return SVG code
  */
  function tokenURI(uint256 tokenId_) external view returns  (string memory);
  function tokenURIWithoutCard(uint256 tokenId_) external view returns  (string memory);
  function initPlanet(uint256 tokenId_) external;
  function getPlanetsMintedBeforeUnveil() external view returns(uint);
}
