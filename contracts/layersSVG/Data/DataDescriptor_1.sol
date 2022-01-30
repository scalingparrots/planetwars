// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import "../../utils/SVGUtils.sol";
import "../../PlanetsDescriptor.sol";


library DataDescriptor_1 {

  function getSVG(uint tokenId_, PlanetsDescriptor.PlanetMetadata memory planetMetadata_) public pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
    getLogo(),
    getPlanetIDField(tokenId_),
    getNameField(planetMetadata_.name),
    getSizeField(planetMetadata_.size)
    )
    );
  }

  function getLogo() private pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
        '<path class="fill_white" d="M499.15,52.62c-1.25-0.38-2.61-0.58-4.02-0.63c-1.22-0.77-2.66-1.22-4.21-1.22c-2.8,0-5.25,1.45-6.66,3.64',
        'c-1.4,0.72-2.67,1.58-3.72,2.57c-4.44,4.17-3.32,8.98,2.52,10.74c5.83,1.76,14.16-0.19,18.61-4.36',
        'C506.11,59.2,504.98,54.39,499.15,52.62z M498.36,62.37c-0.25,0.24-0.53,0.46-0.82,0.68c0.82-1.25,1.3-2.74,1.3-4.35',
        'c0-1.06-0.21-2.08-0.59-3C500.78,57.22,500.94,59.95,498.36,62.37z M483.01,58.91c0.08,2.95,1.76,5.49,4.21,6.79',
        'c-0.57-0.07-1.12-0.18-1.64-0.34C482,64.28,481.01,61.53,483.01,58.91z M484.11,66.74c-5.07-1.53-6.05-5.71-2.19-9.34',
        'c0.45-0.42,0.94-0.81,1.47-1.17c-0.03,0.09-0.06,0.18-0.08,0.27c-0.42,0.3-0.82,0.62-1.18,0.96c-3.77,3.54-2.82,7.63,2.14,9.13',
        'c2.74,0.83,6.13,0.69,9.26-0.2c2.52-0.72,4.87-1.92,6.55-3.51c3.77-3.54,2.82-7.63-2.14-9.13c-0.34-0.1-0.69-0.19-1.05-0.26',
        'c-0.06-0.07-0.13-0.14-0.19-0.21c0.48,0.09,0.95,0.19,1.4,0.32c5.07,1.53,6.05,5.71,2.19,9.34c-1.9,1.78-4.62,3.1-7.5,3.8',
        'C489.82,67.46,486.69,67.51,484.11,66.74z"/> ',
        '<circle class="circle_logo" cx="491.1" cy="59.58" r="18.29"/> '


    )
    );
  }

  function getPlanetIDField(uint tokenId_) private pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
        '<path class="fill_field" d="M389.25,45.63c0.63,0,1.16,0.22,1.6,0.67c0.44,0.44,0.67,0.97,0.67,1.59c0,0.62-0.22,1.16-0.67,1.6',
        'c-0.44,0.44-0.97,0.67-1.6,0.67h-9.38v3.23h-1.29v-4.53h10.67c0.27,0,0.5-0.09,0.69-0.28c0.19-0.19,0.28-0.42,0.28-0.69',
        'c0-0.26-0.09-0.49-0.28-0.68c-0.19-0.19-0.42-0.28-0.69-0.28h-10.67v-1.3H389.25z',
        'M394.44,45.63v6.47h11.64v1.29h-12.93v-7.76H394.44z',
        'M415.69,45.63l6.83,7.76h-1.72l-5.68-6.46l-5.68,6.46h-1.72l6.83-7.76H415.69z',
        'M437.08,45.63v7.76h-1.81l-9.83-6.55v6.55h-1.29v-7.76h1.81l9.83,6.55v-6.55H437.08z',
        'M451.65,45.63v1.3h-12.93v-1.3H451.65z M451.65,48.86v1.3H440v1.94h11.64v1.29h-12.93v-4.53H451.65z',
        'M466.21,45.63v1.3h-5.82v6.46h-1.3v-6.46h-5.82v-1.3H466.21z"/> ',
        '<text transform="matrix(1 0 0 1 410.87,80)" class="text_metadata">',SVGUtils.uint2str(tokenId_, 0),'</text> '
      )
    );
  }

  function getNameField(string memory name_) private pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
        '<path class="fill_field" d="M70.75,505.83v7.76h-1.81l-9.83-6.55v6.55h-1.29v-7.76h1.81l9.83,6.55v-6.55H70.75z',
        'M80.36,505.83l6.83,7.76h-1.72l-5.68-6.46l-5.68,6.46h-1.72l6.83-7.76H80.36z',
        'M102.39,505.83v7.76h-1.3v-5.99l-5.49,4.92l-5.5-4.92v5.99h-1.29v-7.76h1.25l5.54,4.95l5.54-4.95H102.39z',
        'M116.95,505.83v1.3h-12.94v-1.3H116.95z M116.95,509.06v1.3h-11.64v1.94h11.64v1.29h-12.94v-4.53H116.95z"/> ',
        '<text transform="matrix(1 0 0 1 56.997 552.985)" class="text_name">', name_,'</text> ',
        '<rect x="57.69" y="572.68" class="fill_field" width="451.15" height="1.77"/> '
    )
    );
  }

  function getSizeField(uint size_) private pure returns (string memory svg) {

    svg = string(
      abi.encodePacked(
      '<path class="fill_field" d="M58.66,630.26v-1.67h13.38c0.35,0,0.64-0.12,0.89-0.37c0.24-0.24,0.36-0.54,0.36-0.88',
      'c0-0.35-0.12-0.64-0.36-0.89c-0.25-0.24-0.55-0.37-0.89-0.37H61.16c-0.8,0-1.49-0.29-2.07-0.86c-0.57-0.57-0.86-1.26-0.86-2.07',
      'c0-0.8,0.29-1.49,0.86-2.06c0.58-0.58,1.27-0.86,2.07-0.86h13.39v1.68H61.16c-0.35,0-0.64,0.12-0.88,0.37',
      'c-0.25,0.25-0.37,0.54-0.37,0.88c0,0.35,0.12,0.64,0.37,0.89c0.24,0.24,0.54,0.37,0.88,0.37h10.88c0.81,0,1.5,0.29,2.07,0.86',
      'c0.57,0.57,0.86,1.26,0.86,2.07c0,0.8-0.29,1.49-0.86,2.07c-0.57,0.57-1.26,0.86-2.07,0.86H58.66z',
      'M77.08,620.22h1.67v10.04h-1.67V620.22z',
      'M97.59,620.22v1.33l-12.67,7.04h12.67v1.67H80.86v-1.33l12.67-7.04H80.86v-1.68H97.59z',
      'M116.43,620.22v1.68H99.7v-1.68H116.43z M116.43,624.4v1.68h-15.07v2.51h15.07v1.67H99.7v-5.86H116.43z"/> ',
      '<text transform="matrix(1 0 0 1 58.66 673.9238)" class="text_metadata">', SVGUtils.uint2str(size_, 0),' mq</text> '

    )
    );
  }

}
