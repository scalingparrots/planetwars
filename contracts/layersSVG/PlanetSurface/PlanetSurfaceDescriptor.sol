// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import '../../utils/PlanetRandom.sol';
import '../../utils/SVGUtils.sol';
import './PlanetSurface1/PlanetSurface1Descriptor.sol';
import './PlanetSurface2/PlanetSurface2Descriptor.sol';
import './PlanetSurface3/PlanetSurface3Descriptor.sol';
import './PlanetSurface4/PlanetSurface4Descriptor.sol';

library PlanetSurfaceDescriptor {

  function getSVG(uint256 tokenId_, bytes32 blockhashInit_, uint256 habitability, uint offsetRandom_) public pure returns (string memory svg, uint offsetRandom) {

    string memory speedPlanet = SVGUtils.uint2str(PlanetRandom.calcRandom(25,45, blockhashInit_, tokenId_), 0);
    offsetRandom = offsetRandom_;
    svg = string(
      abi.encodePacked(
        '<g class="fill_surface"> ',
        '<defs> <ellipse id="overflow_planet" cx="282.51" cy="282.52" rx="106.3" ry="106.3"/> </defs> ',
        '<clipPath id="clipPath_animation_planet"> <use xlink:href="#overflow_planet" style="overflow:visible;" /> ',
        '<animateTransform attributeName="transform" type="translate" ',
        'from="0 0" to="390.6 0" begin="earth_1.begin" dur="',speedPlanet,'" /> </clipPath> '
      ));

    if (habitability <= 25 ) {
      svg = string(
        abi.encodePacked(
          svg,
            PlanetSurface1Descriptor.getSVG()
        )
      );
    }
    if (habitability > 25 && habitability <= 50) {
      svg = string(
        abi.encodePacked(
          svg,
            PlanetSurface2Descriptor.getSVG()
        )
      );
    }

    if (habitability > 50 && habitability <= 75) {
      svg = string(
        abi.encodePacked(
          svg,
            PlanetSurface3Descriptor.getSVG()
        )
      );
    }

    if (habitability > 75 && habitability <= 100) {
      svg = string(
        abi.encodePacked(
          svg,
            PlanetSurface4Descriptor.getSVG()
        )
      );
    }

    svg = string(
      abi.encodePacked(
        svg,
        '<animateTransform id="earth_1" attributeName="transform" type="translate" ',
        'from="0 0" to="-390.6 0" begin="0s;earth_1.end" dur="',speedPlanet,'" /> </path> ',
        '</g> '
      )
    );
  }
}

