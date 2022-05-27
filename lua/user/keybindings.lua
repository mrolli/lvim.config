--[[
Add/change additional keybindings
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
  lvim.keys.insert_mode["k"] = false
  lvim.keys.insert_mode["jk"] = false
  lvim.keys.insert_mode["∆"] = "<Esc>:m .+1<CR>==gi"
  lvim.keys.insert_mode["˚"] = "<Esc>:m .-2<CR>==gi"
  lvim.keys.normal_mode["∆"] = ":m .+1<CR>=="
  lvim.keys.normal_mode["˚"] = ":m .-2<CR>=="
  lvim.keys.normal_mode["<C-w>t"] = "<cmd>Twilight<cr>"
  lvim.keys.normal_mode["<C-w>z"] = "<cmd>ZenMode<cr>"
  lvim.keys.visual_mode["p"] = '"_dP'
  lvim.keys.visual_mode["P"] = '"_dP'
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
