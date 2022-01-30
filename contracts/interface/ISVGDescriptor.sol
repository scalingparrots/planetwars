// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;

import "./../PlanetsDescriptor.sol";

interface ISVGDescriptor {
    function constructTokenURI(uint256 tokenId_, bytes32 blockhashInit_, PlanetsDescriptor.PlanetMetadata memory planetMetadata_) external view returns (string memory);
    function constructTokenURIWithoutCard(uint256 tokenId_, bytes32 blockhashInit_, PlanetsDescriptor.PlanetMetadata memory planetMetadata_) external view returns (string memory);
}
