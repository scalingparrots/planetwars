// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;
import 'base64-sol/base64.sol';
import "@openzeppelin/contracts/access/AccessControl.sol";
import "./PlanetsDescriptor.sol";
import "./utils/SVGUtils.sol";
import "./interface/ISVGDescriptor.sol";
import "./layersSVG/PictureFrame/PictureFrameDescriptor.sol";
import "./layersSVG/Data/DataDescriptor.sol";
import "./layersSVG/Sky/SkyDescriptor.sol";
import "./layersSVG/PlanetBase/PlanetBaseDescriptor.sol";
import "./layersSVG/PlanetSurface/PlanetSurfaceDescriptor.sol";
import "./layersSVG/PlanetRing/PlanetRingDescriptor.sol";
import "./layersSVG/PlanetColor.sol";

contract SVGDescriptor is AccessControl, ISVGDescriptor {
    bytes32 public constant PLANETS_DESCRIPTOR_ROLE = keccak256("PLANETS_DESCRIPTOR_ROLE");

    struct SVGDescriptionParams {
        uint256 revealBlock;
    }

  /**
  * @dev See {IERC721Metadata-tokenURI}.
  string(
      abi.encodePacked(
        'data:application/json;base64,',
        Base64.encode(
          bytes(
            abi.encodePacked(
              '{"name":"',
              name,
              '", "description":"',
              descriptionPartOne,
              descriptionPartTwo,
              '", "image": "',
              'data:image/svg+xml;base64,',
              image,
              '"}'
            )
          )
        )
      )
    );
  */

    constructor(){
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function constructTokenURI(uint256 tokenId_, bytes32 blockhashInit_, PlanetsDescriptor.PlanetMetadata memory planetMetadata_) public view override onlyRole(PLANETS_DESCRIPTOR_ROLE) returns (string memory) {

    string memory habitability = string(
      abi.encodePacked(
        '{"trait_type":"Habitability","value":', 
        SVGUtils.uint2str(planetMetadata_.habitability, 0),
        '}'
        )
      );
    
    string memory temperature = string(
      abi.encodePacked(
        '{"trait_type":"Temperature","value":', 
        SVGUtils.uint2str(planetMetadata_.temperature, 0),
        '}'
        )
      );

    string memory size = string(
      abi.encodePacked(
        '{"trait_type":"Size","value":', 
        SVGUtils.uint2str(planetMetadata_.size, 0),
        '}'
        )
      );

    string memory satellites = string(
      abi.encodePacked(
        '{"trait_type":"Satellites","value":', 
        SVGUtils.uint2str(planetMetadata_.nSatellite, 0),
        '}'
        )
      );

        (string memory image1, uint offsetRandom, PlanetColor.PlanetColorPalette memory planetColorPalette) = generateSVGImage1(tokenId_, blockhashInit_, planetMetadata_);

        string memory image2 = generateSVGImage2(tokenId_, blockhashInit_, planetMetadata_, offsetRandom, planetColorPalette);

    return string(abi.encodePacked(
        'data:application/json;base64,',
        Base64.encode(
            bytes(
              abi.encodePacked(
                '{"name":"', planetMetadata_.name,
                '", "description":"',
                'Planet Wars is a Play-to-earn space-warfare game based on Binance Smart Chain that includes NFT, DeFi and gamification concepts.',
                '", "attributes":[',
                habitability,
                ',',
                temperature,
                ',',
                size,
                ',',
                satellites,
                '], "image":"',
                'data:image/svg+xml;base64,',
                Base64.encode(bytes(abi.encodePacked(image1, image2))),
                '"}'
              )
            )
          )
      ));
  }

    function constructTokenURIWithoutCard(uint256 tokenId_, bytes32 blockhashInit_, PlanetsDescriptor.PlanetMetadata memory planetMetadata_) public view override onlyRole(PLANETS_DESCRIPTOR_ROLE) returns (string memory) {

    string memory habitability = string(
      abi.encodePacked(
        '{"trait_type":"Habitability","value":',
        SVGUtils.uint2str(planetMetadata_.habitability, 0),
        '}'
        )
      );

    string memory temperature = string(
      abi.encodePacked(
        '{"trait_type":"Temperature","value":',
        SVGUtils.uint2str(planetMetadata_.temperature, 0),
        '}'
        )
      );

    string memory size = string(
      abi.encodePacked(
        '{"trait_type":"Size","value":',
        SVGUtils.uint2str(planetMetadata_.size, 0),
        '}'
        )
      );

    string memory satellites = string(
      abi.encodePacked(
        '{"trait_type":"Satellites","value":',
        SVGUtils.uint2str(planetMetadata_.nSatellite, 0),
        '}'
        )
      );

        (string memory image1, uint offsetRandom, PlanetColor.PlanetColorPalette memory planetColorPalette) = generateSVGWithoutCardImage1(tokenId_, blockhashInit_, planetMetadata_);

        string memory image2 = generateSVGWithoutCardImage2(tokenId_, blockhashInit_, planetMetadata_, offsetRandom, planetColorPalette);

    return string(abi.encodePacked(
        'data:application/json;base64,',
        Base64.encode(
            bytes(
              abi.encodePacked(
                '{"name":"', planetMetadata_.name,
                '", "description":"',
                'Planet Wars is a Play-to-earn space-warfare game based on Binance Smart Chain that includes NFT, DeFi and gamification concepts.',
                '", "attributes":[',
                habitability,
                ',',
                temperature,
                ',',
                size,
                ',',
                satellites,
                '], "image":"',
                'data:image/svg+xml;base64,',
                Base64.encode(bytes(abi.encodePacked(image1, image2))),
                '"}'
              )
            )
          )
      ));
  }

    function generateSVGImage1(uint256 tokenId_, bytes32 blockhashInit_, PlanetsDescriptor.PlanetMetadata memory planetMetadata_) private view returns (string memory svg, uint offsetRandom, PlanetColor.PlanetColorPalette memory planetColorPalette) {
        uint offsetRandomInit = 1124;

        (string memory svgSky, uint newOffsetRandom) = SkyDescriptor.getSVG(tokenId_, blockhashInit_, offsetRandomInit, planetMetadata_.position);
        (PlanetColor.PlanetColorPalette memory planetColorPalette_1, uint newOffsetRandom2) = PlanetColor.getPlanetColor(planetMetadata_.temperature, blockhashInit_, newOffsetRandom);

        svg = string(abi.encodePacked(
            '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" ',
            'y="0px" viewBox="0 0 566.93 935.43" xml:space="preserve"> ',
            '<style type="text/css"> ',
            '.fill_base{fill:#',planetColorPalette_1.colorBase,';} ',
            '.fill_surface{fill:#',planetColorPalette_1.colorSurface,';} ',
            '.fill_ring{fill:#',planetColorPalette_1.colorRing,';} ',
            '.fill_white{fill:#FFFFFF;} ',
            '.fill_field{fill:#00FFFF;} ',
            '.fill_white_star{fill:#FFFFFF;} ',
            '.fill_red_star{fill:#E0B1B1;} ',
            '.fill_blue_star{fill:#BFDCF4;} ',
            '.fill_purple_star{fill:#8E97CC;} ',
            '.text_name{fill:#FFFFFF; font-size:45.7187px;} ',
            '.text_metadata{fill:#FFFFFF; font-size:25.8782px;} ',
            '.circle_logo{fill:none;stroke:#00FFFF;stroke-miterlimit:10;} ',
            '.style_pic_frame{fill:none;stroke:#FFFFFF;stroke-width:0.5;stroke-miterlimit:10;} ',
            '.clip_path{clip-path:url(#clipPath_animation_planet);} ',
            '</style> ',
            svgSky,
            PlanetBaseDescriptor.getSVG(planetColorPalette_1.colorBase),
            PictureFrameDescriptor.getSVG()
              )
            );

            offsetRandom = newOffsetRandom2;
            planetColorPalette = planetColorPalette_1;
    }

    function generateSVGImage2(uint256 tokenId_, bytes32 blockhashInit_, PlanetsDescriptor.PlanetMetadata memory planetMetadata_, uint offsetRandom_, PlanetColor.PlanetColorPalette memory planetColorPalette_) private pure returns (string memory svg) {
        (string memory svgSurface, uint newOffsetRandom) = PlanetSurfaceDescriptor.getSVG(tokenId_, blockhashInit_, planetMetadata_.habitability, offsetRandom_);

        svg = string(abi.encodePacked(
            DataDescriptor.getSVG(tokenId_, planetMetadata_),
            svgSurface,
            PlanetRingDescriptor.getSVG(planetMetadata_.nSatellite, planetColorPalette_),
            '</svg> '
          )
        );
    }

    function generateSVGWithoutCardImage1(uint256 tokenId_, bytes32 blockhashInit_, PlanetsDescriptor.PlanetMetadata memory planetMetadata_) private pure returns (string memory svg, uint offsetRandom, PlanetColor.PlanetColorPalette memory planetColorPalette) {
        uint offsetRandomInit = 1124;

        (string memory svgSky, uint newOffsetRandom) = SkyDescriptor.getSVG(tokenId_, blockhashInit_, offsetRandomInit, planetMetadata_.position);
        (PlanetColor.PlanetColorPalette memory planetColorPalette_1, uint newOffsetRandom2) = PlanetColor.getPlanetColor(planetMetadata_.temperature, blockhashInit_, newOffsetRandom);

        svg = string(abi.encodePacked(
                '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" ',
                'y="0px" viewBox="0 0 566.93 935.43" xml:space="preserve"> ',
                '<style type="text/css"> ',
                '.fill_base{fill:#',planetColorPalette_1.colorBase,';} ',
                '.fill_surface{fill:#',planetColorPalette_1.colorSurface,';} ',
                '.fill_ring{fill:#',planetColorPalette_1.colorRing,';} ',
                '.fill_white{fill:#FFFFFF;} ',
                '.fill_field{fill:#00FFFF;} ',
                '.fill_white_star{fill:#FFFFFF;} ',
                '.fill_red_star{fill:#E0B1B1;} ',
                '.fill_blue_star{fill:#BFDCF4;} ',
                '.fill_purple_star{fill:#8E97CC;} ',
                '.text_name{fill:#FFFFFF; font-size:45.7187px;} ',
                '.text_metadata{fill:#FFFFFF; font-size:25.8782px;} ',
                '.circle_logo{fill:none;stroke:#00FFFF;stroke-miterlimit:10;} ',
                '.style_pic_frame{fill:none;stroke:#FFFFFF;stroke-width:0.5;stroke-miterlimit:10;} ',
                '.clip_path{clip-path:url(#clipPath_animation_planet);} ',
                '</style> ',
                svgSky,
                PlanetBaseDescriptor.getSVG(planetColorPalette_1.colorBase)
            )
        );

        offsetRandom = newOffsetRandom2;
        planetColorPalette = planetColorPalette_1;
    }

    function generateSVGWithoutCardImage2(uint256 tokenId_, bytes32 blockhashInit_, PlanetsDescriptor.PlanetMetadata memory planetMetadata_, uint offsetRandom_, PlanetColor.PlanetColorPalette memory planetColorPalette_) private pure returns (string memory svg) {
        (string memory svgSurface, uint newOffsetRandom) = PlanetSurfaceDescriptor.getSVG(tokenId_, blockhashInit_, planetMetadata_.habitability, offsetRandom_);

        svg = string(abi.encodePacked(
                svgSurface,
                PlanetRingDescriptor.getSVG(planetMetadata_.nSatellite, planetColorPalette_),
                '</svg> '
            )
        );
    }

}
