// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "../../utils/SVGUtils.sol";
import "../../PlanetsDescriptor.sol";


library DataDescriptor_2 {

  function getSVG(PlanetsDescriptor.PlanetMetadata memory planetMetadata_) public pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
      getPositionField(planetMetadata_.position.x, planetMetadata_.position.y),
      getHabitabilityField(planetMetadata_.habitability),
      getTemperatureField(planetMetadata_.temperature),
      getSatelliteField(planetMetadata_.nSatellite)
    )
    );
  }

  function getPositionField(int xPosition_, int yPosition_) private pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
        '<path class="fill_field" d="M72.04,711.81c0.81,0,1.5,0.29,2.07,0.86c0.57,0.57,0.86,1.26,0.86,2.06c0,0.81-0.29,1.5-0.86,2.07',
        'c-0.57,0.57-1.26,0.86-2.07,0.86H59.91v4.18h-1.67V716h13.8c0.35,0,0.64-0.12,0.89-0.37c0.24-0.25,0.36-0.54,0.36-0.89',
        'c0-0.34-0.12-0.64-0.36-0.88c-0.25-0.24-0.55-0.37-0.89-0.37h-13.8v-1.68H72.04z',
        'M80.01,721.86c-0.8,0-1.49-0.29-2.07-0.86c-0.57-0.57-0.86-1.26-0.86-2.07v-4.19',
        'c0-0.8,0.29-1.49,0.86-2.06c0.58-0.58,1.27-0.86,2.07-0.86h10.88c0.81,0,1.5,0.29,2.07,0.86c0.57,0.57,0.86,1.26,0.86,2.06v4.19',
        'c0,0.8-0.29,1.49-0.86,2.07c-0.57,0.57-1.26,0.86-2.07,0.86H80.01z M80.01,713.49c-0.35,0-0.64,0.12-0.88,0.37',
        'c-0.25,0.25-0.37,0.54-0.37,0.88v4.19c0,0.35,0.12,0.64,0.37,0.88c0.24,0.25,0.54,0.37,0.88,0.37h10.88',
        'c0.35,0,0.64-0.12,0.89-0.37c0.24-0.24,0.36-0.54,0.36-0.88v-4.19c0-0.34-0.12-0.64-0.36-0.88c-0.25-0.24-0.55-0.37-0.89-0.37',
        'H80.01zM96.34,721.86v-1.67h13.38c0.35,0,0.64-0.12,0.89-0.37c0.24-0.24,0.36-0.54,0.36-0.88',
        'c0-0.35-0.12-0.64-0.36-0.89c-0.25-0.24-0.55-0.37-0.89-0.37H98.85c-0.8,0-1.49-0.29-2.07-0.86c-0.57-0.57-0.86-1.26-0.86-2.07',
        'c0-0.8,0.29-1.49,0.86-2.06c0.58-0.58,1.27-0.86,2.07-0.86h13.39v1.68H98.85c-0.35,0-0.64,0.12-0.88,0.37',
        'c-0.25,0.25-0.37,0.54-0.37,0.88c0,0.35,0.12,0.64,0.37,0.89c0.24,0.24,0.54,0.37,0.88,0.37h10.88c0.81,0,1.5,0.29,2.07,0.86',
        'c0.57,0.57,0.86,1.26,0.86,2.07c0,0.8-0.29,1.49-0.86,2.07c-0.57,0.57-1.26,0.86-2.07,0.86H96.34z',
        'M114.76,711.81h1.67v10.04h-1.67V711.81z',
        'M135.28,711.81v1.68h-7.53v8.36h-1.68v-8.36h-7.53v-1.68H135.28z',
        'M137.38,711.81h1.67v10.04h-1.67V711.81z',
        'M144.08,721.86c-0.8,0-1.49-0.29-2.07-0.86c-0.57-0.57-0.86-1.26-0.86-2.07v-4.19',
        'c0-0.8,0.29-1.49,0.86-2.06c0.58-0.58,1.27-0.86,2.07-0.86h10.88c0.81,0,1.5,0.29,2.07,0.86c0.57,0.57,0.86,1.26,0.86,2.06v4.19',
        'c0,0.8-0.29,1.49-0.86,2.07c-0.57,0.57-1.26,0.86-2.07,0.86H144.08z M144.08,713.49c-0.35,0-0.64,0.12-0.88,0.37',
        'c-0.25,0.25-0.37,0.54-0.37,0.88v4.19c0,0.35,0.12,0.64,0.37,0.88c0.24,0.25,0.54,0.37,0.88,0.37h10.88',
        'c0.35,0,0.64-0.12,0.89-0.37c0.24-0.24,0.36-0.54,0.36-0.88v-4.19c0-0.34-0.12-0.64-0.36-0.88c-0.25-0.24-0.55-0.37-0.89-0.37',
        'H144.08z',
        'M176.74,711.81v10.04h-2.34l-12.72-8.48v8.48H160v-10.04h2.34l12.72,8.48v-8.48H176.74z"/> ',
        '<text transform="matrix(1 0 0 1 59.91 770.3943)" class="text_metadata"> X ',xPosition_>=0?'':'-',SVGUtils.uint2str(uint(SVGUtils.abs(xPosition_)), 0),' Y ',yPosition_>=0?'':'-',SVGUtils.uint2str(uint(SVGUtils.abs(yPosition_)), 0),'</text> '
    )
    );
  }

  function getHabitabilityField(uint habitability_) private pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
        '<path class="fill_field" d="M314.07,711.81v10.04h-1.68v-4.18H299v4.18h-1.67v-10.04H299V716h13.39v-4.18H314.07z',
        'M326.5,711.81l8.83,10.04h-2.23l-7.36-8.36l-7.35,8.36h-2.23l8.83-10.04H326.5z',
        'M337.44,721.86v-10.04h13.8c0.81,0,1.5,0.29,2.07,0.86c0.57,0.57,0.86,1.26,0.86,2.06',
        'c0,0.82-0.29,1.52-0.88,2.1c0.59,0.57,0.88,1.27,0.88,2.09c0,0.8-0.29,1.49-0.86,2.07c-0.57,0.57-1.26,0.86-2.07,0.86H337.44z',
        'M339.11,716h12.13c0.35,0,0.64-0.12,0.89-0.37c0.24-0.25,0.37-0.54,0.37-0.89c0-0.34-0.12-0.64-0.37-0.88',
        'c-0.25-0.24-0.54-0.37-0.89-0.37h-12.13V716z M339.11,720.19h12.13c0.35,0,0.64-0.12,0.89-0.37c0.24-0.24,0.37-0.54,0.37-0.88',
        'c0-0.35-0.12-0.64-0.37-0.89c-0.25-0.24-0.54-0.37-0.89-0.37h-12.13V720.19z',
        'M356.28,711.81h1.67v10.04h-1.67V711.81z',
        'M376.8,711.81v1.68h-7.53v8.36h-1.68v-8.36h-7.53v-1.68H376.8z',
        'M384.32,711.81l8.83,10.04h-2.23l-7.35-8.36l-7.35,8.36h-2.23l8.83-10.04H384.32z',
        'M395.26,721.86v-10.04h13.8c0.81,0,1.5,0.29,2.07,0.86c0.57,0.57,0.86,1.26,0.86,2.06',
        'c0,0.82-0.3,1.52-0.88,2.1c0.59,0.57,0.88,1.27,0.88,2.09c0,0.8-0.29,1.49-0.86,2.07c-0.57,0.57-1.26,0.86-2.07,0.86H395.26z',
        'M396.93,716h12.13c0.35,0,0.64-0.12,0.89-0.37c0.24-0.25,0.36-0.54,0.36-0.89c0-0.34-0.12-0.64-0.36-0.88',
        'c-0.25-0.24-0.55-0.37-0.89-0.37h-12.13V716z M396.93,720.19h12.13c0.35,0,0.64-0.12,0.89-0.37c0.24-0.24,0.36-0.54,0.36-0.88',
        'c0-0.35-0.12-0.64-0.36-0.89c-0.25-0.24-0.55-0.37-0.89-0.37h-12.13V720.19z',
        'M414.1,711.81h1.67v10.04h-1.67V711.81z',
        'M419.55,711.81v8.37h15.07v1.67h-16.74v-10.04H419.55z',
        'M436.72,711.81h1.67v10.04h-1.67V711.81z',
        'M457.23,711.81v1.68h-7.53v8.36h-1.68v-8.36h-7.53v-1.68H457.23z',
        'M476.63,711.81l-7.81,5.86v4.18h-1.67v-4.18l-7.81-5.86h2.79l5.86,4.39l5.86-4.39H476.63z" />',
        '<text transform="matrix(1 0 0 1 299 770.6815)" class="text_metadata">',SVGUtils.uint2str(habitability_, 0),' %</text> '
    )
    );
  }

  function getTemperatureField(uint temperature_) private pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
        '<path class="fill_field" d="M399.51,620.22v1.68h-7.53v8.36h-1.68v-8.36h-7.53v-1.68H399.51z',
        'M418.35,620.22v1.68h-16.74v-1.68H418.35z M418.35,624.4v1.68h-15.07v2.51h15.07v1.67h-16.74v-5.86H418.35z',
        'M438.03,620.22v10.04h-1.68v-7.75l-7.11,6.36l-7.12-6.36v7.75h-1.67v-10.04h1.62l7.16,6.41l7.16-6.41H438.03z',
        'M453.94,620.22c0.81,0,1.5,0.29,2.07,0.86c0.57,0.57,0.86,1.26,0.86,2.06c0,0.81-0.29,1.5-0.86,2.07',
        'c-0.57,0.57-1.26,0.86-2.07,0.86H441.8v4.18h-1.67v-5.86h13.8c0.35,0,0.64-0.12,0.89-0.37c0.24-0.25,0.36-0.54,0.36-0.89',
        'c0-0.34-0.12-0.64-0.36-0.88c-0.25-0.24-0.55-0.37-0.89-0.37h-13.8v-1.68H453.94z',
        'M458.98,628.59h1.67v1.67h-1.67V628.59z"/> ',
        '<text transform="matrix(1 0 0 1 385 673.9238)" class="text_metadata">', SVGUtils.uint2str(temperature_, 0),' K</text> '

    )
    );
  }

  function getSatelliteField(uint nSatellite_) private pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
        '<path class="fill_field" d="M60.28,824.54v-1.8h14.46c0.37,0,0.69-0.13,0.96-0.4c0.26-0.26,0.39-0.58,0.39-0.96',
        's-0.13-0.7-0.39-0.96c-0.27-0.26-0.59-0.39-0.96-0.39H62.99c-0.87,0-1.61-0.31-2.24-0.93c-0.62-0.62-0.92-1.36-0.92-2.24',
        'c0-0.87,0.31-1.61,0.92-2.23c0.62-0.62,1.37-0.93,2.24-0.93h14.47v1.81H62.99c-0.37,0-0.69,0.13-0.96,0.39',
        'c-0.27,0.27-0.4,0.59-0.4,0.96c0,0.37,0.13,0.7,0.4,0.96c0.26,0.26,0.58,0.39,0.96,0.39h11.75c0.87,0,1.62,0.31,2.24,0.93',
        'c0.62,0.62,0.93,1.36,0.93,2.24c0,0.87-0.31,1.61-0.93,2.24c-0.62,0.62-1.36,0.92-2.24,0.92H60.28z',
        'M91.34,813.69l9.54,10.85h-2.41l-1.59-1.8h-12.7l-1.59,1.8h-2.41l9.54-10.85H91.34z M85.77,820.92h9.53',
        'l-4.77-5.41L85.77,820.92z',
        'M115.93,813.69v1.81h-8.14v9.04h-1.81v-9.04h-8.13v-1.81H115.93z',
        'M136.29,813.69v1.81h-18.08v-1.81H136.29z M136.29,818.21v1.81h-16.28v2.71h16.28v1.8h-18.08v-6.33',
        'H136.29z',
        'M140.37,813.69v9.04h16.28v1.8h-18.08v-10.85H140.37z',
        'M160.73,813.69v9.04H177v1.8h-18.08v-10.85H160.73z',
        'M179.28,813.69h1.8v10.85h-1.8V813.69z',
        'M201.44,813.69v1.81h-8.14v9.04h-1.81v-9.04h-8.13v-1.81H201.44z',
        'M221.8,813.69v1.81h-18.08v-1.81H221.8z M221.8,818.21v1.81h-16.28v2.71h16.28v1.8h-18.08v-6.33H221.8z',
        'M224.52,824.54v-1.8h14.46c0.37,0,0.69-0.13,0.96-0.4c0.26-0.26,0.39-0.58,0.39-0.96',
        's-0.13-0.7-0.39-0.96c-0.27-0.26-0.59-0.39-0.96-0.39h-11.75c-0.87,0-1.61-0.31-2.24-0.93c-0.62-0.62-0.92-1.36-0.92-2.24',
        'c0-0.87,0.31-1.61,0.92-2.23c0.62-0.62,1.37-0.93,2.24-0.93h14.47v1.81h-14.47c-0.37,0-0.69,0.13-0.96,0.39',
        'c-0.27,0.27-0.4,0.59-0.4,0.96c0,0.37,0.13,0.7,0.4,0.96c0.26,0.26,0.58,0.39,0.96,0.39h11.75c0.87,0,1.62,0.31,2.24,0.93',
        'c0.62,0.62,0.93,1.36,0.93,2.24c0,0.87-0.31,1.61-0.93,2.24c-0.62,0.62-1.36,0.92-2.24,0.92H224.52z"/> ',
        '<text transform="matrix(1 0 0 1 60.28 868.2227)" class="text_metadata">', SVGUtils.uint2str(nSatellite_, 0),' </text> '
    )
    );
  }

}