--[[
Change/add to lvim builtins
]]
local M = {}

M.config = function()
  -- Lualine
  -- ================================
  lvim.builtin.lualine.sections.lualine_y = { "spaces", {
    "fileformat",
    icons_enabled = false
  }, "encoding", "filetype" }
  lvim.builtin.lualine.sections.lualine_z = { "progress", "location" }

  --
  lvim.builtin.alpha.active = true
  lvim.builtin.alpha.mode = "dashboard"
  lvim.builtin.notify.active = true
  lvim.builtin.terminal.active = true
  lvim.builtin.nvimtree.setup.view.side = "left"
  lvim.builtin.nvimtree.show_icons.git = 0


  -- Treesitter configuration
  -- ================================
  local languages = vim.tbl_flatten {
    {"bash", "c", "css", "html", "java", "javascript", "json" },
    {"lua", "php", "python", "rust", "tsx", "typescript", "yaml"},
  }
  lvim.builtin.treesitter.ensure_installed = languages
  lvim.builtin.treesitter.ignore_install = { "haskell", "norg" }
  lvim.builtin.treesitter.highlight.enabled = true
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
  -- add label for some of above additional textobjects
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

    -- Telescope
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
