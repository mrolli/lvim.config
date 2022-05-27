--[[
Set some lvim specific stuff first
]]

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.leader = "space"


--[[
then set standard vim options here
]]
local opt = vim.opt

opt.relativenumber = true
-- no mouse support
opt.mouse = ""
-- no automatic system clipboard usage
opt.clipboard = ""
-- no lines crossing usng cursor and h,l aka classic vim defaults
opt.whichwrap = "b,s"
-- add a highlighted column
opt.colorcolumn = "120"
opt.cindent = true
-- configure folding for Treesitter usage
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 5
