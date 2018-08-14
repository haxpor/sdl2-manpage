# sdl2-manpage
Man-pages generated for SDL2

# Installation

Execute `./install.sh` to install SDL2's man pages to your system.

> It does its work by copying its own copy to your user's home directory at `~/.sdl2-manpage/` then making symlinks to all files with target at `/usr/local/share/man/man3/`.

# Note on Upgrading or Removing

Just remove this repository, those man-page files at `/usr/local/share/man/man3/` will be dead link, and you cannot man such relevant section anymore.

This project decides to do just this as multiple version of man-page for a library seems to be tedious to manage on users' system.
The same man-page file can potential link to different version of library if you upgrade, or such relevant section is removed in older version of library.
So to be safe, we just deal with out own copy not man-page files on the system.

# License

[MIT](https://github.com/haxpor/sdl2-manpage/blob/master/LICENSE), Wasin Thonkaew
