// SPDX-License-Identifier: ISC

pragma solidity ^0.8.7;
pragma abicoder v2;

library PlanetBaseDescriptor {

    function getSVG(string memory colorGlow_) public pure returns (string memory svg) {

        svg = string(
            abi.encodePacked(
                '<circle class="fill_base" cx="282.51" cy="282.52" r="106.3"/> ',
                '<g id="glow"> ',
                '<radialGradient id="LG_GLOW" cx="550.4155" cy="390.2722" r="112.2293" ',
                'gradientTransform="matrix(0.2335 1.0265 -1.0346 0.2353 557.7655 -374.3157)" gradientUnits="userSpaceOnUse"> ',
                '<stop  offset="0.6916" style="stop-color:#',colorGlow_,'"/> ',
                '<stop  offset="1" style="stop-color:#',colorGlow_,';stop-opacity:0"/> ',
                '</radialGradient> ',
                '<path style="opacity:0.8;fill:url(#LG_GLOW);" d="M308.71,397.72',
                'c-64.12,14.58-127.84-25.17-142.31-88.8c-14.47-63.63,25.77-127.03,89.9-141.61c64.13-14.59,127.84,25.17,142.32,88.8',
                'C413.08,319.74,372.84,383.14,308.71,397.72z"/> ',
                '</g> ',
                '<g id="light"> ',
                '<radialGradient id="RD_LIGHT" cx="527.4973" cy="615.1716" r="138.7598" ',
                'gradientTransform="matrix(0.5786 -0.811 0.8107 0.5788 -587.1754 332.4611)" gradientUnits="userSpaceOnUse"> ',
                '<stop  offset="0" style="stop-color:#F4F4F4"/> ',
                '<stop  offset="0.1357" style="stop-color:#EEEEEE"/> ',
                '<stop  offset="0.1591" style="stop-color:#EBEBEB;stop-opacity:0.9802"/> ',
                '<stop  offset="0.2536" style="stop-color:#E9E9E9;stop-opacity:0.9"/> ',
                '<stop  offset="0.2757" style="stop-color:#E7E7E7;stop-opacity:0.8812"/> ',
                '<stop  offset="0.3712" style="stop-color:#E4E4E4;stop-opacity:0.8"/> ',
                '<stop  offset="0.5802" style="stop-color:#C4C4C4;stop-opacity:0.5"/> ',
                '<stop  offset="0.6792" style="stop-color:#B7B7B6;stop-opacity:0.3536"/> ',
                '<stop  offset="0.783" style="stop-color:#AEAEAD;stop-opacity:0.2"/> ',
                '<stop  offset="0.8566" style="stop-color:#838382;stop-opacity:0.1321"/> ',
                '<stop  offset="0.9527" style="stop-color:#50504F;stop-opacity:0.0436"/> ',
                '<stop  offset="1" style="stop-color:#3C3C3B;stop-opacity:0"/> ',
                '</radialGradient> ',
                '<path id="light-path" style="opacity:0.6;fill:url(#RD_LIGHT);" d="',
                'M251.1,180.98c-22.4,6.93-41.43,20.68-55.04,39.75c-19.44,27.26-24.92,61.22-15.03,93.18c8.38,27.12,26.83,49.34,51.93,62.59',
                'c25.1,13.25,53.85,15.91,80.96,7.52c22.4-6.93,41.43-20.68,55.04-39.76c19.44-27.25,24.92-61.21,15.03-93.17',
                'C366.68,195.1,307.07,163.66,251.1,180.98z"/> ',
                '</g> '

        )
        );
    }
}
