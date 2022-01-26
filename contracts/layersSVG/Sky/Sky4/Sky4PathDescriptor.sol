// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "../../../utils/PlanetRandom.sol";
import "./Sky4Path1_2Descriptor.sol";
import "./Sky4Path3_4Descriptor.sol";


library Sky4PathDescriptor {

  function getSVG(uint tokenId_, bytes32 blockhashInit_, uint offsetRandom_) public pure returns (string memory svg, uint offsetRandom) {
    uint index;

    // select random path layer
    uint randomPathLayer = PlanetRandom.calcRandom(0, 4, blockhashInit_, offsetRandom_);
    offsetRandom_ = offsetRandom_ + 1124;

    if (randomPathLayer == 0) {
      svg = Sky4Path1_2Descriptor.getPath1();
    } else if (randomPathLayer == 1) {
      svg = Sky4Path1_2Descriptor.getPath2();
    } else if (randomPathLayer == 2) {
      svg = Sky4Path3_4Descriptor.getPath3();
    } else {
      svg = Sky4Path3_4Descriptor.getPath4();
    }

    offsetRandom = offsetRandom_;
  }
}
