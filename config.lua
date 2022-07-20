-- Neovim configuration
-- ==============================
--[[
This is the top configuration file of my neovim configuration
based on the convenience layer brought by LunarVim.
]]


-- General lvim settings and Vim options
-- ==============================
require('user.options')


-- Colorscheme setttings
-- ==============================
require('user.theme').gruvbox_material()
-- require('user.theme').tokyonight_storm()
-- require('user.theme').rose_pine_moon()
-- require('user.theme').catpuccin()


-- Customization
-- ==============================
lvim.user.builtin.editorconfig     = { active = true } -- enable/disable editorconfig
lvim.user.builtin.markdown_preview = { active = true } -- enable/disable mardown preview
lvim.user.builtin.octo             = { active = true } -- enhalbe/disable octo plugin


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
