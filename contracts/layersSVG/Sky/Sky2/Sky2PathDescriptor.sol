// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "../../../utils/PlanetRandom.sol";
import "./Sky2Path1_2Descriptor.sol";
import "./Sky2Path3_4Descriptor.sol";


library Sky2PathDescriptor {

  function getSVG(uint tokenId_, bytes32 blockhashInit_, uint offsetRandom_) public pure returns (string memory svg, uint offsetRandom) {
    uint index = 0;

    // select random path layer
    uint randomPathLayer = PlanetRandom.calcRandom(0, 4, blockhashInit_, offsetRandom_);

    if (randomPathLayer == 0) {
      svg = Sky2Path1_2Descriptor.getPath1();
    } else if (randomPathLayer == 1) {
      svg = Sky2Path1_2Descriptor.getPath2();
    } else if (randomPathLayer == 2) {
      svg = Sky2Path3_4Descriptor.getPath3();
    } else {
      svg = Sky2Path3_4Descriptor.getPath4();
    }

    offsetRandom = offsetRandom_;
  }
}
