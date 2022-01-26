// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;

library PlanetSurface3_1Descriptor {

  function getSVG() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
      '<path class="clip_path" d="M512.77,280.44c-24.82,19.78,8.58,9.34,16.38,3.13c-20.42,0.74-8.5-10.52-7.42-24',
      'c-5.47,2.03-19.3,12.85-9.2,16.99C513.76,277,513.26,278.47,512.77,280.44z',
      'M518.9,260.3C518.9,260.3,518.9,260.3,518.9,260.3C518.9,260.3,518.9,260.3,518.9,260.3z',
      'M442.03,228.36c10.09,3.28,44.35-1.82,23.06-14.28C464.63,225.17,454.26,227.32,442.03,228.36z',
      'M461.45,234.45c2.4-0.67,22.39-5.39,15.56-8.81c-2.13,0.56-13.96,7.11-15.63,8.28c-0.82-0.54-0.87-0.52,0,0',
      'C460.89,234.39,460.36,234.59,461.45,234.45z',
      'M351.72,219.94c-12.24-4.96-29.05-4-41.42-2.92C331.1,212.28,386.8,252.17,351.72,219.94z',
      'M378.43,321.34c-8.79,10.46-19.55,11.46-36.56,8.19c-11.88,4.94,15.58,17.07,21.59,14.73',
      'c2.73-0.68,3.02-4.75,3.17-6.63C366.54,332.78,380.02,325.35,378.43,321.34z',
      'M548.58,224.26c0.02-0.06-0.07-0.08-0.09-0.04C548.49,224.21,548.58,224.26,548.58,224.26z',
      'M497.84,282.09c-13.09,2.2-8.12,14.91,1.43,0.41C500.99,280.41,499.64,281.6,497.84,282.09z',
      'M263.04,365.8c-24.47-2.21-55.54-24.1-76.03-26.52c8.88,13.36,51.55,28.15,70.97,29.21',
      'c4.09,1.68,0.15,3.67-0.31,5.6C267.31,379.21,279.38,372.69,263.04,365.8z',
      'M253.79,375.36c-1.95-3.6-19.29,3.43-18.94,3.09C238.44,378.42,263.29,380.9,253.79,375.36z',
      'M237.55,371.28c16.8-5.09-47.44-12.21-51.22-24.56c-6-5.82-4.81,1.41,3.34,9c1.73,2.52,9.89,6.77,4.95,7.09',
      'c-27.15,4.21,13.21,2.61,22.58,5.92c-2.27,4.45-19.58-1.2-28.12-0.42c-4.64,0.01-9.1,0.76-12.86,2.07v2.56',
      'c1.7-0.3,3.24-0.51,4.26-0.54C196.43,374.87,222.04,376.86,237.55,371.28z',
      'M549.14,251.77c0,0-0.06-0.36-0.06-0.36C549.04,251.49,549.11,251.7,549.14,251.77z',
      'M548.7,251.04c2.39,0.53,2.29-5,0.69-4.59C548.13,246.22,546.16,250.72,548.7,251.04z',
      'M549.21,241.26c7.43,0.74,1.86-10.71-0.71-3.64C547.89,239.49,548.69,241.56,549.21,241.26z',
      'M343.64,365.18c0.59-0.04,2.24,0.97,2.54,0.2C345.46,365.33,343.95,364.47,343.64,365.18z',
      'M190.34,309.96c10.98-0.06,18.84,8.41,13.4-10.52c-8.5,5.65-17.56,5.15-23.09-4.74',
      'c-1.54-1.96-3.02-3.95-4.44-5.96v15.96l0.77,0.48C181.08,307.72,185.53,310.07,190.34,309.96z',
      'M432.2,373.05c16.36-8.23,34.99-4.39,50.64-1.58c12.4,0.68,71.87-14.89,42.76-33',
      'c-46.93-6.51-101.85-20.95-129.43-65.04c-2.87-6.93-19.08-28.19-9.23-30.85c5.7-9.79,4.68-24.06,19.27-26.12',
      'c8.78-3.05,8.54-2.85,9.79-4.07c-2.86,0.59-6.05-11.53-1.02-10.23c4.42,4.76,21.12,13.58,16.99-0.45',
      'c-38.87-36.55-192.18,1.23-254.42-11.81c-0.23-0.02-0.45-0.04-0.69-0.04c-0.03,0-0.1,0-0.15-0.01c-0.01,0-0.01,0-0.02,0',
      'c-0.18-0.01-0.34-0.04-0.48-0.08V196c2.15,0.31,4.52,0.47,7.09,0.47c32.84,0.64,76-2.14,106.23,2.37',
      'c-26.44,11.06-56.81,23.19-63.83,54.45c-4.45-6.98,3.32-31.71,12.9-37.88c21.46-17.02-34.55-2.49-25.1-9.9',
      'c-3.3-0.34-18.51,3.69-24.49,6.83c0.51-5.42,9.48-6.78,20.09-8.27c10.43,0.28,48.03-7.05,47.07,3.43',
      'c-5.77,5.18-20.91,9.27-20.83,17c11.74-8.76,23.88-16.93,37.57-23.19c-30.25-4.68-63.2-2.5-93.81,0.12',
      'c-1.04,0.01-1.98-0.01-2.88-0.05v20.17c1.35,2.03,2.49,4.25,3.17,6.72c0.82,4.82-0.33,10.42-0.73,14.94',
      'c-0.69,0.34-1.33,0.53-1.95,0.57c-0.08,0.01-0.15,0-0.22,0c-0.08-0.01-0.18-0.03-0.27-0.04v13.56c2.26,2.7,4.86,5.16,8.26,6.87',
      'c13.74,17.73,7.9-2.19,10.49-11.69c3.42-7.07-12.51-33.97-4.78-33.85c2.5-3.25,14.58-14.14,16.79-9.06',
      'c-28.15,9.99,14.69,55.45-13.05,67.7c-7.46-0.12-13.47-7.59-17.71-13.4v16.25c2.23,3.39,4.63,6.9,7.21,10.35',
      'c16,23.85,24.3-18.65,26.63,13.58c4.63-11.91,5.85-26.72,11.68-38.28c2.99,17.24-22.29,49.25,7.26,57.31',
      'c7.04,3.92,21.11,4.09,21.07-5.7c5.41-3.41,23.65-17.81,25.29-13.3c-10.43,8.68-20.26,17.75-32.86,25.39',
      'c0.91,1.14,4.34,2.49,5.15,4.04c-0.73,1.65,1.13,1.19,1.87,0.83c4.57-7.91,17.05-20.39,27.42-22.98',
      'c-0.85,12.3-11.63,34.71,6.76,39.2c21.31,9.04,49.78,17.31,65.6,17.93c-19.83-8.66-56.74-10.72-60.56-32.77',
      'c5.38-25.91,13.13,10.96,28.21,13.39c23.31,14.88,62.47,21.61,83.56,0.86c5.09-4.21,6.81-17.13,10.43-3.86',
      'c11.99,31.17-51.04,11.78-54.32,20.9c24.79,2.66,62.37,8.16,77.09-16.35c19.3-11.34-11.24,22.99-17.29,19.72',
      'c42.09-6.99,38.15-58.49,88-24.84c24.8,12.96-27.15,24.69-23.52,11.2c4.15,2.36,19.81,0.53,7.69-1.76',
      'c-5.64-0.57,10.61-10.22-3.09-12.62c-4.45-0.42-13.92,6.11-4.93,3.32c10.95-0.84-7.23,13.62-11.04,7.94',
      'c-1.2-2.8-12.64,5.02-11.83,0.87c28.41-10.21-2.58-6.49-8.69,1.47c-4.24,2.33,2.98,0.96,4.66,2.45',
      'c-2.95,6.99-19.65,6.8-25.65,11.95c-34.41,37.97-213.53-20.78-91.87,3.01c-22.02-9.78-98.21-9.38-64.16-56.02',
      'c-5.23,2.4-15.91,23.97-12.49,32.16c-3.13-2.07-20.08-3.2-8.79-9.15c3.27-5.64-9.14,5.67-10.46,2.21',
      'c1.52-2.59,10.17-5.75,3.8-6.43c-2.25,0.06-0.06-2.19-1.39-2.93c-1.94-0.63-6.68,1.09-2.97,3.26c4.13,11-18.69-1.03-21.47-7.36',
      'c-8.15-10.89-25.48-11.64-37.42-17.09c-1.55-0.67-3.08-1.38-4.59-2.12v7.69c0.49,0.35,0.97,0.69,1.43,0.98',
      'c7.09,5.22,34.84,6.13,10.56,10.9c1.81-0.15,2.97-0.14,5.04,0.11c7.39,1.13,8.52-3.58,14.1,2.71c8.69,8.74-1.11,2.13-6.72,1.72',
      'C257.94,360.96,361.28,413.89,432.2,373.05z M226.8,299.03c-1-1.91-2.44-3.79-1.89-5.96c-1.89,5.32-5.57,11.99-2.45,16.96',
      'c0.02,2.44,6.23,6.99,2.03,6.57c-15.36-17.5,12.48-74.74,23.43-92.61c20.79-17.08,96.92-31.17,29.54-31.29',
      'c42.09-3.83,92.45-7.85,135.11-0.92c15.12,8.86-26.17-6.01-31.57,5.88c-30.58-15.93-77.75,0.8-107.88,19.25',
      'c-25.99,5.94-56.86,76.58-19.94,33.64c-7.02,15-27.47,30.95-22.9,49.99C230.02,303.03,227.07,300.08,226.8,299.03z M371.26,244.4',
      'c-3.91-1.17-26.11-6.04-15.54-1.81c6.01,3.06,18.24,9.29,9.18,11.19c-16.12-0.82-18.87-20.92-32.48-26.82',
      'c-12.87-6.64-39.32-1.54-25.83-8.46c-6.15,0.75-27.45,12.62-17.79,2.71c3.52-2.64,2.78-1.35,1.65-3.56',
      'c3.07-3.17,16.44-4.37,27.2-6.92C378.57,204.47,381.57,267.95,371.26,244.4z M337.1,203.5c7.79,0.97,32.77,6.76,30.67-5.51',
      'c9.59,3.25-4.17,13.46-11.51,10.46c-11.06-1.91-30.3-1.47-37.1-6.32c6.39-0.92,15.75-5.88,21.17-3.1',
      'C339.9,200.6,333.65,200.68,337.1,203.5z M256.09,244.16c-16.76,16.99-3.91-6.11,4.89-12.41c3.51,1.34,2.01,2.54,8.43-1.98',
      'c2.4-1.01,0.96,1.36,1.71,2.2c0.69,0.07,2.63,0.06,1.72,1.24C267.7,235.43,257.96,250.93,256.09,244.16z M288.58,309.74',
      'c1.39,23.5-21.68,37.46-5.42,3.34c3.63-6.59,2.16-12-5.95-10.93C284.74,294.85,293.52,297.78,288.58,309.74z M290.52,290.69',
      'c-7.08,1.23-19.13,11.79-24.38,9.57c6.29-4.65,26.47-15.61,34.95-12.57c-0.03,5.98-3.72,12.47-5.93,16.8',
      'C291.85,300.61,300.07,289.35,290.52,290.69z M311.9,280.94c1.92,1.89,2.99,2.47,5.64,1.36c0.43,4.97-9.65,11.86-12.87,15.29',
      'C303.28,293.57,309.44,284.78,311.9,280.94z M294.23,266.14c-7.64-0.12-15.65,6.18-23.33,7.84c-0.43-4.24,11.49-7.53,15.48-9.1',
      'c10.66,0.18,21.82-5.67,30.07-1.09C309.88,265.05,299.27,264.76,294.23,266.14z M303.39,282.01c-7.64,0.83-18.32,7.98-20.28,4.61',
      'C287.57,285.11,303.59,273.88,303.39,282.01z M334.22,352.48c-7.69-1.35-31.8-14.04-19.99-18.98',
      'C321.49,337.57,328.96,346.73,334.22,352.48z M358.6,350.41c-17.51,3.4-21.98-15.78-36.83-20.64',
      'c-4.24-2.88-12.16-2.82-11.17-9.71c10.34-12.36,31.04,11.95,45.04,7.06c6.22-0.54,14.65-7.51,16.82-12.94',
      'c22.91-14.83,27.26,29.66,4.07,24.44C364.02,340.58,396.07,343.17,358.6,350.41z M403.19,325.36',
      'c-2.77,15.36-22.64,33.72-35.93,28.86c22.42-4.32,26.44-19.23,32.85-32.3C394.96,308.45,406.89,316.74,403.19,325.36z',
      'M406.62,311.74c-56.17-24.98-38.4,26.52-67.03,5.84c17.39,6.25,19.81-16.49,35.92-18.54c-4.38-2.77-23.01-5.43-20.74,6.65',
      'c0.39,4.97-2.45,7.32-7.24,6.62c-63.55-5.92,29.59-21.96-1.17-46.1c17.68,23.52-59.45,30.29-22.3,44.81',
      'c-8.09-0.26-22.2-1.79-31.01,2.96c-0.14-6.67,4.11-10.48,8.21-14.63c9.32,0.81,30.74-22.17,24.5-32.35',
      'c-13.53-4.64-1.6-4.43,4.38-2.52c7.4-0.29-0.93,11.51,6.38,8.85c9.49-24.48-42.43-15.49-55.75-11.3',
      'c-9.34,3.13-34.75,17.28-29.58,26.93c-0.75,3.58-10.84,7.5-6.08,11.17c16.44-7.72,45.02-42.12,64.18-25.01',
      'c-4.25,0.06-21.74-1.04-21.78,1.69c2.13,5.94-25.57,13.34-30.01,20c-8.45,3.72-21.69,26.84-30.02,13.84',
      'c17.28,1.96,15.9-17.92,11.1-10.5c1.11,1.2,2.75,2.24,0.77,3.74c-14.11,5.43,4.37-28.79,8.72-36.2',
      'c12.08-16.89,31.22-39.36,53.78-40.26c-1.76,2.61-6.99,2.9-7.41,3.9c13.73-1.61,35.17-1.79,42.25,8.29',
      'c-36.3-10.61-64.2-4.47-89.05,37.55c7.68,7,50.35-57.7,83.03-28.36c-10.16-4.59-45.79-2.02-52.52,9.24',
      'c23.57-14.91,106.5-6.79,69.45,33.25c-6.56,3.27-18.48,14.72-5,16.33c8.37,2.32,6.04-4.69,0.68-6.65',
      'c4.17-6.54,13.86-8.4,16.32-16.79c8.57-22.65-14.55-28.68,18.31-14.38c-1.39-9.26,6.89,0.78,3.58,3.9',
      'c11.02,6.83,21.1,16.81,23.74,22.77c-14.69-0.74-23.53-15.21-34.38-22.04c0.43,8.6,11.03,15.73,21.09,21.76',
      'c-5.62,2.94-19.79-11.17-24.22-14.8c6.41,19.29,37.6,25.15,53.59,28.85c4.7,1.75,9.33,3.11,3.83,5.45',
      'c7.04,5.38,18,8.21,29.34,12.07C441.8,333.17,417.86,321.82,406.62,311.74z M427.53,350.99c-2.33,3.85-3.88,3.8-5.82,0.01',
      'c1.69,4.86-1,9.79-6.63,9.7c6.12-15.44-9.72-22.79-6.74-42.17C420.22,318.9,417.56,346.13,427.53,350.99z M458.15,337.91',
      'c-2.89,2.07-18.99,12.14-14.37,2.54c-1.99,1.3-10.01,5.36-13.57,5.63c-3.03-2.59-8.02-7.3-1.67-9.7',
      'C435.3,336.66,454.71,332.32,458.15,337.91z',
      'M177.25,360.31c-0.01-0.1,0.01-0.19,0.05-0.28c3.41-7.11,2.37-16.24,0.9-22.65',
      'c-0.08-0.54-0.16-0.65-0.69-2.4c-0.41-1.32-0.87-2.81-1.3-4.25v31.47c0.27-0.32,0.53-0.63,0.75-0.93',
      'C177.18,360.98,177.28,360.65,177.25,360.31z',
      'M180.09,326.13c0.38-0.02,0.9,0.11,0.68-0.46c-0.3-0.47-2.27-1.97-4.56-3.39v2.3',
      'c0.51,0.21,1.06,0.49,1.38,0.65C178.42,325.65,179.45,326.17,180.09,326.13z',
      'M235.43,277.2l-0.68-0.06C234.91,277.17,235.27,277.22,235.43,277.2z',
      'M370.34,375.44c-7.3-0.82-37.43-2.81-15.07,3.07c18.86,1.14,42.22-3.28,60.25-4.32',
      'C407.07,370.94,377.84,369.18,370.34,375.44z',
      'M405.05,356.3c-9.53,6.25-3.67,7.39,2.57-0.35C411.09,350.48,404.91,350.35,405.05,356.3z',
      'M407.51,351.2C407.51,351.2,407.51,351.2,407.51,351.2C407.51,351.2,407.51,351.2,407.51,351.2z',
      'M383.17,363.93C383.17,363.93,383.17,363.93,383.17,363.93C383.17,363.93,383.17,363.93,383.17,363.93z',
      'M397.61,362.2c0.14-1.07-2.62,0.2-2.74,0.81C395.71,362.9,397.66,362.7,397.61,362.2z',
      'M752.76,234.57c-0.23-21.96-35.48-18.19-51.73-17.89C722.34,217.49,739.98,225.55,752.76,234.57z',
      'M768.77,320.83c-8.66,12.8-19.66,11.04-36.18,8.7c-11.88,4.94,15.58,17.06,21.59,14.73',
      'c5.66-2.99,0.38-8.98,6.83-12.25C765.39,328.75,770.42,322.85,768.77,320.83z',
      'M653.76,365.8c-24.47-2.21-55.54-24.1-76.03-26.52c8.88,13.36,51.55,28.15,70.97,29.21',
      'c4.09,1.68,0.15,3.67-0.31,5.6C658.03,379.21,670.09,372.69,653.76,365.8z',
      'M644.5,375.36c-1.95-3.6-19.29,3.43-18.94,3.09C629.15,378.42,654.01,380.9,644.5,375.36z',
      'M734.36,365.18c0.59-0.04,2.24,0.97,2.54,0.2C736.17,365.33,734.66,364.47,734.36,365.18z',
      'M566.93,322.29c-1.52,0-7.99-5.67-8.21-7.41C556.65,321.51,579.94,331.16,566.93,322.29z',
      'M768.32,383.62c-27.86-1.38-66.46-4.33-92.23-19.09c18.16,1.82,35.75,7.81,52.02,8.76'
    )
    );
  }
}
