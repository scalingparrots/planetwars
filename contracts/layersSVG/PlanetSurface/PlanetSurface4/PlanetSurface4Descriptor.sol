// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import './PlanetSurface4_1Descriptor.sol';
import './PlanetSurface4_2Descriptor.sol';

library PlanetSurface4Descriptor {

  function getSVG() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        PlanetSurface4_1Descriptor.getSVG(),
        PlanetSurface4_2Descriptor.getSVG()
    )
    );
  }
}
