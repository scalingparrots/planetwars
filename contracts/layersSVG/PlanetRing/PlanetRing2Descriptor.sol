// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;

library PlanetRing2Descriptor {

  function getSVG() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        '<path class="fill_ring" d="M449.18,121.1c-2.43-2.43-9.81-9.82-64.92,33.02c-13.99,10.89-29.37,23.71-45.6,38.02',
        'c-23.87,21.02-49.57,45.23-75.44,71.09c-25.83,25.83-50.01,51.5-71.01,75.33c-14.32,16.26-27.18,31.67-38.09,45.69',
        'c-42.84,55.11-35.45,62.5-33.02,64.93c1.7,1.7,4.12,2.49,7.2,2.49c20.07,0,67.02-34.19,108.76-73.2',
        'c-1.44-0.66-2.86-1.38-4.27-2.13c-45.96,42.77-78.21,62.7-95.23,68.73c-7.12,2.52-11.6,2.61-13.28,0.91',
        'c-0.72-0.7-5.88-8.46,33.39-58.96c10.65-13.7,23.16-28.71,37.1-44.55c21.12-24.03,45.52-49.96,71.64-76.07',
        'c26.13-26.14,52.1-50.57,76.14-71.7c15.81-13.92,30.8-26.4,44.46-37.04c50.5-39.27,58.26-34.11,58.98-33.39',
        'c0.43,0.43,3.22,4.09-5.1,20.48c-1.86,3.69-4.29,8.01-7.44,13.08c-8.96,14.43-26.21,38.86-57.72,73.59',
        'c0.77,1.41,1.5,2.84,2.21,4.27C420.62,188.85,461.1,133.02,449.18,121.1z"/> ',
        '<path class="fill_ring" d="M438.39,144c4.11-8.21,2.46-9.86,1.57-10.74c-4.38-4.39-23.86,7.18-57.87,34.38',
        'c-11.17,8.93-23.17,19.02-35.62,29.89c-24.91,21.78-51.63,46.77-76.98,72.14c-25.29,25.29-50.21,51.89-71.9,76.71',
        'c-10.95,12.52-21.09,24.59-30.04,35.79c-27.14,33.96-38.67,53.4-34.27,57.79c0.45,0.44,1.08,1.08,2.65,1.08',
        'c3.3,0,10.74-2.84,29.18-16.29c16.56-12.07,38.07-29.84,62.32-51.46c-0.9-0.53-1.79-1.08-2.65-1.65',
        'c-62.1,55.3-87.05,68.54-89.39,66.2c-1.3-1.3,2.32-13.53,34.5-53.79c8.84-11.05,18.81-22.93,29.58-35.27',
        'c21.77-24.9,46.76-51.6,72.14-77c25.47-25.47,52.29-50.55,77.28-72.38c12.25-10.71,24.07-20.62,35.07-29.43',
        'c40.35-32.25,52.59-35.89,53.89-34.59c2.32,2.33-10.91,27.23-66.14,89.3c0.57,0.87,1.11,1.75,1.65,2.64',
        'c21.58-24.21,39.31-45.69,51.39-62.22C431.91,155.3,436.07,148.61,438.39,144z"/> ',
        '<path class="fill_ring" d="M422.09,151.88c-2.41-2.43-18.07,8.77-46.53,33.27c-6.84,5.88-13.98,12.18-21.36,18.81',
        'c-24.15,21.72-50.77,47.02-76.98,73.25c-26.19,26.19-51.48,52.8-73.18,76.92c-6.64,7.39-12.98,14.57-18.87,21.42',
        'c-24.5,28.45-35.7,44.11-33.27,46.54c0.21,0.21,0.54,0.32,0.96,0.32c8.4,0,55.29-41.04,68.7-52.93c-0.42-0.29-0.84-0.59-1.26-0.89',
        'c-42.42,37.71-64.93,53.39-67.3,52.48c-1.18-3.11,18.87-28.89,52.1-65.84c20.14-22.41,45.15-48.93,73.18-76.96',
        'c28.07-28.06,54.61-53.08,77.04-73.26c36.91-33.2,62.66-53.27,65.69-52.11c0.97,2.47-14.67,24.93-52.35,67.32',
        'c0.32,0.4,0.61,0.82,0.9,1.24C382.14,207.26,426.63,156.42,422.09,151.88z"/> '
      )
    );
  }
}

