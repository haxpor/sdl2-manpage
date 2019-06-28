# sdl2-manpage
Man-pages generated for SDL2. It covers APIs as listed [here](https://github.com/haxpor/sdl2-manpage/blob/master/COVER.md).

# Installation

* Clone this repository to somewhere on your computer with `git clone https://github.com/haxpor/sdl2-manpage.git`;
* Execute `sudo ./install.sh` to install to your system.

# Usage

After installation, you can get man pages for SDL functions. For example, `man SDL_Init`.
Additionally, there are two special lookup tables that you can use for reference:

* `man SDLScancodeLookupTable` - scancode lookup table;
* `man SDLKeycodeLookupTable` - keycode lookup table

Note that the page names are case-**sensitive**.

# Uninstallation and Upgrading

To uninstall the man pages, you can simply remove the original repository clone directory; the created sym-links will die.
As sym-links are used and no actual files are copied into the man-page directory, upgrading is as easy as pulling the latest version of the repository.

# License

This project is licensed under the [MIT License](https://github.com/haxpor/sdl2-manpage/blob/master/LICENSE)

Wasin Thonkaew

