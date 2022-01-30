// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "./SkyBaseDescriptor.sol";
import "./SkyCircleDescriptor.sol";
import "./SkyRhombusDescriptor.sol";


library SkyDescriptor {

  function getSVG(uint256 tokenId_, bytes32 blockhashInit_, uint offsetRandom_, PlanetsDescriptor.PlanetPosition memory coordinate_) public pure returns (string memory svg, uint offsetRandom) {

    (string memory svgBase, uint newOffsetRandom) = SkyBaseDescriptor.getSVG(tokenId_, blockhashInit_, offsetRandom_, coordinate_);
    (string memory svgRhombus, uint newOffsetRandom2) = SkyRhombusDescriptor.getSVG(tokenId_, blockhashInit_, newOffsetRandom);
    (string memory svgCircle, uint newOffsetRandom3) = SkyCircleDescriptor.getSVG(tokenId_, blockhashInit_, newOffsetRandom);

    offsetRandom = newOffsetRandom;
    svg = string(
      abi.encodePacked(
        svgBase,
        svgCircle,
        svgRhombus
      )
    );

  }

}
