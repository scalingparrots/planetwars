// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;

library Sky2Path3_4Descriptor {

  function getPath3() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        '<linearGradient id="SKY2_LG6" gradientUnits="userSpaceOnUse" x1="313.0611" y1="875.2369" x2="313.0611" y2="-9.505934e-05" ',
        'gradientTransform="matrix(-1 0 0 -1 566.9291 935.433)"> ',
        '<stop  offset="0" style="stop-color:#573C30"/> ',
        '<stop  offset="1" style="stop-color:#301E14"/> ',
        '</linearGradient> ',
        '<path style="fill:url(#SKY2_LG6);opacity:0.3;" d="M0,62.66',
        'c77.39-12.84,102.17,25.36,87.79,94.83c-50.67,244.78,59.2,288.86,103.92,305.43c64.26,23.82,129.87,35.73,193.64,64.61',
        'C543.39,599.1,503.66,888,502.38,935.43h-66.53C579.78,459.09,0,537.81,0,351.35L0,62.66z"/> ',
        '<linearGradient id="SKY2_LG7" gradientUnits="userSpaceOnUse" x1="98.3717" y1="935.433" x2="98.3717" y2="532.5305" ',
        'gradientTransform="matrix(-1 0 0 -1 566.9291 935.433)"> ',
        '<stop  offset="0" style="stop-color:#573C30"/> ',
        '<stop  offset="1" style="stop-color:#2D1C12"/> ',
        '</linearGradient> ',
        '<path style="fill:url(#SKY2_LG7);opacity:0.3;" d="M566.93,402.9',
        'c-6.73-3.69-26.73-11.69-26.73-51.42c0-103.86-170.01-78.92-170.01-351.48l109.53,0c0,38.82-1.75,163.8,13.53,211.13',
        'c10.55,32.67,29.22,64.41,62.18,91.16c13.4,10.88-8.83,60.39,11.51,70.9V402.9z"/> ',
        '<linearGradient id="SKY2_LG8" gradientUnits="userSpaceOnUse" x1="134.2097" y1="935.433" x2="134.2097" y2="515.9101" ',
        'gradientTransform="matrix(-1 0 0 -1 566.9291 935.433)"> ',
        '<stop  offset="0" style="stop-color:#6E564B"/> ',
        '<stop  offset="1" style="stop-color:#2D1C12"/> ',
        '</linearGradient> ',
        '<path style="fill:url(#SKY2_LG8);opacity:0.3;" d="M566.93,402.9',
        'c-6.73-3.69-26.73-11.69-26.73-51.42c0-99.37-74.62-99.38-117.36-159.35C390.4,146.6,390.97,24.41,390.97,0l-92.46,0',
        'c0,239.28,226.32,237.84,226.32,348.8c0,61.84,26.78,70.72,42.1,70.72V402.9z"/> '
    )
    );
  }

  function getPath4() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        '<linearGradient id="SKY2_LG9" gradientUnits="userSpaceOnUse" x1="356.8032" y1="455.9965" x2="356.8032" y2="1.546141e-11"> ',
        '<stop  offset="0" style="stop-color:#573C30"/> ',
        '<stop  offset="1" style="stop-color:#301E14"/> ',
        '</linearGradient> ',
        '<path style="fill:url(#SKY2_LG9);opacity:0.3;" d="M566.93,456',
        'c-67.96-35.84-85.46-140.01-73.43-176.31c42.38-127.89-49.51-150.92-86.92-159.58c-53.75-12.45-109.06-18.08-161.96-33.75',
        'c-23.79-7.05-47.46-16.38-66.38-32.43S145.67,24.78,146.74,0h55.65c25.23,98.92,226.23,52.09,274.64,62.01',
        'c36.84,7.55,62.85,22.95,89.91,53.31V456z"/> ',
        '<linearGradient id="SKY2_LG10" gradientUnits="userSpaceOnUse" x1="184.1407" y1="935.433" x2="184.1407" y2="181.2457"> ',
        '<stop  offset="0" style="stop-color:#573C30"/> ',
        '<stop  offset="1" style="stop-color:#2D1C12"/> ',
        '</linearGradient> ',
        '<path style="fill:url(#SKY2_LG10);opacity:0.3;" d="M0,181.25',
        'c12.59,6.9,50.04,21.88,50.04,96.25c0,194.42,318.24,147.74,318.24,657.94H163.26c0-72.67,3.28-306.62-25.33-395.21',
        'c-19.75-61.15-54.69-120.56-116.39-170.64C-3.55,349.22,38.07,256.55,0,236.87V181.25z"/> ',
        '<linearGradient id="SKY2_LG11" gradientUnits="userSpaceOnUse" x1="251.2253" y1="935.433" x2="251.2253" y2="150.1344"> ',
        '<stop  offset="0" style="stop-color:#6E564B"/> ',
        '<stop  offset="1" style="stop-color:#2D1C12"/> ',
        '</linearGradient> ',
        '<path style="fill:url(#SKY2_LG11);opacity:0.3;" d="M0,181.25',
        'c12.59,6.9,50.04,21.88,50.04,96.25c0,186.01,139.69,186.02,219.68,298.29c60.73,85.23,59.65,313.96,59.65,359.65h173.08',
        'c0-447.9-423.64-445.21-423.64-652.92c0-115.76-50.13-132.38-78.81-132.38V181.25z"/> '
    )
    );
  }

}
