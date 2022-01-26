// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "./Sky2PathDescriptor.sol";


library Sky2Descriptor {

  function getSVG(uint256 tokenId_, bytes32 blockhashInit_, uint offsetRandom_) public pure returns (string memory svg, uint offsetRandom) {

    (string memory svgPath, uint newOffsetRandom) = Sky2PathDescriptor.getSVG(tokenId_, blockhashInit_, offsetRandom_);

    offsetRandom = newOffsetRandom;
    svg = string(
      abi.encodePacked(
        '<radialGradient id="SKY_2_MAIN" cx="268.519" cy="295.4548" r="324.6202" gradientUnits="userSpaceOnUse"> ',
        '<stop  offset="0.0634" style="stop-color:#543833"/> ',
        '<stop  offset="0.4356" style="stop-color:#362209"/> ',
        '<stop  offset="0.89" style="stop-color:#0F0903"/> ',
        '</radialGradient> ',
        '<path style="fill:url(#SKY_2_MAIN);" d="M0,0v935.43h566.9V0H0z"/> ',
          svgPath
    )
    );
  }
}
