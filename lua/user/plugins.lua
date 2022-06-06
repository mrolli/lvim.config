--[[
Setup additional plugins

Plugins setup/configuration is outsourced to its own lua file if
there's too much code to do it inline here.
]]
local M = {}

M.config = function()
  lvim.plugins = {
    {
      "editorconfig/editorconfig-vim",
        event = "BufRead",
        config = function()
          vim.g.EditorConfig_exclude_patterns = { 'fugitive://.*' }
        end,
        disable = not lvim.user.builtin.editorconfig.active,
    },
    { "jeffkreeftmeijer/vim-numbertoggle" }, -- automatically toggle relativenumber for active buffer
    { -- visual indentation markers
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("user.plugins.indent_blankline").config()
      end
    },
    -- themes
    { "sainnhe/gruvbox-material" },
    { "folke/tokyonight.nvim" },
    { "catppuccin/nvim", as = "catppuccin" },
    {
      'rose-pine/neovim',
      as = 'rose-pine',
      tag = 'v1.*'
    },
    --]]
    {
      "folke/zen-mode.nvim",
      config = function()
        require("zen-mode").setup {
          window = {
            options = {
              number = true,
              relativenumber = false,
            }
          }
        }
      end
    },
    {
      "folke/twilight.nvim",
      config = function()
        require("twilight").setup {
          context = 12,
        }
      end
    },
    {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {}
      end
    },
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    { "tpope/vim-fugitive" },
    { "tpope/vim-repeat" },
    { "tpope/vim-surround",
      keys = {
        { 'n', 'ds' },
        { 'n', 'cs' },
        { 'n', 'cS' },
        { 'n', 'ys' },
        { 'n', 'yS' },
        { 'n', 'yss' },
        { 'n', 'ySs' },
        { 'n', 'ySS' },
        { 'x', 'S' },
        { 'x', 'gS' },
        { 'i', '<C-S>' },
        { 'i', '<C-G>s' },
        { 'i', '<C-G>S' }
      }
    },
    { "rodjek/vim-puppet" },
    { "godlygeek/tabular" },
    { "ntpeters/vim-better-whitespace" },
    { "vim-scripts/loremipsum" },
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("user.plugins.colorizer").config()
      end,
    },
    { "github/copilot.vim" },
    {
      "pwntester/octo.nvim",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        "kyazdani42/nvim-web-devicons",
      },
      config = function()
        require("user.plugins.octo").config()
      end
    }
  }
end

return M
