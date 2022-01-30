// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "./Sky3PathDescriptor.sol";


library Sky3Descriptor {

  function getSVG(uint256 tokenId_, bytes32 blockhashInit_, uint offsetRandom_) public pure returns (string memory svg, uint offsetRandom) {

    (string memory svgPathShadow, uint newOffsetRandom) = Sky3PathDescriptor.getSVG(tokenId_, blockhashInit_, offsetRandom_);

    offsetRandom = newOffsetRandom;
    svg = string(
      abi.encodePacked(
        '<radialGradient id="SKY_3_MAIN" cx="289.8016" cy="275.1698" r="511.3439" gradientUnits="userSpaceOnUse"> ',
        '<stop  offset="0" style="stop-color:#7A346D"/> ',
        '<stop  offset="0.337" style="stop-color:#331A2E"/> ',
        '<stop  offset="0.6867" style="stop-color:#140912"/> ',
        '</radialGradient> ',
        '<path style="fill:url(#SKY_3_MAIN);" d="M0,0v935.43h566.9V0H0z"/> ',
        svgPathShadow
    )
    );
  }
}
