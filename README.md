<a href="https://github.com/haxpor/donate"><img src="https://img.shields.io/badge/$-donate-ff69b4.svg?maxAge=2592000&amp;style=flat" alt="donate"></a>

# sdl2-manpage
Man-pages generated for SDL2. It covers APIs as listed [here](https://github.com/haxpor/sdl2-manpage/blob/master/COVER.md).

# Installation

## Manually from source

* Clone this repository to somewhere on your computer with `git clone https://github.com/haxpor/sdl2-manpage.git`;
* Execute `sudo ./install.sh` to install to your system.
* (optional) `sudo mandb` - likely only first time, or when there's no new pages. This will update all existing indexes of manual pages.

## Via published packages

### Debian/Ubuntu

* `sudo add-apt-repository ppa:haxpor/combined`
* `sudo apt install sdl2-manpage`

### Arch

(WIP)

# Usage

After installation, you can get man pages for SDL functions. For example, `man SDL_Init`.
Additionally, there are two special lookup tables that you can use for reference:

* `man SDLScancodeLookupTable` - scancode lookup table;
* `man SDLKeycodeLookupTable` - keycode lookup table

Note that the page names are case-**sensitive**.

# List all man pages

To list all man pages related to (installed) SDL, execute the following

```
apropos -r '^SDL_'
```

# Uninstallation and Upgrading

To uninstall the man pages, you can simply remove the original cloned repository's directory; the created sym-links will die.
As sym-links are used and no actual files are copied into the man-page directory, upgrading is as easy as pulling the latest version of the repository, then execute `install.sh` script again.

# Customize Man page's Colors

By default, your pager should be `less` on Linux.

In case, your man page doesn't have any color, the following is good customization to be put into your `~/.bash_aliases` or `~/.bashrc`. Thanks to [this](https://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/) for handy tips!.

```
export PAGER=less
export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\e[0m'           # end mode
export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\e[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'           # end underline
export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline
```

# License

This project is licensed under the [MIT License](https://github.com/haxpor/sdl2-manpage/blob/master/LICENSE)

Wasin Thonkaew

