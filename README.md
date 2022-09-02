# Personal LunarVim configuration

This configuration repo for my personal Neovim configuration is what I currently
use on my macOS-based desktop.  
It is based on the [LunarVim](https://www.lunarvim.org) base configuration flavor for Neovim.

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

Besides the [LunarVim core plugins](https://www.lunarvim.org/plugins/01-core-plugins-list.html)
my configuration features the following plugins, which I find very useful. The
list may be outdated. See the [plugins.lua](https://github.com/mrolli/lvim.config/blob/main/lua/user/plugins.lua)
for all configured plugins.

* tpope - TPOPE! ;-)
    * [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive): Never again leave Neovim or switch to another shell to do git stuff
    * [tpope/vim-surround](https://github.com/tpope/vim-surround): Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
    * [tpope/vim-repeat](https://github.com/tpope/vim-repeat): Helper plugin that is used by other plugins to make their actions repeatable using the dot key
* Filetye related plugins
    * [iamcco/markdown-preview.nvim]
    * [rodjek/vim-puppet](https://github.com/rodjek/vim-puppet): Make Neovikm aware of puppet code (highlighting, indenting, ...)
* Treesitter related plugins
    * [p00f/nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow): Rainbow parenthesis to easier match related parenthesis
    * [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects): Support for additional coding related textobjects like classes and functions.
* Visual Helpers
    * [jeffkreeftmeijer/vim-numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle): Automatically switch between absolute and relative line numbers when switching active panes
    * [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim): Visually improve recognition of line indentation and whitespace/tabs
    * [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim) and [folke/twilight.nvim](https://github.com/folke/twilight.nvim): Distraction-free coding in Neovim
    * [folke/trouble.nvim](https://github.com/folke/trouble.nvim): A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing.
* Other Plugins
    * [editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim): Honor .editorconfig files in projects and configure Neovim accordingly
    * [godlygeek/tabular](https://github.com/godlygeek/tabular): Nice little plugin that helps aligning stuff based an regex, i.e. pretty aligning hashes etc.
    * [vim-scripts/lorempipsum](https://github.com/vim-scripts/loremipsum): Automatically create lorem ipsum filler texts with an ease
* Themes (although sold to gruvbox)
    * [sainnhe/gruvbox-material](https://github.com/sainnhe/gruvbox-material)
    * [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
    * [catppuccin/nvim](https://github.com/catppuccin/nvim)
    * [rose-pine/neovim](https://github.com/rose-pine/neovim)
