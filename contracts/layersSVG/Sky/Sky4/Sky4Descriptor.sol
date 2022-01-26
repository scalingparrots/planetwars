// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "./Sky4PathDescriptor.sol";

library Sky4Descriptor {

  function getSVG(uint256 tokenId_, bytes32 blockhashInit_, uint offsetRandom_) public pure returns (string memory svg, uint offsetRandom) {

    (string memory svgPath, uint newOffsetRandom) = Sky4PathDescriptor.getSVG(tokenId_, blockhashInit_, offsetRandom_);

    offsetRandom = newOffsetRandom;
    svg = string(
      abi.encodePacked(
        '<linearGradient id="SKY_4_MAIN" gradientUnits="userSpaceOnUse" ',
        'x1="283.4646" y1="3.1512" x2="283.4646" y2="562.0206"> ',
        '<stop  offset="0.1587" style="stop-color:#224D4D"/> ',
        '<stop  offset="0.315" style="stop-color:#12414A"/> ',
        '<stop  offset="0.8087" style="stop-color:#0A1913"/> </linearGradient> ',
        '<path style="fill:url(#SKY_4_MAIN);" d="M0,0v935.43h566.9V0H0z"/> ',
        svgPath
      )
    );
  }
}
