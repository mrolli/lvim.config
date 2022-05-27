--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

require('user.neovim')

-- Colorscheme setttings
-- ==============================
require('user.theme').gruvbox_material()
-- require('user.theme').tokyonight_storm()
-- require('user.theme').rose_pine_moon()
-- require('user.theme').catpuccin()


-- Customization
-- ==============================
lvim.builtin.editorconfig = { active = true } -- enable/disable editorconfig


-- Core plugins configuration
-- ==============================
require("user.builtin").config()


-- Additional plugins configuration
-- ==============================
require('user.plugins').config()


-- Additional keybindings
-- ==============================
require('user.keybindings').config()


-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- ==============================
require('user.autocommands').config()
