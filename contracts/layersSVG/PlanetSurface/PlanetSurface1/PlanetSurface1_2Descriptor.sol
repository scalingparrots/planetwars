// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;

library PlanetSurface1_2Descriptor {

  function getSVG() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        'M765.96,297.37c-9.19-0.19-18.47-0.01-27.66-0.08c-3.22-0.02-5.24,0.29-6.3,1.2',
        'c-18.26-0.61-36.45-0.67-54.73-0.32c-11.01,0.54-21.72-1.16-32.54-0.21c-31.15-3.17-38.03-1-77.8-1.83',
        'c-61.66-0.18-172.81,0.88-219.35,1.16c-3.22-0.02-5.24,0.29-6.3,1.2c-18.26-0.61-36.45-0.67-54.73-0.32',
        'c-11.01,0.54-21.72-1.16-32.54-0.21c-31.1-3.16-38.06-1-77.8-1.83v5.31c167.9-2.08,202.13,3.5,390.72,2.43',
        'c33.32-0.64,57.61-3.57,59.57-3.47c51.02,1.26,101.97,1.43,153.03,2.41v-5.8C775.07,297.23,770.6,297.48,765.96,297.37z',
        'M715.53,319.66c-181.08-1.51-358.56,0.62-539.32-0.59v1.85c180.88,0.03,392.92,0.04,603.32,0.07v-1.4',
        'C758.17,319.67,736.9,320.13,715.53,319.66z',
        'M699.07,312.31c-60.41-0.9-219.48-0.01-282.16,0.84c-94.26-0.96-135.18-1.16-240.7-1.26v4.99',
        'c201.33-1.12,402.93,0.81,603.32-0.79v-3.25C752.71,312.67,725.92,312.25,699.07,312.31z',
        'M769.57,231.58c-81.35-1.54-136.92,0.77-225.26,1.02c-175.06-0.11-212.19-2.6-368.1-0.41v1.19',
        'c163.78-0.78,199.65,0.26,390.72,0.39c86.43-0.47,132.35-1.39,212.6-0.34v-1.65C776.21,231.83,772.88,231.76,769.57,231.58z',
        'M758.22,287.28c-7.15-0.13-14.38-0.21-21.46-0.71c-3.22-0.72-7.53-0.52-10.52-1.29',
        'c-1.62-0.41-3.33-0.54-5.42-0.45c-2.12,0.1-4.92,0-5.37-0.61c-1.16-1.41-4.86-1.83-8.24-2.45c-4.4-0.8-9.04-1.48-13.53-2.2',
        'c-4.27,0.47-8.62,0.24-12.97,0.46v0.01c2.91,0.36,4.1,1.2,5.96,1.89c2.65,0.98,2.27,2.61,7.25,3.07c0.34,0.86,3.41,0.5,4.7,0.95',
        'c-2.7,0.14-5.2-0.28-7.83-0.25c0,0.16-0.02,0.32,0,0.47c-8.31-0.25-16.61-0.96-24.94-2.14c-9.24-1.74-19.72-1.18-29.2-1.83',
        'c-3.55,0.99-24.23-0.66-21.47,3.69c-65.55-1-193.55,1.58-247.69,1.39c-10.6-0.16-21.62-0.31-31.98-2c-2.53-1-8.95,0.24-10.79-1.06',
        'c-1.16-1.41-4.86-1.83-8.24-2.45c-4.4-0.8-9.04-1.48-13.53-2.2c-4.27,0.47-8.62,0.24-12.97,0.46v0.01c2.91,0.36,4.1,1.2,5.96,1.89',
        'c2.65,0.98,2.27,2.61,7.25,3.07c0.34,0.86,3.41,0.5,4.7,0.95c-2.7,0.14-5.2-0.28-7.83-0.25c0,0.16-0.02,0.32,0,0.47',
        'c-8.31-0.25-16.61-0.96-24.94-2.14c-9.24-1.74-19.72-1.18-29.2-1.83c-3.55,0.99-24.23-0.66-21.47,3.69',
        'c-12.34-0.06-19.48-0.3-48.26-0.29v7.69c26.33,0.04,44.56,0.09,45.6,0.18c4.42,0.36,8.54-0.33,10.97-1.59',
        'c16.31-0.11,32.46,0.32,48.74-0.21c1.05,0,2.69,0.01,2.68-0.55c14.25,1.21,28.95,0.52,43.23,0.27',
        'c31.08,2.31,62.08,1.76,93.18,1.59c15.25,0.14,166.68,0.23,191.93,0.49c4.42,0.36,8.54-0.33,10.97-1.59',
        'c16.31-0.11,32.46,0.32,48.74-0.21c1.05,0,2.69,0.01,2.68-0.55c14.25,1.21,28.95,0.52,43.23,0.27',
        'c20.54,1.37,40.85,2.01,61.39,1.75v-5.88C772.42,287.37,765.32,287.46,758.22,287.28z',
        'M736.75,340.04c-1.55-0.06-3.13-0.08-4.59,0.14c-0.14,0.09-0.08,0.13-0.13,0.2',
        'c-4.09-0.48-8.63-1.37-12.78-0.43c0-0.03,0.01-0.06,0-0.09v-0.01c-12.89-2.3-26.57-2.77-40.26-0.96',
        'c-17.17,0.33-34.69-0.9-51.73,0.43c-11.98-0.05-97.37-0.09-120.61-0.11c19.94,1.41,110.47,2.01,130.56,1.4',
        'c0.02-0.06-0.08-0.08-0.09-0.13c0.06,0.02,0.18,0.01,0.23,0.04c12.92,0.81,26.13,0.94,39-0.21c-1.47,0.38-2.91,0.76-4.38,1.13',
        'c-0.6,0.14-1.6,0.19-1.27,0.5c2.68,0.75,6.11-0.08,8.76-0.19c11.1-0.55,22.38-0.44,33.57-0.68c-3.35,0.92-8.48-0.36-11.75,0.68',
        'c5.15,0.79,10.98,0.58,16.42,0.96c-0.01,0.01,0,0.02-0.01,0.02c-12.19-0.66-24.89-0.91-36.7,0.29',
        'c-10.03,0.84-19.96,1.4-30.13,0.38c-10.17-1-20.68-1.06-31.12-1.04c-67.6-0.44-189.96,3.38-228.87-0.6',
        'c-0.04-0.26-0.6-0.43-1.36-0.52c-2.85-0.37-5.7-0.75-8.95-0.74c-13.06,0.3-26.17-0.56-39.14-0.3c-0.14,0.09-0.08,0.13-0.13,0.2',
        'c-4.09-0.48-8.63-1.37-12.78-0.43c0-0.03,0.01-0.06,0-0.09v-0.01c-12.89-2.3-26.57-2.77-40.26-0.96',
        'c-17.17,0.33-34.69-0.9-51.73,0.43c-4.28-0.01-26.79-0.06-60.34-0.07v1.5c45.77-0.13,40.62,0.17,70.29-0.15',
        'c0.02-0.06-0.08-0.08-0.09-0.13c0.06,0.02,0.18,0.01,0.23,0.04c12.92,0.81,26.13,0.94,39-0.21c-1.47,0.38-2.91,0.76-4.38,1.13',
        'c-0.6,0.14-1.6,0.19-1.27,0.5c2.68,0.75,6.11-0.08,8.76-0.19c11.1-0.55,22.38-0.44,33.57-0.68c-3.35,0.92-8.48-0.36-11.75,0.68',
        'c5.15,0.79,10.98,0.58,16.42,0.96c-0.01,0.01,0,0.02-0.01,0.02c-12.19-0.66-24.89-0.91-36.7,0.29',
        'c-10.03,0.84-19.96,1.4-30.13,0.38c-27.74-2.08-55.84-0.62-83.95-1.06v2.99c42.66-0.59,67.08,0.99,106.59,2.01',
        'c4.99,0.18,10.8-0.17,15.65,0.8c13.47,1.03,27.74-0.8,41.22,0.62c4.73,0.35,8.53,1.11,9.88,2.67c3.07,0.5,6.78,0.74,9.91,0.03',
        'c67.36,1.22,75,0.46,182.29,0.84c8.45,0.01,12.7-1.27,2.23-2.69c-7.63-1.03-14.2-2.12-14.13-2.83c17.81-2.97,60.84-0.8,73.79-1.45',
        'c23.61-0.15,46.23,1.89,69.87,2.02c5.01,0.18,10.79-0.17,15.65,0.8c13.47,1.03,27.74-0.8,41.22,0.62',
        'c4.73,0.35,8.53,1.11,9.88,2.67c3.07,0.5,6.78,0.74,9.91,0.03c9.57,0.98,19.65,0.11,29.34,0.42v-10.71',
        'C765.5,339.69,750.83,340.92,736.75,340.04z',
        'M749.22,361.85c-116.66-2.38-277.85,0.41-390.72,0c-68.67-0.79-108.18-1.14-182.29-1.03v3.93',
        'c49.43-0.02,98.15,0.64,147.46,1.11c8.29,1.82,17.69,0.62,26.26,1.16c45.96,0.16,72.9-0.04,156.73,0.08',
        'c-107.23,1.95-218.25-0.37-330.45-0.8v3.17c195.72-0.37,397.27,0.21,603.32-0.27v-1.32c-51.82-0.48-103.78,0.09-155.52-1.6',
        'c-10.13-0.55-81.62,1.26-100.16-0.99c4.77-1.1,43.08-0.53,43.08-0.53c49.43-0.02,98.15,0.64,147.46,1.11',
        'c8.28,1.82,17.69,0.62,26.26,1.16c13.72,0.31,24.6-0.09,38.88,0.02v-4.98C769.43,361.92,759.33,361.75,749.22,361.85z',
        'M298.12,244.63c103.56-1.38,125.27-2.5,259.26-2.41c3.2-0.01-12.52-1.47-23.75-1.43',
        'c-169.42-0.08-202.44,2.9-357.42,2.9v1.28C247.68,244.9,249.8,245.08,298.12,244.63z',
        'M566.93,355.97c-113.46,0.97-141.12-0.44-202.67,2.82c-21.96,0.99-44.3,0.71-66.29,1.36',
        'c36.39,0.01,72.78,0.78,109.17,0.55c-0.98-0.96-5.36-0.46-6-1.24c19.02-3.41,82.58-0.22,165.79-1.41V355.97z',
        'M327.79,339.14c30.1,0.1,60.43-0.12,90.48-0.46c-4.02-0.75-61.94-3.23-80.12-2.5',
        'c-7.32,0.03-14.7-0.07-22.08-0.11c-0.84,0.25-0.65,0.55-0.28,0.86C317.05,338.01,323.67,339.23,327.79,339.14z ">'
    )
    );
  }
}