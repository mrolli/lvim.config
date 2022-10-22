--[[
Set some lvim specific stuff first
]]

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- Create a new "user.builtin" namespace for the config of non-core plugins
lvim.user = {
  builtin = {}
}

-- then set standard vim options here
vim.opt.timeoutlen = 500
-- no command line by default
vim.opt.cmdheight=0
-- turn on relative line numbers
vim.opt.relativenumber = true
-- no mouse support
vim.opt.mouse = ""
-- no automatic system clipboard usage
vim.opt.clipboard = ""
-- no lines crossing usng cursor and h,l aka classic vim defaults
vim.opt.whichwrap = "b,s"
-- add a highlighted column
vim.opt.colorcolumn = "80"
vim.opt.cindent = true

-- configure folding for Treesitter usage
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 7

-- configure wildmenu related options
vim.opt.wildmode = "full"
vim.opt.wildoptions = "pum"
vim.opt.wildignore = {
  "*~",
  "**/.git/*",
  "**/.vagrant/*",
  "*.o",
  "*.pyc", "*pycache*",
}
vim.opt.pumblend = 10 -- make pop-up menu slightly transparent
