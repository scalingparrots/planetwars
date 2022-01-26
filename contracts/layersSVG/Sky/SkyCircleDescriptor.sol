// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "../../utils/PlanetRandom.sol";
import "../../utils/SVGUtils.sol";

library SkyCircleDescriptor {

    struct ParamsCircle {
        string fillClass;
        uint nMin;
        uint nMax;

    }

    function getSVG(uint tokenId_, bytes32 blockhashInit_, uint offsetRandom_) public pure returns (string memory svg, uint offsetRandom) {

        (string memory svgCircleWhite, uint newOffsetRandom1) = getCircleSVG(tokenId_, blockhashInit_, offsetRandom_, ParamsCircle("fill_white_star",10,21) );
        (string memory svgCircleRed, uint newOffsetRandom2) = getCircleSVG(tokenId_, blockhashInit_, newOffsetRandom1, ParamsCircle("fill_red_star",5,10) );
        (string memory svgCircleBlue, uint newOffsetRandom3) = getCircleSVG(tokenId_, blockhashInit_, newOffsetRandom2, ParamsCircle("fill_blue_star",10,21) );
        (string memory svgCirclePurple, uint newOffsetRandom4) = getCircleSVG(tokenId_, blockhashInit_, newOffsetRandom3, ParamsCircle("fill_purple_star",5,10) );

        offsetRandom = newOffsetRandom4;

        svg = string(
            abi.encodePacked(
                svgCircleWhite,
                svgCircleRed,
                svgCircleBlue,
                svgCirclePurple
            )
        );

    }

    function getCircleSVG(uint tokenId_, bytes32 blockhashInit_, uint offsetRandom_, ParamsCircle memory paramsCircle) private pure returns (string memory svg, uint offsetRandom) {
        uint index = 0;

        bytes32 randomHash = PlanetRandom.getRandomHash(blockhashInit_, tokenId_ + offsetRandom_);
        offsetRandom_ = offsetRandom_ + 1124;

        uint nCircle = PlanetRandom.calcRandomBytes1(paramsCircle.nMin, paramsCircle.nMax, randomHash, index);
        index ++;

        string memory svgTemp = "";

        for(uint i = 0; i < nCircle ; i++) {
            if (index == 31 || index +1 == 31 || index +2 == 31 ) {
                randomHash = PlanetRandom.getRandomHash(blockhashInit_, tokenId_ + offsetRandom_);
                offsetRandom_ = offsetRandom_ + 1124;
                index = 0;
            }
            uint xPoint = PlanetRandom.calcRandomBytes1(0, 566, randomHash, index);
            index ++;
            uint yPoint = PlanetRandom.calcRandomBytes1(0, 935, randomHash, index);
            index ++;
            uint size = PlanetRandom.calcRandomBytes1(0, 25, randomHash, index);
            index ++;

            svgTemp = string(
                abi.encodePacked(
                    svgTemp,
                    '<circle class="', paramsCircle.fillClass, '" ',
                    'cx="', SVGUtils.uint2str(xPoint, 0), '" ',
                    'cy="', SVGUtils.uint2str(yPoint, 0), '" ',
                    'r="', SVGUtils.uint2str(size, 1),'"/> '
                )
            );
        }

        svg = svgTemp;
        offsetRandom = offsetRandom_;
    }

}
