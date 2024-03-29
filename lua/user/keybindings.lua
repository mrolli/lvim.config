--[[
keymappings [view all the defaults by pressing <leader>Lk]
]]
local M = {}

M.config = function()
  -- add your own keymapping
  -- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
  -- unmap a default keymapping
  -- vim.keymap.del("n", "<C-Up>")
  -- edit a default keymapping
  -- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

  -- Cycle buffer with shift + h/l
  lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
  lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

  -- Move line up/down using alt+j/k in normal and insert mode
  lvim.keys.insert_mode["∆"] = "<Esc>:m .+1<CR>==gi"
  lvim.keys.insert_mode["˚"] = "<Esc>:m .-2<CR>==gi"
  lvim.keys.normal_mode["∆"] = ":m .+1<CR>=="
  lvim.keys.normal_mode["˚"] = ":m .-2<CR>=="
  -- Twilight/ZenMode
  lvim.keys.normal_mode["<C-w>t"] = "<cmd>Twilight<cr>"
  lvim.keys.normal_mode["<C-w>z"] = "<cmd>ZenMode<cr>"
  -- Markdown preview mappings
  lvim.keys.normal_mode["<C-w>p"] = "<cmd>MarkdownPreview<cr>"

  -- Delete to black hole register by default when pasting over a selection
  lvim.keys.visual_mode["p"] = '"_dP'

  --[[
  Using leader + y/Y to yank to unnameplus or paste from unnamedplus register.
  The register unnamedplus is the system's clipboard and is the default
  clipboard register in lvim, but I don't like that.
  Therefore clipboard is changed to unnamed (see lua/user/neovim.lua) and these
  additional mappings using the leader key are in place to yank to and paste
  from the unnamedplus register.
  Found at https://github.com/LunarVim/LunarVim/issues/930#issuecomment-890597260
  ]]
  -- Yank to system clipboard
  lvim.builtin.which_key.mappings.y = { '"+y', "Yank to clipboard" }
  lvim.builtin.which_key.mappings.y = {
    name = "+Yank",
    y = {
      '"+yy', "Yank line to clipboard"
    }
  }
  -- Paste from system clipbard
  lvim.builtin.which_key.mappings.p = { '"+p', "Paste from clipboard" }
  lvim.builtin.which_key.mappings.P = { '"+P', "Paste from clipboard" }
  -- yank/paste to system clipboard in visual mode
  lvim.builtin.which_key.vmappings.y = { '"+y', "Yank to clipboard" }
  lvim.builtin.which_key.vmappings.p = { '"+p', "Paste from clipboard" }

  -- Deliberately delete to black hole register
  lvim.builtin.which_key.mappings.d  = { '"_d', "Del to black hole" }
  lvim.builtin.which_key.vmappings.d = { '"_d', "Del to black hole" }

  -- Make file in current buffer executable
  lvim.builtin.which_key.mappings.x = { "<cmd>silent !chmod +x %<CR>", "Make executable" }

  -- Map telescope projects
  lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

  -- Extra bindings with the leader-key prefix
  lvim.builtin.which_key.mappings["t"] = {
    name = "Trouble",
    r = { "<cmd>Trouble lsp_references<cr>", "References" },
    f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
    d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
    q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
    l = { "<cmd>Trouble loclist<cr>", "LocationList" },
    w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
  }

  -- Add on/off switch for diagnostics
  local wk = require("which-key")
  wk.register({
    ["<leader>lD"] = { "<cmd>lua vim.diagnostic.disable()<cr>", "Disable Diagnostics" },
    ["<leader>lE"] = { "<cmd>lua vim.diagnostic.enable()<cr>", "Enable Diagnostics" },
  })

  -- Extra bindings for vim-fugitive functionality
  lvim.builtin.which_key.mappings.g.S = { "<cmd>G push<CR>", "Push" }
  lvim.builtin.which_key.mappings.g.L = { "<cmd>G pull<CR>", "Pull" }
  lvim.builtin.which_key.mappings.g.G = {
    name = "GitHub",
    i = { "<cmd>Octo issue list<cr>", "Issues" },
    p = { "<cmd>Octo pr list<cr>", "PR" },
  }
end

return M
