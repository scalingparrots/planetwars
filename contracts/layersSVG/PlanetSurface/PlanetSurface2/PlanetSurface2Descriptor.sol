// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import './PlanetSurface2_1Descriptor.sol';
import './PlanetSurface2_2Descriptor.sol';
import './PlanetSurface2_3Descriptor.sol';

library PlanetSurface2Descriptor {

  function getSVG() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        PlanetSurface2_1Descriptor.getSVG(),
        PlanetSurface2_2Descriptor.getSVG(),
        PlanetSurface2_3Descriptor.getSVG()
    )
    );
  }
}
