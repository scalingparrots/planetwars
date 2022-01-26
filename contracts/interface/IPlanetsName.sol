// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;

interface IPlanetsName{

  /**
  * @dev return planet name by tokenId_
  */
  function getPlanetNameById(uint256 tokenId_) external view returns  (string memory);

  function setPlanetName(uint tokenId_, string memory newName_) external returns(bool);

}
