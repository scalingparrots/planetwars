// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "../../utils/PlanetRandom.sol";
import "../../utils/SVGUtils.sol";


library SkyRhombusDescriptor {

  function getSVG(uint tokenId_, bytes32 blockhashInit_, uint offsetRandom_) public pure returns (string memory svg, uint offsetRandom) {

    (string memory svgRhombusBig, uint newOffsetRandom) = getRhombusBig(tokenId_, blockhashInit_, offsetRandom_);
    (string memory svgRhombusMedium, uint newOffsetRandom2) = getRhombusMedium(tokenId_, blockhashInit_, newOffsetRandom);
    (string memory svgRhombusSmall, uint newOffsetRandom3) = getRhombusSmall(tokenId_, blockhashInit_, newOffsetRandom2);

    offsetRandom = newOffsetRandom3;
    svg = string(
      abi.encodePacked(
        svgRhombusBig,
        svgRhombusMedium,
        svgRhombusSmall
      )
    );
  }

  function getRhombusBig(uint tokenId_, bytes32 blockhashInit_, uint offsetRandom_) private pure returns (string memory svg, uint offsetRandom) {
    uint index = 0;

    bytes32 randomHashRhombusBig = PlanetRandom.getRandomHash(blockhashInit_, tokenId_ + offsetRandom_);
    offsetRandom_ = offsetRandom_ + 1124;

    uint nRhombus = PlanetRandom.calcRandomBytes1(1, 5, randomHashRhombusBig, index);
    index ++;

    string memory svgTemp = "";

    for (uint i = 0; i < nRhombus; i++) {
      if (index == 31 || index + 1 == 31) {
        randomHashRhombusBig = PlanetRandom.getRandomHash(blockhashInit_, tokenId_ + offsetRandom_);
        offsetRandom_ = offsetRandom_ + 1124;
        index = 0;
      }
      uint xPoint = PlanetRandom.calcRandomBytes1(0, 566, randomHashRhombusBig, index);
      index ++;
      uint yPoint = PlanetRandom.calcRandomBytes1(0, 935, randomHashRhombusBig, index);
      index ++;

      svgTemp = string(
        abi.encodePacked(
          svgTemp,
          '<path class="fill_white" d="',
          'M', SVGUtils.uint2str(xPoint, 0), ',', SVGUtils.uint2str(yPoint, 0),
          'l1.9,8.4c0.2,1,1,1.7,2,1.9l8.5,1.5l-8.4,1.9c-1,0.2-1.7,1-1.9,2l-1.5,8.5',
          'L', SVGUtils.uint2str(xPoint < 1 ?0:xPoint - 1, 0), ',', SVGUtils.uint2str(yPoint + 16, 0),
          'c-0.2-1-1-1.7-2-1.9',
          'L', SVGUtils.uint2str(xPoint < 12 ?0:xPoint - 12, 0), ',', SVGUtils.uint2str(yPoint + 13, 0),
          'l8.4-1.9c1-0.2,1.7-1,1.9-2',
          'L', SVGUtils.uint2str(xPoint, 0), ',', SVGUtils.uint2str(yPoint, 0),
          'z"/> '
        )
      );

    }

    svg = svgTemp;
    offsetRandom = offsetRandom_;
  }

  function getRhombusMedium(uint tokenId_, bytes32 blockhashInit_, uint offsetRandom_) private pure returns (string memory svg, uint offsetRandom) {
    uint index = 0;

    bytes32 randomHashRhombusMedium = PlanetRandom.getRandomHash(blockhashInit_, tokenId_ + offsetRandom_);
    offsetRandom_ = offsetRandom_ + 1124;

    uint nRhombus = PlanetRandom.calcRandomBytes1(1, 5, randomHashRhombusMedium, index);
    index ++;

    string memory svgTemp = "";

    for (uint i = 0; i < nRhombus; i++) {
      if (index == 31 || index + 1 == 31) {
        randomHashRhombusMedium = PlanetRandom.getRandomHash(blockhashInit_, tokenId_ + offsetRandom_);
        offsetRandom_ = offsetRandom_ + 1124;
        index = 0;
      }
      uint xPoint = PlanetRandom.calcRandomBytes1(0, 566, randomHashRhombusMedium, index);
      index ++;
      uint yPoint = PlanetRandom.calcRandomBytes1(0, 935, randomHashRhombusMedium, index);
      index ++;

      svgTemp = string(
        abi.encodePacked(
          svgTemp,
          '<path class="fill_white" d="',
          'M', SVGUtils.uint2str(xPoint, 0), ',', SVGUtils.uint2str(yPoint, 0),
          'l1.6,7c0.2,0.8,0.8,1.4,1.7,1.6l7,1.3l-7,1.6c-0.8,0.2-1.4,0.8-1.6,1.7l-1.3,7l-1.6-7',
          'c-0.2-0.8-0.8-1.4-1.7-1.6l-7-1.3l7-1.6c0.8-0.2,1.4-0.8,1.6-1.7',
          'L', SVGUtils.uint2str(xPoint, 0), ',', SVGUtils.uint2str(yPoint, 0), 'z"/> '
        )
      );

    }

    svg = svgTemp;
    offsetRandom = offsetRandom_;
  }

  function getRhombusSmall(uint tokenId_, bytes32 blockhashInit_, uint offsetRandom_) private pure returns (string memory svg, uint offsetRandom) {
    uint index = 0;

    bytes32 randomHashRhombusSmall = PlanetRandom.getRandomHash(blockhashInit_, tokenId_ + offsetRandom_);
    offsetRandom_ = offsetRandom_ + 1124;

    uint nRhombus = PlanetRandom.calcRandomBytes1(1, 5, randomHashRhombusSmall, index);
    index ++;

    string memory svgTemp = "";

    for (uint i = 0; i < nRhombus; i++) {
      if (index == 31 || index + 1 == 31) {
        randomHashRhombusSmall = PlanetRandom.getRandomHash(blockhashInit_, tokenId_ + offsetRandom_);
        offsetRandom_ = offsetRandom_ + 1124;
        index = 0;
      }
      uint xPoint = PlanetRandom.calcRandomBytes1(0, 566, randomHashRhombusSmall, index);
      index ++;
      uint yPoint = PlanetRandom.calcRandomBytes1(0, 935, randomHashRhombusSmall, index);
      index ++;

      svgTemp = string(
        abi.encodePacked(
          svgTemp,
          '<path class="fill_white" d="',
          'M', SVGUtils.uint2str(xPoint, 0), ',', SVGUtils.uint2str(yPoint, 0),
          'l0.9,4.1c0.1,0.5,0.5,0.8,1,0.9l4.1,0.7l-4.1,0.9c-0.5,0.1-0.8,0.5-0.9,1l-0.7,4.1l-0.9-4.1',
          'c-0.1-0.5-0.5-0.8-1-0.9l-4.1-0.7l4.1-0.9c0.5-0.1,0.8-0.5,0.9-1',
          'L', SVGUtils.uint2str(xPoint, 0), ',', SVGUtils.uint2str(yPoint, 0), 'z"/> '
        )
      );

    }

    svg = svgTemp;
    offsetRandom = offsetRandom_;
  }

}
