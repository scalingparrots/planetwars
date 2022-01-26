// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;


library PlanetSurface2_3Descriptor {

  function getSVG() public pure returns (string memory svg) {
    svg = string(
      abi.encodePacked(
        'M771.4,376.56c-1.24-0.03-0.9,2.02,0.32,1.51C772.42,377.84,771.77,376.88,771.4,376.56z',
        'M777.58,236.76c1.02-1.11,1.41-5.78,0.51-7.01C777.02,232.07,773.81,241.14,777.58,236.76z',
        'M767.98,378.98c-2.11,0.85-4.07-1.21-5.19,2.15C763.68,381.55,771.15,381.17,767.98,378.98z',
        'M706.48,252.83c1.47-2.59,3.59-20.86-3.45-12.92C699.86,245.16,699.86,268.84,706.48,252.83z',
        'M707.46,233.04c3.43,2.33,3.87-6.03,1.09-5.67C706.54,227.41,707.1,231.35,707.46,233.04z',
        'M728.53,309.17c2.59,0.03,1.83-0.77,0.9-2.76C726.9,306.18,726.27,307.88,728.53,309.17z',
        'M754.59,310.2c0.12,0.15,0.23,0.25,0.34,0.33C754.83,310.38,754.71,310.31,754.59,310.2z',
        'M769.97,320.62c-13.98-8.15-14.92-16.45-7.75,2.44c1.55,3.43-5.56,13.27,1.18,11.43',
        'c4.33-2.28,14.15,1.28,16.03-4.34c-3.63,3.16-7.41-0.5-8.05-4.46C786.87,321.36,775.67,324.98,769.97,320.62z M767.7,329.73',
        'c-6.53-0.04-2.09-7.6-5.89-13.85C765.36,317.15,773.61,327.52,767.7,329.73z',
        'M753.42,308.86c-3.71-4.52-8.83-2.68-10.74-10.24c3.94-4.8-3.21,1.21-5.63-1.16',
        'c-4.79-1.96-2.78-7.61-3.41-11.85c-4.98,7.1-5.88-19.27-10.85-18.18c-1.94-10.63-5.95,6.35-2.81,11.66',
        'c-0.11,2.75,5.67,14,4.77,6.48c-2.64-2.79-2.21-10.65-5.03-13.45c8.49-8.72,9.11,21.8,15.96,25.05',
        'C737.32,300.36,751.15,308.55,753.42,308.86z',
        'M765.95,327.58c-1.25-0.03-0.9,2.02,0.33,1.51C766.98,328.87,766.34,327.88,765.95,327.58z',
        'M735.97,248.99c0.02-0.01-0.15-0.04-0.11,0.01C732.8,251.43,740.72,251.97,735.97,248.99z',
        'M772.41,226.43c-4.3-1.59-9.41-30.01-6.03-12.59c11.56,37.07-9.66,45.2-32.52,54',
        'c-3.42,2.56-5.9,4.95-6.51-1.76c-3.79,15.64,6.98,0.67,10.08,6.15c10.94-5.17,5.62-14.94,14.7-9.13',
        'C764.52,260.57,777.46,238.06,772.41,226.43z',
        'M735.27,330.32c-5.51-6.14-11.82-2.48-12.41,4.58C726.85,340.5,741.02,337.93,735.27,330.32z',
        'M721.13,334.8c-0.21-1.59-1.33-1.9-1.87-0.65C718.26,336.96,722.99,337.21,721.13,334.8z',
        'M748.51,201.02c-3.1,0.01-6.14,2.25-6,5.1C744.49,203.97,747.14,204.11,748.51,201.02z',
        'M726.56,363.03c-0.67,0.73,6.47,8.92,4.32,4.64C729.86,366.67,728.44,362.83,726.56,363.03z',
        'M725.71,359.59c0.94-0.54-0.59-3.36-1.27-2.84C724.8,356.69,725.14,359.38,725.71,359.59z',
        'M769.74,304.41c0.98,3.82,1.04-0.14,0.05-1.03C769.4,303.56,769.81,304.4,769.74,304.41z',
        'M766.72,282.58c-2.79,0.83-3.23,10.97-0.27,9.12C766.73,289.18,767.79,284.67,766.72,282.58z',
        'M767.58,282.13c0.42,0.22,0.98,0.5,1.36-0.1C769.51,280.89,767.44,280.94,767.58,282.13z',
        'M769.04,277.1c-2.1-4.23-5.41,4.69-2.3,3.37C768.43,280.24,769.48,278.72,769.04,277.1z',
        'M734.14,276.73c-1.26,0-0.71,2.15-0.23,2.9C735.16,281.46,735.29,277.42,734.14,276.73z',
        'M688.89,348.37c7.57-9.12,10.71,1.42,15.94,5.08c20.38-0.24,8.2-1.42,1.29-9.08',
        'C710.87,328.01,666.59,348.67,688.89,348.37z',
        'M682.94,280.39c15.81-19.15-1.34,29.62,15.26,32.39c15.66-7.69,1.56-37.3,0.39-44.14',
        'c-2.34-11.86-6.45-9.54-8.44,0.92c-9.05,5.41-14.9,10.23-16.67,23.99c-0.09,11.94-8.17,2.41-12.32,7.69',
        'c-14.1,41.53-3.82,29.41,10.21,69.42c16.15-15.12-26.97-38.41-5.73-63.21c9.14,2.41,10.09-17.97,11.85-15.03',
        'c0.78,1.18,2.05-0.3,1.37-1.61C675.95,287.05,678.98,282.6,682.94,280.39z M655.15,332.15c-2.54-2.57-2.1-8.32,0.81-10.8',
        'C655.8,323.94,660.09,333.32,655.15,332.15z M658.8,335.07c0.23,3.28-2.43,1.24-2.3-0.85C657.01,333.1,658.65,333.88,658.8,335.07',
        'z M664.36,305.85c1.63-1.85,4.05-0.22,5.88-1.45C668.49,305.74,666.31,306.05,664.36,305.85z',
        'M667.74,215.85c0.91,0.46,3.26-0.05,2.66-1.78C669.21,213.27,665.88,213.78,667.74,215.85z',
        'M662.72,355.04c-0.2-0.03-1.56,1.07-1.05,1.01C662.24,356.97,663.88,356.02,662.72,355.04z',
        'M657.95,358.84c-0.11,0.81-1.92,3.42-1.05,3.63C658.93,362.79,660.98,359.41,657.95,358.84z',
        'M641.48,345.25c-0.61-0.1-1.35,1.1-0.73,1.56C640.2,352.91,644.6,346.69,641.48,345.25z',
        'M638.98,327.66c-4.88,1.43,4.17,9.74,0.39,3.77C637.79,330.56,639.54,328.54,638.98,327.66z',
        'M620.55,329.07c0.47,0.45,0.6,1.82,1.34,1.38C622.59,330.05,620.77,327.53,620.55,329.07z',
        'M614.38,236.82c-1.16,1.99-3.72,7.23-0.68,7.88C618.45,245.72,618.48,238.2,614.38,236.82z',
        'M609.21,240.21c-1.19,0.4-0.72,3.27,0.01,4.01C611.68,245.99,610.51,240.88,609.21,240.21z',
        'M581.74,267.64c7.56-1.18,5.55-7.42-0.61-7.64c-4.99-2.05-3.84,7.13-2.06,2.63c0.91-2.08,1.63-0.01,3.97,0.1',
        'c3.2,0.47,2.49-0.64,1.99,2.31c-2.29,2.48-7.63-0.65-7.9,0.52C575.48,269.5,579.48,265.16,581.74,267.64z',
        'M624.16,358.4c-7.72-7.48-21.46-3.91-30.58-11.7c0,0,14.4,3.87,14.4,3.87c-14.43-12.2-41.36-4.66-28.52-38',
        'c15.45-4.24,1.65-5.36-5.8,2.18c9.02-25.11,41.39-8.28,49.12-14.2c5.18,9.14-16.91,12.95-15.43,19.5',
        'c12.63,7.51,1.15-1.7,24.03-12.21c15.46-12.24,15.54-20.74,31.61-13.27c15.37,1.67,11.49-24.27,0.22-26.81',
        'c-3.92,6.68-6.18,12.09-7.14,19.87c-20.63,4.56-24.04,24.03-28.22,13.92c-4.09-10.87,3.76-3.57,4.4-9.69',
        'c-0.34-2.92-5.34-6.56-8.1-8.64c5.71-5.05,1.3-8-3.79-4.25c-4.61-1.29,1.7-2.24,3.56-3.33c3.36-1.43,8.48-14.84,1.88-12.3',
        'c-7.44,18.57-28.27-10.46-36.91-14.19c4.13-10.49-9.69,1.9-9.7-8.44c1.52-2.51,0.49-9.57-3.24-7.5',
        'c-1.59-5.44,26.1-25.32,8.53-13.6c0.34-2.32,7.77-8.76,10-10.3c1.73,9.88,30.81,0.27,14.62-5.3c68.46,14.14,52.34,50.35-3.7,22.85',
        'c12.92,8.54,40.08,16.3,41.69,41.1c-4.68-14.46-1.44-37.81,18.91-25.17c17.56-11.47,18.22-43.84,41.7-49.58',
        'c-12.32-8.93-35,27.57-43.08-15.06c-0.77,17.58,1.8,37.62-8.25,52.84c0.56-21.28-35.13-27.44-7.7-23.77',
        'c-19.03-13.66-59.45-31.46-73.78-5.73c-7.87-0.78-3.84-3.88,2.9-6.88c7.05-9.15-9.7,3.23-10.83,3.53',
        'c-2.29,3.56-3.56-14.74-8.71-16.98c17,51.45-38.06,20.9-61.6,36.69c14.58-8.13,48.47,8.84,59.12,32.15',
        'c-4.39,16.64,3.9,22.14,11.18,33.35c2.29,3.77,10.08-4.44,17.17-3.43c8.03,2.94,6.87-5.95,2.99-9.06c1.96-9.4,3.9-2.64,10.08-3.23',
        'c-14.87-10.09-5.05,3.32-16.8,3.53c2,2.54,7.97-3.14,7.41,5.23c-43.13,22.87-31.77-63-5.63-24.51c42.86,18.05,0.93,40.62,39.72,33',
        'c33.67,22.47-86.44,8.75-51.2,10.64c13.37,5.31-1.17,5.64,0.94,11.24c4.59,1.51,7.9-3.85,7.44-7.81',
        'c10.42,0.92-1.58,4.95-6.3,14.53c-32.63,17.67-32,0.67-55.31-12.95c-25.93,11.59-24.25-37.3-18.79-50.77',
        'c-18.88-11.6,1.33,38.03-8.01,24.96c-7.66-20.96-27.7-12.67-11.14-4.94c1.72,0.94-6.56-5.16-1.86-5.07',
        'c11.67,9.18,15.14,28.19,24.69,38.73c15.61,0.62,5.22,19.66,15.01,26.31c-1.87-53.57,1.45,3.44,49.61-3.22',
        'C566.81,344.57,608.99,375.57,624.16,358.4z M643.11,245.64c-2.37,3.28-8.25-6.1-6.77-6.37',
        'C636.43,235.44,645.06,243.19,643.11,245.64z M660.67,227.26c5.96-7.06,1.9-34.2,15.25-24.67',
        'C702.34,198.94,652.06,265.49,660.67,227.26z M524,218.9c-0.44-0.12-1-0.32-1.28-0.84C522.99,218.34,524.83,219.15,524,218.9z',
        'M528.02,216.21c-0.35,0-0.7-0.05-1.04-0.08C527.18,215.96,528.34,215.85,528.02,216.21z M596.98,204.31',
        'c-1.61,3.77-30.13,21.23-12.18,16.38C556.71,236.41,604.26,197.25,596.98,204.31z M627.38,208.51c-1.21-0.18-3.35-0.34-4.16-1.32',
        'C624.23,206.56,629.9,208.03,627.38,208.51z M584.94,194.77c17.25-6.22,51.28,2.86,55.5,10.42c-5.17,2.18-18.58-9.85-11.29-0.26',
        'c-4.32,1.77,15.89,4.99,17.8,8.66c-14.58-7.28-10.94,1.1-19.7-7.02c-7.45-3.98-23.25-0.66-6.29-6.62',
        'C612.49,192.34,591.97,194.64,584.94,194.77z M589.86,197.45c5.2-5.24,36.12,1.49,16.72,4.78',
        'C599.12,200.57,570.33,214.65,589.86,197.45z M567,204.03c-0.12-0.14,0-0.97-0.04-1.42C566.97,203.27,566.99,203.8,567,204.03z',
        'M566.94,221.74c0.5,0.66,0.25,0.22,0.06,0.28C566.93,221.98,566.94,221.81,566.94,221.74z M567.82,238.96',
        'c0.16-0.86-2.31-1.45-0.93-2.15C568.24,236.06,570.09,239.99,567.82,238.96z M568.93,236.77c-1.62-4.61-4.17,2.7-2-4.94',
        'c-10.03,4.66-6.91,19.45-16.51,5.38c-30.61-27.75-5.8-12.66,14.05-29.09c-7.01,7.02,5.08,7.85-0.55,8.63',
        'c2.97,2.83-7.23,9.17-7.25,11.86c-0.23,9.02,4.72-5.48,10.23-0.31C571.64,223.63,567.74,233.22,568.93,236.77z M574.41,224.91',
        'c-2.77,3.29-1.98-9.71-6.48-9.7c-1.22-3.52,1.31-9.25,3.97-11.51c4.7-2.1,6.16,12.8,7.54,5.5',
        'C583.62,180.91,583.63,214.88,574.41,224.91z M611.91,276.71c-0.34-0.16-0.76-2.79-0.99-2.77',
        'C607.03,275.63,612.08,269.25,611.91,276.71z',
        'M649.17,378.19c-7.94-9.24-30.11,2.56-41.94-3.31c8.65-3.85,5.34-1.48-5.73-5.13',
        'c-23.09-6.14-9.59,5.52-25.67,8.45C571.7,382.35,688.08,386.18,649.17,378.19z',
        'M713.34,372.16c-11.16,1.63-19.76,11.45-28.41,9.05c2.8,3.94,30.83-0.91,31.62-4.22',
        'C731.32,381.93,724.4,373.97,713.34,372.16z',
        'M726.43,379.17c0.72,0.61,1.27,0.97,1.57,0.83C728.39,379.83,727.67,379.53,726.43,379.17z',
        'M777.31,220.17c-1.81,2.96,1.12,8.86,2.12,7.45C779.22,226.19,780.4,219.19,777.31,220.17z',
        'M778.81,229.46c0.23,0.17,0.04,1.11,0.32,1.31C779.73,230.83,779.5,228.35,778.81,229.46z',
        'M779.43,364.83v-10.94C772.99,361.62,770.8,361.58,779.43,364.83z',
        'M770.81,258.98c-1.62,3.45-3.91,9.94-3.42,13.49c1.98-8.32,4.08-13.26,3.08-1.84',
        'c4.25,4.25,0.84,46.65,8.95,25.66c0.04,0.01,0-29.35,0.01-29.35c-3.72-4.47-6.97-15.31,0-20.09',
        'C776.83,245.49,769.96,251.69,770.81,258.98z M774.96,251.66c0.46-1.5,1.32-2.49,2.16-3.13',
        'C776.41,249.48,775.69,250.53,774.96,251.66z "> '
    )
    );
  }
}
