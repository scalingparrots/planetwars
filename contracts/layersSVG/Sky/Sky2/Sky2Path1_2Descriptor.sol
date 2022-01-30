// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;

library Sky2Path1_2Descriptor {

  function getPath1() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        '<linearGradient id="SKY2_LG1" gradientUnits="userSpaceOnUse" x1="0" y1="252.8589" x2="252.0218" y2="252.8589"> ',
        '<stop  offset="0" style="stop-color:#573C30"/> ',
        '<stop  offset="1" style="stop-color:#301E14"/> ',
        '</linearGradient> ',
        '<path style="opacity:0.3;fill:url(#SKY2_LG1);" d="M191.95,0',
        'c0,0-84.67,62.34-84.67,207.48c0,140.83,9.51,218.55-107.28,218.55v79.61c0,0,139.11,8.96,137.97-167.95',
        'C136.83,160.78,155.71,49.39,252.02,0H191.95z"/> ',
        '<linearGradient id="SKY2_LG2" gradientUnits="userSpaceOnUse" x1="77.0295" y1="574.7913" x2="566.9291" y2="574.7913"> ',
        '<stop  offset="0" style="stop-color:#573C30"/> ',
        '<stop  offset="1" style="stop-color:#301E14"/> ',
        '</linearGradient> ',
        '<path style="opacity:0.3;fill:url(#SKY2_LG2);" d="M566.93,214.15',
        'c0,0-7.31,294.38-156.29,292.58c-89.05-1.07-157.15,7.69-209.67,31.68C8.56,626.33,97.61,935.43,97.61,935.43H199.8',
        'c0,0-29.6-65.74-44.51-140.44c-49.04-245.65,173.59-239.36,262.97-251.2c101.86-13.49,148.67-100.02,148.67-143.51V214.15z"/> '
    )
    );
  }

  function getPath2() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
    '<linearGradient id="SKY2_LG3" gradientUnits="userSpaceOnUse" x1="375.7122" y1="733.1992" x2="375.7122" y2="111.1077" ',
    'gradientTransform="matrix(0.9537 -0.3009 0.3009 0.9537 -209.1915 141.8566)"> ',
    '<stop  offset="0" style="stop-color:#573C30"/> ',
    '<stop  offset="1" style="stop-color:#301E14"/> ',
    '</linearGradient> ',
    '<path style="fill:url(#SKY2_LG3);opacity:0.3;" d="M566.93,526.69v139.11',
    'c0,0-109.52-38.06-139.9-160.91c-3.08-12.46-15.46-20.33-28.02-17.67c-65.79,13.93-148.94,86.37-210.67,78.95',
    'C16.09,545.46,0,394.45,0,329.37V192.36C6.08,689.93,410.64,315.49,464.8,485C494.16,576.87,566.93,526.69,566.93,526.69z"/> ',
    '<linearGradient id="SKY2_LG4" gradientUnits="userSpaceOnUse" x1="22.823" y1="859.8785" x2="22.823" y2="456.9759" ',
    'gradientTransform="matrix(-3.464102e-07 1 1 3.464102e-07 -292.9521 75.5515)"> ',
    '<stop  offset="0" style="stop-color:#573C30"/> ',
    '<stop  offset="1" style="stop-color:#2D1C12"/> ',
    '</linearGradient> ',
    '<path style="fill:url(#SKY2_LG4);opacity:0.3;" d="M164.03,0',
    'c3.69,6.73,11.69,26.73,51.42,26.73c103.86,0,78.92,170.01,351.48,170.01l0-109.53c-38.82,0-163.8,1.75-211.13-13.53',
    'c-32.67-10.55-64.41-29.22-91.16-62.18C253.76-1.9,204.25,20.34,193.74,0L164.03,0z"/> ',
    '<linearGradient id="SKY2_LG5" gradientUnits="userSpaceOnUse" x1="58.6611" y1="859.8785" x2="58.6611" y2="440.3556" ',
    'gradientTransform="matrix(-3.464102e-07 1 1 3.464102e-07 -292.9521 75.5515)"> ',
    '<stop  offset="0" style="stop-color:#6E564B"/> ',
    '<stop  offset="1" style="stop-color:#2D1C12"/> ',
    '</linearGradient> ',
    '<path style="fill:url(#SKY2_LG5);opacity:0.3;" d="M164.03,0',
    'c3.69,6.73,11.69,26.73,51.42,26.73c99.37,0,99.38,74.62,159.35,117.36c45.53,32.44,167.72,31.87,192.13,31.87v92.46',
    'c-239.28,0-237.84-226.32-348.8-226.32c-61.84,0-70.72-26.78-70.72-42.1L164.03,0z"/> '
    )
    );
  }

}
