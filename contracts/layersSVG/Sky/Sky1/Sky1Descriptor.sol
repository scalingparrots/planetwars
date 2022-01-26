// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "./Sky1PathDescriptor.sol";


library Sky1Descriptor {

    function getSVG(uint256 tokenId_, bytes32 blockhashInit_, uint offsetRandom_) public pure returns (string memory svg, uint offsetRandom) {

        (string memory svgPath, uint newOffsetRandom) = Sky1PathDescriptor.getSVG(tokenId_, blockhashInit_, offsetRandom_);

        offsetRandom = newOffsetRandom;
        svg = string(
            abi.encodePacked(
                '<radialGradient id="SKY_1_MAIN" cx="283.4646" cy="283.4646" r="283.4646" gradientUnits="userSpaceOnUse"> ',
                '<stop  offset="0" style="stop-color:#4F4FA6"/> ',
                '<stop  offset="0.35" style="stop-color:#212145"/> ',
                '<stop  offset="0.6706" style="stop-color:#0F1120"/> ',
                '</radialGradient> ',
                '<path style="fill:url(#SKY_1_MAIN);" d="M0,0v935.43h566.9V0H0z"/> ',
                    svgPath
            )
        );
    }
}
