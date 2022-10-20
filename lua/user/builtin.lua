--[[
Change/add to lvim builtins
]]
local M = {}

M.config = function()

  -- lualine - https://github.com/nvim-lualine/lualine.nvim
  -- ================================
  lvim.builtin.lualine.sections.lualine_y = { "spaces", {
    "fileformat",
    icons_enabled = false
  }, "encoding", "filetype" }
  lvim.builtin.lualine.sections.lualine_z = { "progress", "location" }


  -- alpha-nvim configuration - https://github.com/goolord/alpha-nvim
  -- ================================
  lvim.builtin.alpha.active = true
  lvim.builtin.alpha.mode = "dashboard"


  -- Comment.nvim configuration - https://github.com/numToStr/Comment.nvim
  -- ================================
  lvim.builtin.comment.toggler.block = "gcb"
  lvim.builtin.comment.mappings.extra = true


  -- nvim-notify - https://github.com/rcarriga/nvim-notify
  -- ================================
  lvim.builtin.notify.active = true


  -- toggleterm.nvim - https://github.com/akinsho/toggleterm.nvim
  -- ================================
  lvim.builtin.terminal.active = true
  lvim.builtin.terminal.open_mapping = [[<c-t>]]


  -- NvimTree - https://github.com/kyazdani42/nvim-tree.lua
  -- ================================
  lvim.builtin.nvimtree.setup.view.side = "left"
  lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
  -- lvim.builtin.nvimtree.setup.filters.dotfiles = true
  lvim.builtin.nvimtree.setup.filters.custom = {
    "^\\.git",
    "\\.vagrant"
  }


  -- Treesitter - https://github.com/nvim-treesitter/nvim-treesitter
  -- nvim-treesitter-textobjects - https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  -- ================================
  local languages = vim.tbl_flatten {
    {"bash", "c", "css", "html", "java", "javascript", "json" },
    {"lua", "php", "python", "rust", "tsx", "typescript", "yaml"},
  }
  lvim.builtin.treesitter.ensure_installed = languages
  lvim.builtin.treesitter.ignore_install = { "haskell", "norg" }
  lvim.builtin.treesitter.highlight.enable = true
  lvim.builtin.treesitter.rainbow.enable = true
  lvim.builtin.treesitter.textobjects = {
    select = {
      enable = true,
      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["<leader>a"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>A"] = "@parameter.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
  }
  -- add labels for some of above additional textobjects
  lvim.builtin.which_key.on_config_done = function()
    require('which-key').register({
      ["[["] = { "Previous class start"},
      ["[]"] = { "Previous class end"},
      ["]]"] = { "Next class end"},
      ["]["] = { "Next class start"},
      ["<leader>a"] = { "Swap w/next param" },
      ["<leader>A"] = { "Swap w/prev param" }
    })
  end


  -- Telescope - https://github.com/nvim-telescope/telescope.nvim
  -- =========================================
  lvim.builtin.telescope.defaults.prompt_prefix = " > "
  -- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
  -- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
  -- local _, actions = pcall(require, "telescope.actions")
  -- lvim.builtin.telescope.defaults.mappings = {
  --   -- for input mode
  --   i = {
  --     ["<C-j>"] = actions.move_selection_next,
  --     ["<C-k>"] = actions.move_selection_previous,
  --     ["<C-n>"] = actions.cycle_history_next,
  --     ["<C-p>"] = actions.cycle_history_prev,
  --   },
  --   -- for normal mode
  --   n = {
  --     ["<C-j>"] = actions.move_selection_next,
  --     ["<C-k>"] = actions.move_selection_previous,
  --   },
  -- }
end


return M
