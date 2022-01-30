// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;


library PlanetSurface4_1Descriptor {

  function getSVG() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        '<path class="clip_path" d="M487.79,262.81c-1.8,3.63-0.23,6.97,3.96,7.72c2.3-2.45-3.28-7.72-3.04-10.3c0,0,0,0,0,0c0,0,0,0,0,0',
        'C488.45,261.06,488.1,261.94,487.79,262.81z',
        'M430.07,307.27c0.14,0.07,0.27,0.14,0.41,0.21c-0.67-1.67,4.22-5.89-0.64-5.88',
        'C423.22,301.93,425.64,305.23,430.07,307.27z',
        'M425.64,311.35L425.64,311.35c1.32-2.89-2.37-3.73-5.36-3.84C421.54,309.7,422.46,311.3,425.64,311.35z',
        'M404.58,303.26c-2.49,2.34,4.63,2.54,4.31,0.57C408.1,303.35,405.86,303.07,404.58,303.26z',
        'M302.27,261.95c15.83,2.53,31.84-7.84,45.82-15.15c8.29,1.13,18.45-4.69,22.46-10.46',
        'c-4.38-3.28-11.16-5.35-16.63-4.82c4.39-6.01-12.02,0.89-10.91,2.88c-1.85,2.83-9.44-0.73-10.56,2.96',
        'c-3.06,6.93-21.39,13.74-22.77,20.19C305.28,259.87,303.66,260.53,302.27,261.95z',
        'M299.93,244.12c8.54-0.01-2.59-7.43-1.99-0.13c0.02,0,0.02,0,0.02,0',
        'C298.71,244.07,299.36,244.12,299.93,244.12z',
        'M178.9,292.07c15.04-6.46,31.65,10.35,31.7,1.55c-2.53-3.53-6.72-5.74-9.86-8.61',
        'c-2.44-6.27,2.28-10.13-7.48-12.88c2.11-2.65,4.98-6.01-0.26-6.81c-0.58-4.47,1.62-9.19,4.2-12.71c2.84-2.37,5.13-4.91,5.51-8.42',
        'c0.22-2.23,3.54-2.24,5.88-2.57c0.53-0.58,1.31-0.97,2.08-0.71c2.16-4-6.55-2.62-7.09-6.15c-0.74-2.03,1.23-3.61,0.89-5.55',
        'c-0.87-1.83-1.74-3.64-2.42-5.58c-1.19-1.75-4.24-1.1-5.04-3.12c-0.57-2.42,2.17-4.1,3.47-5.9c-0.17-1.59-0.75-3-1.67-4.42',
        'c9.61-2.84,20.91,4.52,27.82,0.27c2.57,1.2,5.31,2.11,8.06,2.84c2.18,3.16,7.38,2.13,10.83,1.71c4.57-8.12-2.7-6.16-7.58-8.53',
        'c-3.06-1.86-3.64-5.42-5.95-7.82c-1.99-3.05-19.27-6.01-14.66,1.05c0.89,0.46,1.74,0.89,2.67,1.35c-5.07,1.06,0.39,1.53,1.95,1.89',
        'c-4.99,3.58-14.2,1.74-18.62-1.25c3.78-1.17,2.97-4.78,3.65-7.75c1.36-2.44,1.11-5.18-1.71-6.55c-0.6-8.28-14.75-4.9-20.5-6.92',
        'c-3.03-1.01-5.14-3.76-8.55-3.95v116.19C177.13,292.45,177.94,292.19,178.9,292.07z',
        'M257.03,354.6c-2.58-0.71-5.27-1.16-7.95-1.35c-4.96-7.07-12.98-9.79-19.76-14.39',
        'c-1.38-0.63-2.21-0.38-3.6,0.04c-4.08,1.12-8.42,0.55-12.59,0.31c0.05-5.25-12.31-5.23-16.07-4.12',
        'c-4.43-2.89-10.51-5.15-15.79-4.19c-0.27,3.14-1.16,6.1-2.68,9.04c-0.84-0.28-1.64-0.63-2.38-1.07v24.01',
        'c6.9,1.82,5.04,0.4,7.08-5.15c4.46,2.43,12.26,1.5,14.18,6.64c4.09-1.13,7.84-2.14,11.05-4.92c0.53,1.03,1.97,1.89,3.34,1.7',
        'c-0.2-1.1,1.27-2.95,0.19-4.03v-0.01c3.69-2.35,7.56-3.18,10.98,0.07c3.37,1.94,8.32,3.27,12.7,3.94',
        'c8.56,1.68,17.1-0.28,25.67,0.07C265.53,359.58,259.79,354.91,257.03,354.6z M230.09,341.34c0.19-0.06,0.36-0.13,0.54-0.2',
        'l0.33,0.39C230.67,341.46,230.38,341.4,230.09,341.34z M253.69,357.26c-0.15-0.01-0.27-0.09-0.39-0.19',
        'c0.88,0.14,1.77,0.29,2.63,0.51C255.18,357.5,254.44,357.4,253.69,357.26z',
        'M423.04,287.23c-0.23-0.56-0.39-1.12-0.4-1.69c9.84,2.31,19.42-0.31,28.72-2.81',
        'c-0.07,3.55-8.49,8.1-1.42,10.09c3.13-2.03,1.88-6.63,9.7-6.42c5.99-1.14,8.8-1.37,12.5-4.05c3.96-3.6-2.07-8.49-0.22-12.71',
        'c2.27-3.32,5.42-6.57-1.56-5.34c-0.23-1.57-0.79-2.97-1.75-4.36c2.39-0.32,2.79-2.09,0.62-3.44c0.19-3.67,11.72-12.73,1.61-15.99',
        'c0.5,3.8-4.06,5.19-6.81,7.29c-0.61-1.57-1.57-3-2.7-4.27c0.19-3.57-0.87-6.98-3.16-9.98c1.49-2.05-0.96-5.09-3.18-6.43',
        'c6.24-7.58,17.14-7.3,25.5-10.67c23.98-13.26-14.48-13.36-23.24-13.66c-8.7-0.5-16.78-3.56-25.35-4.79',
        'c-5.66-1.23-21.12-1.64-29.72-1.03c-9.42,0.78-17.3,3.2-26.57,0.23c0.26,0.07,1.35,0.31,3.56,0.82',
        'c-5.43-0.34-10.74-0.53-16.29-0.9c-0.48-0.89-5.78-0.41-5.36,0.15c-14.8,0.69-28.64,6.2-43.38,7.42',
        'c-2.28-0.82-17.46-1.51-12.88,3.48c-5.01,1.54-2.51,5.51,1.74,5.35c5.53-1.43,10.03-3.39,15.84-2.18',
        'c6.36,0.58,12.69,0.09,18.12-3.38c3.89-0.76,8.05-0.29,12.02-0.03c-0.38,0.35-0.03,0.58,0.68,0.76c2.77-0.95,10.97,1.04,9.14,4.77',
        'c5.74,3.05,11.99,6.19,18.52,6.93c1.95,0.22,4.77-0.45,6.08,1.28c0.33,0.01,0.66,0.03,0.99,0.04c-0.3,0.93-0.84,1.9-0.9,2.7',
        'c-2.5,2.66-2.25,4.45,1.8,2.32c0.54,0.14,1.05,0.3,1.56,0.48c0.29,0.66,0.66,1.31,1.11,1.94c-2.05,2.62-5.56,6.54-0.53,8.02',
        'c1.91-0.34,4.15-0.02,5.68,1.22c2.21,0.56,5.82,2.75,3.05,4.94c-0.95,3.9-8.52,3.05-8.3,7.83c-0.83,0.3-1.46,1.05-1.45,1.99',
        'c0.21,0.05,0.43,0.06,0.67,0.05c-0.47,1.88-0.14,3.87,1.18,5.87c-1.54,3.39-6.35,1.61-9.06,3.22c-3.74,2.86-6.49,4.34-11.22,7.18',
        'c-7.62-3.54-16.15,3.12-23.05,5.63c-3.41,1.59-4.72,5.95-8.78,5.3c-2.31-11.87-20.47,8.22-6.13,6.93',
        'c-2.34,1.66,0.41,3.53,0.64,5.24c-4.28,4.09-10.47,3.83-15.06,7.13c-3.31,5.3-0.03,3.06-6.12,6.54c-3.1,0.6-9.1,1.21-3.15,4.12',
        'c4.12,1.79,7.69-0.1,11.31-1.17c-2.9,2.37-7.11,3.39-0.18,5.51c5.23-1.55,10.55-2.97,15.98-1.54c5.82,1.29,11.07,4.08,16.86,5.45',
        'c8.61,2.97,23-5.03,28.86,3.67c5.59-0.09,15.24,5.64,18.51-1.77c5.49-1.28,4.85-5.86,1.71-9.47c-2.67-1.68-5.34-2.55-6.92-5.07',
        'c1.01-3.48,8.67-3.91,11.07-7.62c4.91,0.94,8.03-1,11.76-2.31C421.27,294.76,426.88,293.8,423.04,287.23z',
        'M390.18,355.27c-4.6-5.8-16.96-12.69-21.59-12.77c-3.04-0.19-9.86,2.75-10.84-1.4',
        'c0.23-2.58,2.41-4.68,5.07-4.77c1.38-1.75,4.61-2.08,5.04-4.53c0.34-2.55-2.74-4.34-5.08-4.1c-1.08,0.1-1.59,0.65-2.23,1.38',
        'c-2.88,5.06-9.51,4.95-14.71,6.16c-16,2.28-20.94-6.03-42.77-3.25c-3.99-3.8-9.53-0.83-13.32,1.7c-4,2.3-17.79-8.19-15.14,1.83',
        'c-0.81,0.81-1.01,2.13-0.66,3.15c-3.3,3.45,5.2,6.05-1.17,7.85c-8.37,4.83,7.93,13.29,6.2,7.24c5.02-1.39,6.3,0.32,10.88,1.52',
        'c-0.1,1.26-0.59,2.48-1.6,3.5c-0.27,0.28-0.15,0.54,0.1,0.76c-3.33,1.13-13.11,3.42-5.42,6.8c2.29,0.72,4.29,0.22,6.02-0.97',
        'c2.27,0.17,4.44-0.26,6.5-1.05c4.13,3.51,10.65,1.53,15.36,0.12c7.47-1.13,16.54,5.66,23.28-0.06',
        'c17.16,3.71,35.24-4.77,48.61-10.03c1,0.04,2.19,0.19,2.85,0.87c2.07,2.15-3.28,7.63,2.62,9.39',
        'C393.3,362.99,393.28,358.72,390.18,355.27z M277.73,347.8c-0.79,0.27-1.23,1.09-1.98,1.27c0.64-1.24,2.27-1.51,3.37-2.29',
        'C278.96,347.31,278.23,347.55,277.73,347.8z',
        'M489.87,276.01c-1.92,0.93-0.36,3.56,3.28,4.1C497.68,277.92,493.38,275.28,489.87,276.01z',
        'M483.46,259.05c5.13,0.33,3.78-6.33,0.85-8.58c-2.61-1.17-5.08-2.58-7.11-0.66',
        'C475.28,252.3,479.13,258.87,483.46,259.05z',
        'M478.84,278.8c-2.65,2.64,3.61,4.37,1.61-0.12C479.91,278.54,479.22,278.56,478.84,278.8z',
        'M468.35,199.06c0.03,0.44,6.19,1.96,4.44,0.25C471.75,198.65,466.84,197.08,468.35,199.06z',
        'M464.06,296.53c-1-0.1-2.51,0.98-1.75,1.87C463.65,299.42,466.65,296.62,464.06,296.53z',
        'M460.44,225.7c-1.27-0.63-3.95-0.54-1.85,1.06C459.88,227.76,463.11,227.52,460.44,225.7z',
        'M450.88,305.67c4.03-1.12,7.9-2.87,6.45-5.47C454.49,295.41,446.64,302.43,450.88,305.67z',
        'M444,286.68c-1.27-2.55-6.23-0.29-3.13,2.1C442.26,288.69,443.95,288.1,444,286.68z',
        'M441.36,305.56c0.67-0.04,1.5-0.29,2.17-0.27c1.14-2.14-4-1.86-2.89-0.01',
        'C440.67,305.52,440.96,305.58,441.36,305.56z',
        'M441.09,291.02c-0.23,1.26-0.65,2.44-1.18,3.69C441.87,294.29,442.41,291.88,441.09,291.02z',
        'M439.34,296.33c-2.19-0.69-2.61,3.36-2.03,4.45C443.51,302.35,446.43,298.72,439.34,296.33z',
        'M426.59,371.84c-3.09-3.21-8.04-0.23-2.27,2.21C426.44,375.04,429.45,374.23,426.59,371.84z',
        'M405.32,185.47c-1-1.62-15.94-1.31-12.71-0.83C398.23,185.15,398.56,186.31,405.32,185.47z',
        'M384.11,249.57c3.45-3.8-2.51-3.35-1.68,0.43C383.05,250.15,383.64,249.94,384.11,249.57z',
        'M369.1,243.13c-8.43,7.05-4.84,8.06,4.1,4.92C376.66,245.38,376.34,240.02,369.1,243.13z',
        'M368.51,253.41c-4.97,2.21-1.53,7.53,2.7,7.78c8.97-0.55,6.33-7.4,1.57-8.43',
        'C370.96,252.73,369.56,252.98,368.51,253.41z',
        'M368.21,362.93c-0.83-0.03-2.07,0.16-3.8,0.64c1.12,5.07-13.24,4.62-9.41,9.59',
        'C357.52,374.54,373.95,364.62,368.21,362.93z',
        'M356.41,383.87c-0.94-0.2-3.94,0.02-3.23,1.24C354.36,386.27,362.33,384.74,356.41,383.87z',
        'M353.97,263.29c-2.68-0.08-1.62,3.39,0.21,3.49c1.36,0.06,2.02-1.64,2.4-2.64',
        'C356.8,264.09,354.74,263.28,353.97,263.29z',
        'M344.7,385.26c-4.54-4.19-23.27-7.75-20.17,3.17C327.57,388.6,346.6,390.1,344.7,385.26z',
        'M331.6,371.44c-0.11-1.31-2.14-1.7-3.27-1.7C326.9,370.98,331.12,373.76,331.6,371.44z',
        'M329.84,264.8c-1.99-0.42-2.74,1.3-2.56,3.29C331.13,268.13,332.88,266.03,329.84,264.8z',
        'M314.26,384.7c-0.61-0.4-2.04-0.65-1.3-1.22c5.45-1.49-6.13-4.2-7.6-4.57',
        'C297.71,380.02,319.28,389.22,314.26,384.7z',
        'M310.51,233.07c1.05-0.42,4.16-1.97,1.6-2.51C310.55,230.28,306.48,233.41,310.51,233.07z',
        'M296.92,250.42c3.26,2.14,12.98-2.18,9.9-6.08C304.24,242.69,294.81,246.83,296.92,250.42z',
        'M306.79,253.94c0.53-0.2,0.34-0.7,0-0.87C304.82,252.5,304.58,255.32,306.79,253.94z',
        'M309.01,387.28c-1.39-0.94-7.16-2.79-7.51-0.58C301.72,388.83,312.25,390,309.01,387.28z',
        'M285.7,259.81c3.2,1.83,7.74-1.07,8.35-4.46C293.23,249.72,280.61,256.07,285.7,259.81z',
        'M293.84,268.92c-0.64,0.62-0.8,1.29-0.61,1.93c-0.02,0.01-0.02,0.02,0,0.03c-0.07,0.74,0.29,1.25,0.76,1.76',
        'c-0.09,0.36,0.07,1.08,0.24,1.57c-6.74,2.23-5.64,7.59,1.37,6.72c4.68-2.59,14.44-1.44,17.25-5.74c0.29-0.81,0.14-1.44,0.73-2.24',
        'c2.51-2.21,5.79-2.81,9.01-2.37c7.46-1.79-5.33-9.56-11.45-7.01c-0.02-0.01-0.03-0.01-0.03,0c-5.84,0.26-9.78,3.45-14.42,4.08',
        'c-1.44-0.08-2.59,0.37-2.82,1.24C293.86,268.9,293.84,268.9,293.84,268.92z',
        'M288.8,382.92c-0.47-0.22-2.66-1.1-2.42-0.06C287.43,384.18,291.65,384.55,288.8,382.92z',
        'M242.22,268.24c-0.89-0.77-2.77-0.93-3.91-0.72C236.41,274.11,249.03,279.49,242.22,268.24z',
        'M240.44,306.03c5.72,3.61,1.97-8.07,1.58-10.34c-4.5-0.53-1.89,5.83-4.5,7.6',
        'C238.7,304.57,239.66,305.46,240.44,306.03z',
        'M240.56,251.57c-2.24-8.38,6.57-9.01,1.5-19.71c-5.77-2.08-5.61-3.21-1.81-6.65',
        'c2.05-3.21-12.04-5.95-11.72-2.59c-0.3,3.08,0.73,6.61-3.92,6.86c-1.18,7.1,6.02,3.99,4.6,6.3c-0.75,1.08-1.7,1.85-2.83,2.89',
        'c-3.74,1.78-4.41,7.18-7.12,9.87c-6.53,6.65-20.05,3.35-0.46,14.39c-8.88-2.12-5.85-0.43-9.18,5.55',
        'c-3.42,0.28-6.43,0.35-9.13,2.58c10.89,2.3,13.17,1.87,17.19-4.96c9.72,3.72,14.29-3.19,19.48-9.3',
        'C237.03,252.3,234.66,252.26,240.56,251.57z',
        'M692.99,261.95c15.83,2.53,31.84-7.84,45.82-15.15c8.29,1.13,18.45-4.69,22.46-10.46',
        'c-4.38-3.28-11.16-5.35-16.63-4.82c4.39-6.01-12.02,0.89-10.91,2.88c-1.85,2.83-9.44-0.73-10.56,2.96',
        'c-3.06,6.93-21.39,13.74-22.77,20.19C696,259.87,694.38,260.53,692.99,261.95z',
        'M690.65,244.12c8.54-0.01-2.59-7.43-1.99-0.13c0.02,0,0.02,0,0.02,0',
        'C689.42,244.07,690.08,244.12,690.65,244.12z',
        'M647.74,354.6c-2.58-0.71-5.27-1.16-7.95-1.35c-4.96-7.07-12.98-9.79-19.76-14.39',
        'c-1.38-0.63-2.21-0.38-3.6,0.04c-4.08,1.12-8.42,0.55-12.59,0.31c0.05-5.25-12.31-5.23-16.07-4.12'
    )
    );
  }
}