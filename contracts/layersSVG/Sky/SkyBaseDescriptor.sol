// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "./Sky4/Sky4Descriptor.sol";
import "./Sky1/Sky1Descriptor.sol";
import "./Sky2/Sky2Descriptor.sol";
import "./Sky3/Sky3Descriptor.sol";
import "../../PlanetsDescriptor.sol";


library SkyBaseDescriptor {

  function getSVG(uint256 tokenId_, bytes32 blockhashInit_, uint offsetRandom_, PlanetsDescriptor.PlanetPosition memory coordinate_) public pure returns (string memory svg, uint offsetRandom) {

    string memory svgLayer;
    uint newOffsetRandom;

    // select random sky layer
    uint skyBaseLayer = getSkyBaseLayerNumber(coordinate_);

    if (skyBaseLayer == 0) {
      (svgLayer, newOffsetRandom) = Sky4Descriptor.getSVG(tokenId_, blockhashInit_, offsetRandom_);
      svg = string(
        abi.encodePacked(
          '<g id="sky_4"> ',
          svgLayer,
          '</g> '
        )
      );
    } else if (skyBaseLayer == 1) {
      (svgLayer, newOffsetRandom) = Sky1Descriptor.getSVG(tokenId_, blockhashInit_, offsetRandom_);
      svg = string(
        abi.encodePacked(
          '<g id="sky_1"> ',
          svgLayer,
          '</g> '
        )
      );
    } else if (skyBaseLayer == 2) {
      (svgLayer, newOffsetRandom) = Sky2Descriptor.getSVG(tokenId_, blockhashInit_, offsetRandom_);
      svg = string(
        abi.encodePacked(
          '<g id="sky_2"> ',
          svgLayer,
          '</g> '
        )
      );
    } else {
      (svgLayer, newOffsetRandom) = Sky3Descriptor.getSVG(tokenId_, blockhashInit_, offsetRandom_);
      svg = string(
        abi.encodePacked(
          '<g id="sky_3"> ',
          svgLayer,
          '</g> '
        )
      );
    }
    offsetRandom = newOffsetRandom;
  }

  function getSkyBaseLayerNumber(PlanetsDescriptor.PlanetPosition memory coordinate_) private pure returns(uint) {
    if(coordinate_.x > 0) {
      if(coordinate_.y > 0) {
        return 0;
      } else {
        return 1;
      }
    } else {
      if (coordinate_.y > 0) {
        return 3;
      } else {
        return 2;
      }
    }
  }

}
