// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import './PlanetSurface3_1Descriptor.sol';
import './PlanetSurface3_2Descriptor.sol';

library PlanetSurface3Descriptor {

  function getSVG() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        PlanetSurface3_1Descriptor.getSVG(),
        PlanetSurface3_2Descriptor.getSVG()
      )
    );
  }
}
