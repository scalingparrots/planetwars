// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "./PlanetRing1Descriptor.sol";
import "./PlanetRing2Descriptor.sol";
import "./PlanetRing3Descriptor.sol";
import "../PlanetColor.sol";

library PlanetRingDescriptor {

  function getSVG(uint256 nSatellite_, PlanetColor.PlanetColorPalette memory planetColorPalette_) public pure returns (string memory svg) {

    svg = string(abi.encodePacked('<g class="ring"> '));
    if (nSatellite_ > 5 && nSatellite_ <= 10) {
      svg = string(
        abi.encodePacked(
          svg,
          PlanetRing1Descriptor.getSVG(planetColorPalette_)
        )
      );
    }

    if (nSatellite_ > 10 && nSatellite_ <= 15) {
      svg = string(
        abi.encodePacked(
          svg,
          PlanetRing2Descriptor.getSVG()
        )
      );
    }

    if (nSatellite_ > 15 && nSatellite_ <= 20) {
      svg = string(
        abi.encodePacked(
          svg,
          PlanetRing3Descriptor.getSVG()
        )
      );
    }

    svg = string(
      abi.encodePacked(
        svg,
        '</g> '
      )
    );

  }
}

