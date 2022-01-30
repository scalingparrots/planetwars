// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
import "../utils/PlanetRandom.sol";

library PlanetColor {

  struct PlanetColorPalette {
    string colorSurface;
    string colorBase;
    string colorRing;
  }

  function getPlanetColor(uint temperature_, bytes32 blockhashInit_,  uint offsetRandom_) public pure returns (PlanetColorPalette memory planetColorPalette, uint offsetRandom) {

    uint newOffsetRandom;

    // select random palette color
    uint randomColorSurface = PlanetRandom.calcRandom(0,3, blockhashInit_, offsetRandom_);
    newOffsetRandom = offsetRandom_ + 1124;
    uint randomColorBase = PlanetRandom.calcRandom(0,3, blockhashInit_, newOffsetRandom);
    newOffsetRandom = newOffsetRandom + 1124;
    uint randomColorRing = PlanetRandom.calcRandom(0,3, blockhashInit_, newOffsetRandom);
    newOffsetRandom = newOffsetRandom + 1124;

    string[3] memory planetColorSurfaceList;
    string[3] memory planetColorBaseList;
    string[3] memory planetColorRingList;
    PlanetColorPalette memory planetColorPaletteTemp;

    if (temperature_ < 193) {
      planetColorSurfaceList = ["F5FAF6","90CA9C","787A78"];
      planetColorBaseList = ["0A5F84","856A18","04916F"];
      planetColorRingList = ["751E87","10871D","87802B"];
    } else if (temperature_ < 213) {
      planetColorSurfaceList = ["7D5191","544A91","918B60"];
      planetColorBaseList = ["0C6A74","067341","113673"];
      planetColorRingList = ["D8D8D8","8DCFD9","D6AB89"];
    } else if (temperature_ < 233) {
      planetColorSurfaceList = ["8F97FF","A432CA","46C9DF"];
      planetColorBaseList = ["194D8C","8C894A","614A8A"];
      planetColorRingList = ["B4EBA0","EBDD59","EB6A4D"];
    } else if (temperature_ < 253) {
      planetColorSurfaceList = ["26171B","172619","733B4A"];
      planetColorBaseList = ["9FD7F2","F2CEA0","5D8DA6"];
      planetColorRingList = ["CCC922","6E23CC","807E0B"];
    } else if (temperature_ < 273) {
      planetColorSurfaceList = ["7D5191","410087","1C003B"];
      planetColorBaseList = ["0b670b","086424","630908"];
      planetColorRingList = ["1454C9","C99014","806838"];
    } else if (temperature_ < 293) {
      planetColorSurfaceList = ["FFFF00","B3091D","FFAA52"];
      planetColorBaseList = ["420087","8E1919","1C003B"];
      planetColorRingList = ["070E87","8A700B","D48B20"];
    } else if (temperature_ < 313) {
      planetColorSurfaceList = ["C50034","007810","86129A"];
      planetColorBaseList = ["6C78AC","ABA75B","8874AB"];
      planetColorRingList = ["410087","33870E","870780"];
    } else if (temperature_ < 333) {
      planetColorSurfaceList = ["0A0A8F","56118F","8F6118"];
      planetColorBaseList = ["C87D4F","61C790","C7A058"];
      planetColorRingList = ["77BD69","A37DBD","BD5F57"];
    } else if (temperature_ < 353) {
      planetColorSurfaceList = ["8E1919","478F21","8F138F"];
      planetColorBaseList = ["FFFF00","FF0095","B30068"];
      planetColorRingList = ["E0940E","004894","945F04"];
    } else if (temperature_ < 373) {
      planetColorSurfaceList = ["FF5C37","B33215","039560"];
      planetColorBaseList = ["FFD55B","B3912E","B35D0C"];
      planetColorRingList = ["1CC5E5","007F99","199908"];
    }

    planetColorPaletteTemp.colorSurface = planetColorSurfaceList[randomColorSurface];
    planetColorPaletteTemp.colorBase = planetColorBaseList[randomColorBase];
    planetColorPaletteTemp.colorRing = planetColorRingList[randomColorRing];

    planetColorPalette = planetColorPaletteTemp;
    offsetRandom = newOffsetRandom;

  }
}
