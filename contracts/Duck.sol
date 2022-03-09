// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

library Duck {
    /**
     * Make SVG
     */
    function make(string memory background, string memory foreground) public pure returns(string memory) {
        return string(
            abi.encodePacked(
                '<svg xmlns="http://www.w3.org/2000/svg" width="4.86in" height="4.86in" viewBox="0 0 350 350"><g id="Background"><rect width="350" height="350" style="fill: ',
                background,
                '"/></g><g id="Base_Color" data-name="Base Color"><polyline points="281.59 153.78 281.59 121.81 249.78 121.81 249.78 100.5 239.13 100.5 239.13 89.84 228.47 89.84 228.47 79.18 185.85 79.18 185.85 89.84 175.19 89.84 175.19 100.5 164.53 100.5 164.53 153.78 175.19 153.78 175.19 164.24 153.93 164.24 153.93 174.89 121.96 174.89 121.96 185.55 100.65 185.55 100.65 174.89 90 174.89 90 164.48 79.34 164.48 79.34 175.13 68.68 175.13 68.68 239.02 79.34 239.02 79.34 249.48 90 249.48 90 260.13 100.64 260.13 100.64 270.78 111.29 270.78 111.29 281.62 122.09 281.62 122.09 302.97 111.43 302.99 111.43 324.23 207.1 324.23 207.1 302.99 196.44 302.99 196.44 292.31 185.78 292.31 185.78 281.62 206.97 281.62 206.97 270.96 217.84 270.96 217.84 260.33 228.5 260.33 228.5 249.67 239.15 249.67 239.15 239.02 249.81 239.02 249.81 185.74 239.15 185.74 239.15 175.08 228.5 175.08 228.5 164.44 217.84 164.44 217.84 153.78 281.59 153.78" style="fill: ',
                foreground,
                '"/></g><g id="Feet_Beak" data-name="Feet &amp; Beak"><polygon points="174.99 302.99 174.99 281.64 154.07 281.64 154.07 302.99 143.41 302.99 143.41 281.64 132.75 281.64 132.75 302.99 122.09 302.99 122.09 313.65 154.07 313.65 164.34 313.65 196.31 313.65 196.31 302.99 174.99 302.99" style="fill: #fbb040"/><polygon points="174.99 302.99 174.99 281.64 154.07 281.64 154.07 302.99 143.41 302.99 143.41 281.64 132.75 281.64 132.75 302.99 122.09 302.99 122.09 313.65 154.07 313.65 164.34 313.65 196.31 313.65 196.31 302.99 174.99 302.99" style="fill: #fbb040"/><polygon points="260.44 132.46 249.78 132.46 249.78 121.81 239.13 121.81 239.13 132.46 228.47 132.46 228.47 143.12 239.13 143.12 249.78 143.12 260.44 143.12 271.1 143.12 271.1 132.46 260.44 132.46" style="fill: #fbb040"/></g><g id="Details"><g><rect x="154.07" y="281.62" width="10.66" height="21.35" transform="translate(318.8 584.6) rotate(-180)" style="opacity: 0.1"/><rect x="132.75" y="281.62" width="10.66" height="21.35" transform="translate(276.16 584.6) rotate(-180)" style="opacity: 0.1"/><rect x="143.41" y="302.99" width="10.66" height="10.66" transform="translate(297.48 616.63) rotate(-180)" style="opacity: 0.1"/><rect x="122.09" y="302.99" width="10.66" height="10.66" transform="translate(254.84 616.63) rotate(-180)" style="opacity: 0.1"/></g><polygon points="228.5 217.7 228.5 228.33 228.5 228.35 217.84 228.35 217.84 238.98 217.84 239 217.84 239.03 207.19 239.03 207.19 249.66 207.19 249.69 196.53 249.69 196.53 260.31 185.87 260.31 175.22 260.31 164.56 260.31 153.91 260.31 143.25 260.31 132.59 260.31 121.94 260.31 121.94 249.69 111.29 249.69 111.29 249.5 111.29 249.47 111.29 238.84 100.65 238.84 100.65 238.81 100.64 238.81 100.64 228.17 90 228.17 90 217.7 79.34 217.7 79.34 228.17 79.34 228.36 79.34 238.83 89.98 238.83 90 238.83 90 249.47 100.64 249.47 100.64 249.5 100.64 260.13 111.28 260.13 111.28 260.31 111.28 260.34 111.28 270.97 121.94 270.97 132.59 270.97 143.25 270.97 153.91 270.97 164.56 270.97 175.22 270.97 185.87 270.97 196.53 270.97 207.19 270.97 207.19 260.34 207.19 260.31 217.84 260.31 217.84 249.69 217.84 249.66 217.84 249.63 228.5 249.63 228.5 239 228.5 238.99 239.15 238.99 239.15 228.36 239.15 228.33 239.15 217.7 228.5 217.7" style="opacity: 0.1"/><g style="opacity: 0.4"><polygon points="153.91 228.36 143.25 228.36 143.25 239.02 153.91 239.02 164.56 239.02 175.22 239.02 175.22 228.36 164.56 228.36 153.91 228.36" style="fill: #fff"/><rect x="175.22" y="217.7" width="10.66" height="10.66" style="fill: #fff"/><rect x="185.87" y="207.05" width="10.66" height="10.66" style="fill: #fff"/><rect x="196.53" y="196.39" width="10.66" height="10.66" style="fill: #fff"/><polygon points="228.47 100.5 228.47 89.84 217.81 89.84 207.16 89.84 196.5 89.84 196.5 100.5 207.16 100.5 217.81 100.5 217.81 111.15 228.47 111.15 228.47 121.81 239.13 121.81 239.13 111.15 239.13 100.5 228.47 100.5" style="fill: #fff"/><polygon points="153.91 196.39 164.56 196.39 164.56 185.74 175.22 185.74 185.87 185.74 196.53 185.74 196.53 175.08 185.87 175.08 175.22 175.08 164.56 175.08 153.91 175.08 153.91 185.74 143.25 185.74 132.59 185.74 121.94 185.74 121.94 196.39 111.29 196.39 111.28 196.39 100.64 196.39 100.64 207.05 111.28 207.05 111.29 207.05 121.94 207.05 132.59 207.05 132.59 196.39 143.25 196.39 153.91 196.39" style="fill: #fff"/></g><g><rect x="175.19" y="89.84" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="228.47" y="89.84" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="175.22" y="228.36" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="132.59" y="228.36" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="185.87" y="217.7" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="121.94" y="217.7" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="196.53" y="207.05" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="111.28" y="207.05" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="217.82" y="164.44" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="228.5" y="175.08" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="228.5" y="239.02" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="217.84" y="249.67" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="207.19" y="260.33" width="10.66" height="10.66" style="fill: #1b1b1c"/><polygon points="90 249.48 90 260.13 100.64 260.13 100.64 270.78 111.29 270.78 111.29 260.13 100.65 260.13 100.65 249.47 90 249.47 90 238.83 79.34 238.83 79.34 249.48 90 249.48" style="fill: #1b1b1c"/><polygon points="90 174.89 90 164.48 79.34 164.48 79.34 174.89 68.68 174.89 68.68 238.83 79.34 238.83 79.34 175.13 90 175.13 90 185.55 100.65 185.55 100.65 174.89 90 174.89" style="fill: #1b1b1c"/><polygon points="153.93 164.24 153.93 174.89 175.19 174.89 185.85 174.89 185.87 174.89 185.87 164.24 185.85 164.24 185.85 153.78 175.19 153.78 175.19 164.24 153.93 164.24" style="fill: #1b1b1c"/><rect x="196.5" y="132.46" width="10.66" height="10.66" style="fill: #1b1b1c"/><rect x="100.65" y="185.55" width="21.31" height="10.66" style="fill: #1b1b1c"/><rect x="121.96" y="174.89" width="31.97" height="10.66" style="fill: #1b1b1c"/><rect x="164.53" y="100.5" width="10.66" height="53.28" style="fill: #1b1b1c"/><rect x="185.85" y="79.18" width="42.62" height="10.66" style="fill: #1b1b1c"/><rect x="207.19" y="100.5" width="10.66" height="21.31" style="fill: #1b1b1c"/><rect x="239.13" y="100.5" width="10.66" height="21.31" style="fill: #1b1b1c"/><polygon points="270.93 121.81 249.78 121.81 249.78 132.46 270.93 132.46 270.93 143.12 217.84 143.12 207.19 143.12 207.19 153.78 207.19 164.4 217.84 164.4 217.84 153.78 270.93 153.78 281.59 153.78 281.59 143.12 281.59 132.46 281.59 121.81 270.93 121.81" style="fill: #1b1b1c"/><rect x="239.15" y="185.74" width="10.66" height="53.28" style="fill: #1b1b1c"/><rect x="207.19" y="185.74" width="10.66" height="21.31" style="fill: #1b1b1c"/><rect x="143.25" y="239.02" width="31.97" height="10.66" style="fill: #1b1b1c"/><polygon points="196.44 313.56 122.09 313.56 122.09 302.99 111.43 302.99 111.43 313.56 111.43 324.23 122.09 324.23 196.44 324.23 207.1 324.23 207.1 313.56 207.1 302.99 196.44 302.99 196.44 313.56" style="fill: #1b1b1c"/><polygon points="175.12 270.96 154.07 270.96 143.41 270.96 132.75 270.96 122.09 270.96 111.29 270.96 111.29 281.62 122.09 281.62 122.09 302.97 132.75 302.97 132.75 281.62 143.41 281.62 143.41 302.97 154.07 302.97 154.07 281.62 175.12 281.62 175.12 302.97 175.12 302.97 185.78 302.97 196.44 302.97 196.44 292.31 185.78 292.31 185.78 281.62 206.97 281.62 206.97 270.96 185.78 270.96 175.12 270.96" style="fill: #1b1b1c"/></g></g></svg>'
            )
        );
    }
}
