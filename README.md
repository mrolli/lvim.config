# Personal LunarVim configuration

This configuration repo for my personal Neovim configuration is what I currently use on my macOS-based desktop.
It is based on [LunarVim](https://www.lunarvim.org).

## Known Issues

tbd

## How to use

1. Install Neovim using the installation method of your choice, for me that's Homebrew.
1. I like the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)
   and LunarVim honors that and knows where to find things. Put the following in your .bash_profile:
    ```
    export $XDG_DATA_HOME=/Users/<username>/.local/share
    export $XDG_CONFIG_HOM=/Users/<username>/.config
    export $XDG_CACHE_HOME=/Users/<username>/.cache
    export $XDG_STATE_HOME=/Users/<username>/.local/state
    ```
1. Install LunarVim according their [installation instructions](https://www.lunarvim.org/01-installing.html#installation)
1. Checkout this repo to $XDG_CONFIG_HOME/lvim
1. Have fun

## Included Plugins

tbd

