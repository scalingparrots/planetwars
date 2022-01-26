// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;

library Sky4Path3_4Descriptor {

  function getPath3() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        '<linearGradient id="SKY4_LG9" gradientUnits="userSpaceOnUse" x1="50.3526" y1="521.6964" x2="50.3526" y2="0.0606">',
        '<stop  offset="0" style="stop-color:#FFFFFF"/>',
        '<stop  offset="0.994" style="stop-color:#0B0A16"/>',
        '</linearGradient>',
        '<path style="opacity:0.5;fill:url(#SKY4_LG9);" d="M94.48,507.98',
        'c17.17-25.09-5.37-64.05-17.19-49.01C65.47,474,36.48,486.89,22.52,477.23C14.96,472,6.77,465.81,0,457.32v28.29',
        'C34.58,525.49,78.48,531.34,94.48,507.98z"/>',
        '<linearGradient id="SKY4_LG10" gradientUnits="userSpaceOnUse" x1="228.4631" y1="521.733" x2="228.4631" y2="5.727501e-05">',
        '<stop  offset="0" style="stop-color:#FFFFFF"/>',
        '<stop  offset="0.994" style="stop-color:#0B0A16"/>',
        '</linearGradient>',
        '<path style="opacity:0.5;fill:url(#SKY4_LG10);" d="M187.9,0',
        'c0,0,4,4.09,9.34,11.4c0.95,1.3,7.33,11.01,8.77,13.53c15.82,27.57,31.51,75.43-2,130.12c-22.53,36.78-55.5,62.73-97.47,82.08',
        'c-0.16,0.23-0.41,0.4-0.72,0.4c-0.04,0-0.07-0.02-0.1-0.02C75.07,251.54,39.64,262.07,0,270.74v66.83',
        'c2.94-4.9,12.91-16.73,23.79-23.9c15.93-10.48,43.58-26.37,69.61-30.22c27.91-4.12,42.58-3.83,58.95-4.44',
        'c7.23-0.27,10.34-8.66-8.93-9.23c-5-0.16-33.31-1.59-35.17-6.93c-2.38-6.9,23.11-13.86,27.23-15.28',
        'c23.06-7.95,51.16-45.22,52.89-46.95c84.13-83.75,125.37-45.17,152.44-103.93C376.98,18.22,456.93,0,456.93,0H187.9z"/>',
        '<linearGradient id="SKY4_LG11" gradientUnits="userSpaceOnUse" x1="330.6834" y1="123.5238" x2="330.6834" y2="76.5895">',
        '<stop  offset="0" style="stop-color:#FFFFFF"/>',
        '<stop  offset="0.994" style="stop-color:#0B0A16"/>',
        '</linearGradient>',
        '<path style="opacity:0.5;fill:url(#SKY4_LG11);" d="M324.34,85.75',
        'c-0.29,6.95,0.19,20.71,6.55,21.2c3.1,0.24,4.97-3.34,5.61-6.39c0.89-4.24,1.05-8.63,0.45-12.92c-0.52-3.83-1.84-7.86-5.03-10.02',
        'c-1.15-0.78-2.59-1.28-3.92-0.89c-2.38,0.68-3.2,3.58-3.46,6.04c-0.05,0.45-0.09,1.04-0.14,1.75c-0.31,0.22-0.43,0.63-0.26,0.98',
        'C324.19,85.59,324.26,85.68,324.34,85.75z"/>',
        '<linearGradient id="SKY4_LG12" gradientUnits="userSpaceOnUse" x1="14.6983" y1="656.2689" x2="977.3593" y2="656.2689">',
        '<stop  offset="5.952380e-03" style="stop-color:#0B0A16"/>',
        '<stop  offset="1" style="stop-color:#1D6EAF"/>',
        '</linearGradient>',
        '<path style="opacity:0.2;fill:url(#SKY4_LG12);" d="M489.82,377.1',
        'c1.69,3.94,3.24,7.95,4.68,12c1.27,0.46,2.56,1.18,3.76,2.1c6.74,5.12,9.55,15.29,7.95,23.32c-0.57,2.89-1.45,4.66-2.48,5.6',
        'c3.09,12.09,5.62,23.37,8.18,32.48c3.03,10.8,4.39,20.48,4.67,29.02c2.24,17.13-1.01,33.08-10.89,45.3l0,0l0,0',
        'c-2.43,3-4.87,6.37-8.49,8.3c-122.73,65.4-93.85,400.04-108.26,400.22h132.42c0,0-46.03-303.78,45.57-402.4v-21.3',
        'c-0.98,3.8-2.33,7.55-4.99,10.41c-4.82,5.17-13.18,6.01-19.64,3.13c-6.46-2.89-11.14-8.87-13.93-15.36',
        'c-2.81-6.5-3.94-13.57-5.06-20.56c-3.24-20.33-6.31-40.7-9.73-61c-1.97-11.63-5.88-34.12,14.21-30',
        'c16.25,3.34,30.64,14.82,37.49,29.94c0.61,1.34,1.15,2.71,1.65,4.1v-34.62C556.21,383.75,515.95,383.08,489.82,377.1z"/>',
        '<linearGradient id="SKY4_LG13" gradientUnits="userSpaceOnUse" x1="51.4405" y1="312.1204" x2="950.0517" y2="312.1204">',
        '<stop  offset="5.952380e-03" style="stop-color:#0B0A16"/>',
        '<stop  offset="1" style="stop-color:#1D6EAF"/>',
        '</linearGradient>',
        '<path style="opacity:0.2;fill:url(#SKY4_LG13);" d="M505.83,280.55',
        'c20.74,1.37,41.31,5.28,61.1,11.63v-10.53c-4.2-1.32-8.55-2.47-13.03-3.47c-0.07,0.05-0.14,0.08-0.23,0.09',
        'c-0.18,0.01-0.34-0.09-0.43-0.23c-131.93-10.35-157.55,7.13-154.11,6.39c13.66-2.95,28.67-5.88,41.14-5.22',
        'c9.64,0.51,16.08,6,24.36,10.98c8.7,5.23,15.8,16.24,11.12,25.25c-3.09,5.98-10.07,8.63-16.49,10.67',
        'c-2.87,0.91-5.75,1.79-8.64,2.65c9.34,5.07,17.08,12.26,23.56,20.74c11.57-7.79,31.98-12.48,32.47-19.01',
        'c0.68-9.16,28.86-1.2,60.28-4.74v-11.52c-15.58,2.8-31.41,4.13-47.23,3.87c-8.46-0.14-17.34-0.85-24.41-5.48',
        'c-7.47-4.89-14.55-16.47-14.71-25.6C481.01,281.65,497.24,279.99,505.83,280.55z"/>',
        '<linearGradient id="SKY4_LG14" gradientUnits="userSpaceOnUse" x1="14.6984" y1="368.8175" x2="903.7394" y2="368.8175">',
        '<stop  offset="5.952380e-03" style="stop-color:#0B0A16"/>',
        '<stop  offset="1" style="stop-color:#1D6EAF"/>',
        '</linearGradient>',
        '<path style="opacity:0.2;fill:url(#SKY4_LG14);" d="M162.5,291.04',
        'c-30.04-6.77-60.34-9.84-87.35,6.02c-46.18,27.09-12.89,53.45-17.19,78.15c-4.29,24.7-47.26,12.88-42.96,40.81',
        'c4.22,27.48,46.97,35.85,48.3,36.09c-13.96-6.9-32.14-56.52,58.01-96.23c1.6-0.71,3.23-1.38,4.89-2.04',
        'c10.19-3.96-32.6-6.39-52.18-1.74c-1.41,0.33-2.9,0.27-4.28-0.11c-4.99-1.42-6.39-7.75-6.56-12.94',
        'c-0.23-6.67,0.1-13.56,2.85-19.65c4.21-9.38,13.67-15.62,23.62-18.18c9.95-2.58,20.43-1.97,30.65-0.85',
        'c16.99,1.69,36,13.33,47.84,5.35C173.81,301.89,167.69,292.21,162.5,291.04z',
        'M511.91,452.6c-2.56-9.11-5.08-20.39-8.18-32.48c-3.54,3.21-9.02-3.3-11.42-8.37c-2.32-4.89-6.65-12.57-5.72-18.24',
        'c0.8-4.87,4.27-5.74,7.91-4.41c-1.44-4.05-2.99-8.06-4.68-12c-10.88-2.49-19.32-5.89-22.15-11.57',
        'c-3.38-6.76,0.29-11.86,6.52-16.05c-6.48-8.49-14.21-15.67-23.56-20.74c-14.26,4.21-28.77,7.59-43.56,8.89',
        'c-10.32,0.91-20.66,0.8-30.99,0.11c-2.9,4.86,50.21,35.83,69.58,47.14c39.77,23.19,66.43,62.34,70.93,96.75',
        'C516.29,473.08,514.94,463.4,511.91,452.6z"/>'
      )
    );
  }

  function getPath4() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
          '<linearGradient id="SKY4_LG15" gradientUnits="userSpaceOnUse" x1="659.2993" y1="799.0061" x2="659.2993" y2="672.641" ',
          'gradientTransform="matrix(-0.9985 -0.0554 0.0554 -0.9985 812.2495 1155.7041)"> ',
          '<stop  offset="5.952380e-03" style="stop-color:#0B0A16"/> ',
          '<stop  offset="1" style="stop-color:#1D6EAF"/> ',
          '</linearGradient> ',
          '<path style="opacity:0.2;fill-rule:evenodd;clip-rule:evenodd;fill:url(#SKY4_LG15);" d="',
          'M238.93,409.27c0,0-22.06-16.24-28.16-22.08c-6.09-5.84-26.98-9.45-31.01-11.2c-4.03-1.75-13.14-16.01-13.14-16.01',
          's-5.12-10.46-6.08-17.8c-0.96-7.35-18.76-16.59-18.76-16.59l-16.91-8.28c0,0,25.16,31.66,27.75,39.14s-1.45,13.98,6.11,18.38',
          'c7.56,4.39,26.12,11.84,27.68,19.27c1.56,7.42,30.92,34.73,40.42,39.84c9.5,5.11,37.81,17.69,37.81,17.69',
          'S247.55,419.84,238.93,409.27z"/> ',
          '<linearGradient id="SKY4_LG16" gradientUnits="userSpaceOnUse" x1="625.9933" y1="712.609" x2="625.9933" y2="498.6406" ',
          'gradientTransform="matrix(-0.9985 -0.0554 0.0554 -0.9985 812.2495 1155.7041)"> ',
          '<stop  offset="5.952380e-03" style="stop-color:#0B0A16"/> ',
          '<stop  offset="1" style="stop-color:#1D6EAF"/> ',
          '</linearGradient> ',
          '<path style="opacity:0.15;fill-rule:evenodd;clip-rule:evenodd;fill:url(#SKY4_LG16);" d="',
          'M237.47,564.94c0,0-28.9-28.93-46.39-40.53c-17.49-11.6-27.65-7.61-27.65-7.61s-15.7-5.54-25.05-13.59',
          'c-9.35-8.05-7.08-21.59-12.71-29.49c-5.63-7.9-30.9-3.99-30.9-3.99l-35.12-43.41l-23.29-27.39c0,0,24.76,36.29,28.83,44.11',
          'c4.07,7.82,32.65,53.43,38.29,61.33c5.63,7.9,14.04,6.85,19.51,17.78c5.47,10.93,11.6,23.42,20.94,33.04',
          'c9.33,9.63,28.99,24.38,39.64,31.04c10.65,6.66,27.71,13.68,27.71,13.68l29.89,8.49l164.07,25.29c0,0-63.9-49.33-93.47-62.36',
          'C300.57,566.41,237.47,564.94,237.47,564.94z"/> ',
          '<linearGradient id="SKY4_LG17" gradientUnits="userSpaceOnUse" x1="702.6287" y1="588.2362" x2="702.6287" y2="506.131" ',
          'gradientTransform="matrix(-0.9985 -0.0554 0.0554 -0.9985 812.2495 1155.7041)">',
          '<stop  offset="5.952380e-03" style="stop-color:#0B0A16"/> ',
          '<stop  offset="1" style="stop-color:#1D6EAF"/> ',
          '</linearGradient> ',
          '<path style="opacity:0.2;fill-rule:evenodd;clip-rule:evenodd;fill:url(#SKY4_LG17);" d="',
          'M198.06,614.7c0,0-15.16-24.37-26.57-31.84c-11.41-7.46-26.15-11.19-31.35-18.31c-5.19-7.12-25.9-23.89-25.9-23.89L84,526.13',
          'c0,0,40.18,37.98,44.34,46.52c4.16,8.54,16.18,16.04,16.18,16.04L198.06,614.7z"/> ',
          '<path style="opacity:0.3;fill:#31398E;" d="M199.84,0c0,0,42.78,31.93,62.51,40.34c0,0,24.67-1.84,28.01,0c3.34,1.84,17.99,10.94,19.5,14.47',
          'c1.52,3.54,2.53,11.12,5.56,14.65c3.03,3.54,30.32,16.67,39.92,18.19s32.84,6.06,37.39,9.09c4.55,3.03,3.03,10.11,5.56,13.64',
          'c2.53,3.54,17.68,9.6,23.75,13.64c6.06,4.04,25.01,3.03,30.69,5.56c5.69,2.53,17.81,10.11,17.81,10.11l4.54,4.04',
          'c0,0-2.53,8.59,0,11.12s13.14,4.55,13.14,4.55s-8.08-8.08-8.08-13.14c0-5.05-5.06-9.09-5.06-9.09s-25.26-11.62-28.79-14.65',
          'c-3.54-3.03-35.37-29.31-37.89-33.85c-2.53-4.55-8.08-17.18-11.12-20.72c-3.03-3.54-31.83-11.12-38.91-14.15',
          's-16.18-12.13-20.47-19.71c-4.29-7.58-12.37-28.56-14.9-31.33S314.92,0,314.92,0H199.84z"/> ',
          '<path style="opacity:0.3;fill:#31398E;" d="M383.63,156.37c0,0,22.93,14.99,29.34,20.48c6.41,5.49,27.46,7.94,31.59,9.46',
          'c4.12,1.53,14.01,15.26,14.01,15.26s5.7,10.16,7.06,17.44c1.37,7.28,19.65,15.52,19.65,15.52l17.34,7.33',
          'c0,0-26.88-30.22-29.88-37.54c-3-7.33,0.68-14.04-7.12-18.01c-7.79-3.97-26.74-10.38-28.71-17.7',
          'c-1.97-7.33-32.8-32.96-42.57-37.54c-9.77-4.58-38.73-15.57-38.73-15.57S374.44,146.29,383.63,156.37z"/> ',
          '<linearGradient id="SKY4_LG18" gradientUnits="userSpaceOnUse" x1="204.6214" y1="236.9106" x2="204.6214" y2="0"> ',
          '<stop  offset="0" style="stop-color:#FFFFFF"/> ',
          '<stop  offset="0.994" style="stop-color:#0B0A16"/> ',
          '</linearGradient> ',
          '<path style="opacity:0.5;fill-rule:evenodd;clip-rule:evenodd;fill:url(#SKY4_LG18);" d="',
          'M0,134.61c0,0,35.52,25.69,42.65,31.87c7.13,6.18,26.28,5.71,32.62,12.2c6.34,6.49,17.71,9.33,25.67,18.14',
          'c7.96,8.81,34.32,15.3,43.31,25.7c8.99,10.4,34.41,21.77,29.66,8.12C169.15,217,171.85,200,171.85,200s6.11-1.34,0-12.63',
          'c-6.11-11.29-1.01-18.49-8.67-27.97c-7.67-9.47-11.33-26.53-6.09-34.48s17.46-31.32,14.76-45.22',
          'c-2.7-13.9,21.02-24.13,21.02-24.13s35.87,3.41,40.18,9.09c4.31,5.68,35.88,15.04,35.88,15.04s25.22,1.39,28.66,0',
          'c3.44-1.39,14.25,7.7,23.05,15.66c8.81,7.96,10.52,3.11,22.75,11.63c12.23,8.52,14.57,21.38,21.58,27.63',
          'c0,0-7.85-13.73-10.32-27.63c0,0,12.56,1.38,21.66,3.66c9.09,2.27,13.45,1.77,19.74,6.57c6.28,4.8,13.2,7.83,13.2,7.83',
          's-10.64-9.6-13.2-14.91c-2.56-5.31-4.58-10.61-7.86-12.63c-3.28-2.02-40.44-11.4-49.96-15.8c-9.52-4.41-17.58-18.93-17.58-18.93',
          's-21.79-30.61-35.53-31.07c-13.74-0.46-37.84-7.08-46.61-13.26C229.72,12.25,211.21,0,211.21,0H41.14C18.42,0,0,18.42,0,41.14',
          'V134.61z"/> '
      )
    );
  }
}
