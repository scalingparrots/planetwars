// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import './PlanetSurface1_1Descriptor.sol';
import './PlanetSurface1_2Descriptor.sol';

library PlanetSurface1Descriptor {

  function getSVG() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        PlanetSurface1_1Descriptor.getSVG(),
        PlanetSurface1_2Descriptor.getSVG()
    )
    );
  }
}
