-- Neovim configuration
-- ==============================
--[[
This is the top configuration file of my neovim configuration
based on the convenience layer brought by LunarVim.
]]


-- General lvim settings and Vim options
-- ==============================
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


-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- ==============================
require('user.autocommands').config()


-- Additional keybindings
-- ==============================
require('user.keybindings').config()
