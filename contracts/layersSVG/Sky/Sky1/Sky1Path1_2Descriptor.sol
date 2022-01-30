// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;

library Sky1Path1_2Descriptor {

  function getPath1() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        '<path style="fill:#5D5DC2;opacity:0.1;" d="M558.34,134.84c-20.2-28.81-47.43-48.91-73.55-62.8c-2.18-1.16-4.36-2.28-6.52-3.35',
        'c-7.37-3.66-14.59-6.84-21.49-9.58h-0.01c-8.87-3.53-17.2-6.34-24.56-8.56h-0.03c-73.9,0-147.2,13.08-216.62,38.4',
        'c-14.96,5.46-31.43,11.22-49.79,17.2c-22.63,7.38-44.21,13.83-64.54,19.46c-11.07,3.07-21.77,5.9-32.06,8.5',
        'c-0.58,0.15-1.14,0.29-1.71,0.43c-0.01,0.01-0.01,0.01-0.02,0c-0.01,0.01-0.01,0.01-0.02,0c-25.17,6.34-47.8,11.35-67.42,15.31',
        'V288.7c0.89-1.28,1.79-2.56,2.69-3.83c15.03-21.26,30.74-41,46.95-59.12c0,0,0,0,0.01-0.01c2.49-2.77,4.97-5.5,7.47-8.2',
        'c7.05-7.59,14.19-14.88,21.4-21.86c28.63-27.71,58.44-50.54,88.57-68.03c0.44-0.26,0.88-0.51,1.32-0.76',
        'c18.2-10.46,36.5-18.98,54.74-25.45c0.01-0.01,0.02-0.01,0.03-0.01C270.37,84.7,317.06,81.68,360,94.1c0.02,0,0.03,0,0.03,0.01',
        'c4.6,1.33,9.18,2.84,13.7,4.54c3.64,1.36,7.36,2.89,11.18,4.58c0.01,0,0.01,0.01,0.01,0.01c7.46,3.29,15.21,7.22,23.06,11.74',
        'c6.18,3.55,12.43,7.47,18.64,11.75c2.38,1.63,4.76,3.32,7.12,5.07c1.56,1.14,3.12,2.31,4.67,3.51',
        'c9.58,7.35,18.95,15.55,27.72,24.54c17.7,18.09,33.04,39.36,43.05,63.34c0.47,1.11,0.92,2.24,1.36,3.37',
        'c6.71,17.08,10.72,35.49,10.97,55.08c0.01,0.8,0.02,1.6,0.01,2.39c-0.01,2.92-0.1,5.82-0.27,8.68c-0.44,7.4-1.43,14.6-2.88,21.6',
        'c-4.48,21.58-13.47,41.29-25.21,58.99c-26.47,39.98-66.94,69.69-100.98,87.46c-0.01,0.01-0.03,0.01-0.04,0.02',
        'c-7.39,3.85-14.47,7.14-21.04,9.85C298.52,500.55,206.51,493.3,150.1,457c-0.01,0-0.01,0-0.01,0c-2.43-1.56-4.8-3.18-7.11-4.86',
        'c-1.16-0.84-2.3-1.7-3.42-2.58c-10.77-8.35-19.83-17.96-26.67-28.74c-0.68-1.06-1.33-2.14-1.96-3.22',
        'c-4-6.88-7.12-14.21-9.24-21.97c-9.6-35.21,3.33-72.51,19.82-102.36c1.87-3.38,3.78-6.67,5.72-9.84',
        'c2.28-3.77,4.6-7.38,6.91-10.82c7.28-10.91,14.37-20.03,19.78-26.62c1.63-1.98,3.1-3.74,4.39-5.24c1.44-1.69,2.64-3.07,3.55-4.11',
        'c5.35-6.14,11.16-12.16,17.35-17.95c32.71-30.61,76.25-55.01,121.41-59.17c21.72-1.99,43.83,0.69,65.28,9.62',
        'c1.41,0.58,3.88,1.62,7.12,3.13c0,0,0,0,0.01,0c2.65,1.23,5.8,2.78,9.28,4.66c2.64,1.42,5.47,3.04,8.41,4.86h0.01',
        'c21.04,12.93,48,35.92,53.65,71.35c1.6,10.08,1.33,20.22-0.49,30.2c-0.62,3.38-1.41,6.74-2.36,10.07',
        'c-0.55,1.88-1.14,3.76-1.79,5.62c-3.5,10.13-8.48,19.97-14.6,29.26c-1.81,2.77-3.74,5.5-5.76,8.17',
        'c-4.51,5.98-9.47,11.68-14.77,17.03c-17.86,18.02-39.59,32.02-60.95,39.14c-17.05,5.69-34.75,7.28-51.86,5.95',
        'c-20.64-1.6-40.42-7.46-57.13-15.51c-4.6-2.22-8.97-4.61-13.06-7.11c-2.89-1.77-5.64-3.6-8.23-5.49',
        'c-16.61-12.02-26.9-25.94-26.67-37.83c0.02-1.11,0.15-2.22,0.35-3.32c-5.35-10.88-8.89-22.82-10.23-35.41',
        'c-21.2,17.67-36.55,38.93-34.59,59.73c1.83,19.54,18.52,36.93,42.58,49.88c2.21,1.19,4.48,2.34,6.81,3.45',
        'c0.63,0.31,1.26,0.6,1.9,0.9c4.12,1.9,8.4,3.69,12.82,5.34c2.16,0.81,4.36,1.59,6.58,2.33c3.55,1.19,7.17,2.3,10.86,3.32',
        'c1.56,0.44,3.13,0.85,4.71,1.25c15.85,4.03,32.67,6.45,49.32,6.94c10.32,0.3,20.59-0.15,30.53-1.42',
        'c12.16-1.56,67.03-8.6,109.51-51.09c12.59-12.59,24.09-28.3,33.07-47.9c0.46-1.01,3.9-8.74,7.77-20.56',
        'c1.26-3.86,2.58-8.17,3.85-12.82c0.85-3.11,1.67-6.38,2.46-9.77c1.76-7.58,3.29-15.79,4.29-24.34c0.1-0.87,0.2-1.74,0.29-2.61',
        'c2.62-25.08,0.58-52.71-13.43-75.4c-4.26-6.9-9.28-12.78-14.91-17.78c-6.68-5.94-14.22-10.62-22.36-14.24',
        'c-0.18-0.08-0.36-0.16-0.54-0.24c-2.74-1.21-5.54-2.29-8.41-3.27c0,0,0,0-0.01,0c-9.24-3.14-19.09-5.13-29.2-6.22h-0.01',
        'c-22.54-2.44-46.39-0.44-67.92,3.19h-0.01c-31.86,5.36-58.63,14.27-68.53,17.57c-12.91,4.29-26.42,9.68-40.12,15.97',
        'c-0.96,0.44-1.93,0.89-2.89,1.34c-13.03,6.09-26.19,12.99-39.14,20.55c-31.48,18.35-61.67,40.58-85.43,64.47',
        'c-7.05,7.07-13.52,14.29-19.3,21.6c-2.23,2.82-4.36,5.66-6.37,8.5c-4.42,6.25-8.31,12.54-11.57,18.85',
        'c-9.17,17.73-13.45,35.56-11,52.7c3.06,21.4,16.76,42.94,37.98,62.67c16.61,15.47,37.84,29.82,62.18,42.15',
        'c0.58,0.3,1.18,0.6,1.77,0.89c1.92,0.96,3.85,1.91,5.81,2.83h0.01c24.33,11.61,51.46,21.19,80.02,27.88l43.96,10.64',
        'c43.82,10.6,89.78,9.36,132.71-4.38c47.59-15.23,71.86-38.9,90.69-54.53c2.22-1.83,4.41-3.71,6.57-5.65',
        'c10.05-9,20.16-19.6,29.88-31.48h0.01c2.55-3.13,5.08-6.36,7.58-9.66c9.27-12.25,18.04-25.63,25.92-39.86',
        'c4.8-8.65,9.25-17.61,13.29-26.81V148.18C564.16,143.54,561.32,139.09,558.34,134.84z"/> '
    )
    );
  }

  function getPath2() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        '<path style="opacity:0.16;fill:#5D5DC2;" d="M558.52,419.07c-7.38-53.97-20.87-135.1-40.22-182.77c-6.66-16.4-13.69-34.46-20.99-54.58',
        'c-9-24.81-16.87-48.47-23.74-70.75c-3.75-12.14-7.2-23.87-10.37-35.15c-0.18-0.63-0.35-1.25-0.52-1.87',
        'c-0.01-0.01-0.01-0.01,0-0.02c-0.01-0.01-0.01-0.01,0-0.02c-7.74-27.59-13.85-52.4-18.68-73.91H274.58',
        'c1.56,0.98,3.12,1.96,4.67,2.94c25.94,16.48,50.02,33.7,72.13,51.47c0,0,0,0,0.01,0.01c3.38,2.72,6.71,5.45,10,8.19',
        'c9.26,7.72,18.16,15.55,26.67,23.46c33.81,31.38,61.66,64.07,83,97.09c0.32,0.49,0.62,0.97,0.93,1.44',
        'c12.76,19.95,23.16,40.02,31.05,60c0.01,0.01,0.01,0.02,0.01,0.04c20.41,51.73,24.1,102.91,8.94,149.99c0,0.02,0,0.03-0.01,0.04',
        'c-1.62,5.05-3.47,10.07-5.54,15.02c-1.66,3.99-3.53,8.07-5.59,12.26c0,0.01-0.01,0.01-0.01,0.01',
        'c-4.01,8.17-8.81,16.67-14.32,25.28c-4.33,6.78-9.11,13.62-14.34,20.44c-1.99,2.61-4.05,5.22-6.19,7.81',
        'c-1.39,1.71-2.82,3.42-4.28,5.12c-8.97,10.51-18.97,20.77-29.94,30.39c-22.07,19.41-48.02,36.22-77.28,47.19',
        'c-1.35,0.52-2.73,1.01-4.11,1.49c-20.84,7.36-43.3,11.75-67.2,12.03c-0.98,0.01-1.95,0.02-2.92,0.01',
        'c-3.56-0.01-7.1-0.11-10.59-0.3c-9.03-0.49-17.81-1.57-26.35-3.15c-26.33-4.91-50.38-14.77-71.97-27.64',
        'c-48.78-29.02-85.03-73.38-106.71-110.7c-0.01-0.01-0.01-0.03-0.02-0.05c-4.7-8.1-8.71-15.86-12.02-23.07',
        'C16.1,327.24,24.94,226.38,69.23,164.54c0-0.01,0-0.01,0-0.01c1.9-2.67,3.88-5.27,5.93-7.79c1.02-1.27,2.07-2.52,3.15-3.75',
        'c10.19-11.81,21.91-21.74,35.07-29.24c1.29-0.75,2.61-1.46,3.93-2.15c8.39-4.39,17.34-7.81,26.81-10.13',
        'c42.96-10.52,88.47,3.65,124.89,21.73c4.12,2.05,8.14,4.14,12.01,6.27c4.6,2.5,9,5.05,13.2,7.57',
        'c13.31,7.98,24.44,15.75,32.48,21.68c2.42,1.79,4.56,3.4,6.39,4.81c2.06,1.58,3.75,2.9,5.01,3.89',
        'c7.49,5.87,14.84,12.24,21.9,19.02c37.35,35.86,67.12,83.59,72.19,133.09c2.43,23.81-0.84,48.04-11.74,71.56',
        'c-0.71,1.55-1.98,4.25-3.82,7.81c0,0,0,0,0,0.01c-1.5,2.91-3.39,6.36-5.69,10.17c-1.73,2.9-3.71,5.99-5.93,9.22v0.01',
        'c-15.78,23.07-43.83,52.62-87.05,58.81c-12.3,1.76-24.67,1.46-36.85-0.54c-4.12-0.68-8.22-1.55-12.29-2.59',
        'c-2.29-0.6-4.59-1.25-6.86-1.96c-12.36-3.83-24.37-9.3-35.7-16c-3.38-1.99-6.71-4.1-9.97-6.31c-7.3-4.94-14.25-10.38-20.78-16.19',
        'c-21.99-19.58-39.07-43.4-47.76-66.82c-6.94-18.69-8.88-38.09-7.26-56.85c1.95-22.63,9.1-44.31,18.92-62.63',
        'c2.71-5.05,5.62-9.84,8.67-14.32c2.16-3.16,4.39-6.18,6.7-9.02c10.22-12.68,21.56-22,32.4-26.4',
        'c12.79-12.84,28.84-22.42,46.8-27.41c-18.29-15.75-38.65-25.86-58.67-24.18c-23.84,2.01-45.06,20.3-60.86,46.68',
        'c-1.45,2.43-2.86,4.91-4.21,7.47c-0.38,0.69-0.73,1.39-1.1,2.08c-2.32,4.51-4.5,9.21-6.52,14.05c-0.99,2.37-1.94,4.78-2.84,7.22',
        'c-1.45,3.89-2.81,7.86-4.05,11.9c-0.54,1.71-1.04,3.43-1.53,5.16c-4.92,17.38-7.87,35.81-8.47,54.07',
        'c-0.37,11.32,0.18,22.57,1.73,33.47c1.9,13.33,10.49,73.48,62.34,120.05c15.36,13.8,34.53,26.41,58.44,36.25',
        'c1.23,0.51,10.66,4.27,25.09,8.52c4.71,1.39,9.97,2.83,15.64,4.23c3.79,0.93,7.78,1.84,11.92,2.7c9.25,1.93,19.27,3.6,29.7,4.7',
        'c1.06,0.11,2.12,0.22,3.18,0.32c30.6,2.88,64.31,0.63,92-14.72c8.42-4.66,15.59-10.17,21.69-16.35',
        'c7.25-7.32,12.96-15.59,17.37-24.51c0.1-0.2,0.2-0.39,0.29-0.59c1.48-3,2.79-6.07,3.99-9.22c0,0,0,0,0-0.01',
        'c3.83-10.13,6.26-20.93,7.59-32v-0.01c2.98-24.71,0.54-50.86-3.89-74.46v-0.01c-6.54-34.93-17.41-64.27-21.44-75.13',
        'c-5.23-14.15-11.81-28.96-19.49-43.98c-0.54-1.05-1.09-2.11-1.64-3.16c-7.43-14.28-15.85-28.71-25.07-42.9',
        'c-22.39-34.51-49.51-67.6-78.66-93.65c-8.63-7.72-17.44-14.83-26.35-21.15c-3.44-2.45-6.91-4.78-10.37-6.99',
        'c-7.63-4.85-15.3-9.11-23-12.69c-21.63-10.06-43.39-14.74-64.3-12.05c-26.11,3.36-52.39,18.37-76.46,41.63',
        'C87.2,91.01,69.7,114.28,54.65,140.97c-0.37,0.64-0.73,1.29-1.09,1.94c-1.17,2.1-2.33,4.23-3.45,6.37v0.01',
        'c-14.17,26.67-25.85,56.41-34.02,87.73L3.12,285.2c0,64.46-3.29,85.74,5.34,145.48c7.92,54.81,47.46,78.77,66.53,99.41',
        'c2.23,2.44,4.53,4.84,6.89,7.21c10.98,11.02,23.91,22.1,38.41,32.75v0.01c3.82,2.8,7.76,5.57,11.79,8.31',
        'c14.95,10.16,31.27,19.78,48.63,28.41c10.55,5.26,21.49,10.14,32.71,14.57c0,0,91.01,34.58,248.88-9.28',
        'c40.03-11.12,59.68-51.99,76.62-80.62c1.42-2.39,2.78-4.78,4.09-7.15c4.47-8.08,8.35-15.99,11.69-23.55v-0.01',
        'C559.01,491.01,562.92,451.27,558.52,419.07z"/> '
    )
    );
  }

}