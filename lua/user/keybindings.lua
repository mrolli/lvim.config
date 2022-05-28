--[[
keymappings [view all the defaults by pressing <leader>Lk]
]]
local M = {}

M.config = function()
  -- add your own keymapping
  -- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
  -- unmap a default keymapping
  -- lvim.keys.normal_mode["<C-Up>"] = false
  -- edit a default keymapping
  -- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
  lvim.keys.insert_mode["jj"] = false
  lvim.keys.insert_mode["kj"] = false
  lvim.keys.insert_mode["jk"] = false
  lvim.keys.insert_mode["∆"] = "<Esc>:m .+1<CR>==gi"
  lvim.keys.insert_mode["˚"] = "<Esc>:m .-2<CR>==gi"
  lvim.keys.normal_mode["∆"] = ":m .+1<CR>=="
  lvim.keys.normal_mode["˚"] = ":m .-2<CR>=="
  lvim.keys.normal_mode["<C-w>t"] = "<cmd>Twilight<cr>"
  lvim.keys.normal_mode["<C-w>z"] = "<cmd>ZenMode<cr>"
  lvim.keys.visual_mode["p"] = '"_dP'

  -- yank to unnameplus register
  lvim.builtin.which_key.mappings["y"]  = { '"+y', "Yank 2 clipboard" }
  lvim.builtin.which_key.vmappings["y"] = { '"+y', "Yank 2 clipboard" }
  lvim.builtin.which_key.mappings["Y"]  = { '"+Y', "Yank 2 clipboard" }
  -- delete to black hole register
  lvim.builtin.which_key.mappings["d"]  = { '"_d', "Del 2 black hole reg" }
  lvim.builtin.which_key.vmappings["d"] = { '"_d', "Del 2 black hole reg" }


  -- Map telescope projects
  lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

  -- Use which-key to add extra bindings with the leader-key prefix
  lvim.builtin.which_key.mappings["t"] = {
    name = "+Trouble",
    r = { "<cmd>Trouble lsp_references<cr>", "References" },
    f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
    d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
    q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
    l = { "<cmd>Trouble loclist<cr>", "LocationList" },
    w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
  }
end

return M
