// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "./DataDescriptor_1.sol";
import "./DataDescriptor_2.sol";
import "../../PlanetsDescriptor.sol";


library DataDescriptor {

  function getSVG(uint tokenId_, PlanetsDescriptor.PlanetMetadata memory planetMetadata_) public pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
        DataDescriptor_1.getSVG(tokenId_, planetMetadata_),
        DataDescriptor_2.getSVG(planetMetadata_)
    )
    );
  }

}
