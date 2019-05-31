# sdl2-manpage
Man-pages generated for SDL2. It covers APIs as listed [here](https://github.com/haxpor/sdl2-manpage/blob/master/COVER.md).

# Installation

* Clone this repository to somewhere on your computer with `git clone https://github.com/haxpor/sdl2-manpage.git`
* Execute `sudo ./install.sh` to install to your system.

# Usage

After installation, you can do

```
man SDL_Init
```

or for other functions/structures. Anyway there are 2 special lookup tables you can query with the followings

* `man SDLScancodeLookupTable` - for scancode lookup table
* `man SDLKeycodeLookupTable` - for keycode lookup table

Note that it's case **sensitive**.

# Note on Upgrading or Removing

Just remove this repository, those man-page files at `/usr/local/share/man/man3/` will become dead links, and you cannot man such relevant section anymore. It's safe.

This project decides to do just this as multiple version of man-page for a library seems to be tedious to manage on users' system.
The same man-page file can potential link to different version of library if you upgrade, or such relevant section is removed in older version of library.

So to be safe, we just do sym-link to actual files on this cloned repository on your system.

# License

[MIT](https://github.com/haxpor/sdl2-manpage/blob/master/LICENSE), Wasin Thonkaew
