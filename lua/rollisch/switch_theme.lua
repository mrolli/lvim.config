-- Theme switcher

local M = {}

-- See :h gruvbox-material for docs
M.to_gruvbox_material = function ()
  vim.g.gruvbox_material_palette = 'material'
  vim.g.gruvbox_material_background = 'soft'
  vim.g.gruvbox_material_enable_bold = 1
  vim.g.gruvbox_material_enable_itablic = 1
  -- vim.g.gruvbox_material_visual = 'blue background'
  vim.g.gruvbox_material_spell_foreground = 'colored'
  vim.g.gruvbox_material_ui_contrast = 'low'
  vim.g.gruvbox_material_diagnostic_text_highlight = 1
  vim.g.gruvbox_material_diagnostic_line_highlight = 1
  vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
  vim.g.gruvbox_material_better_performance = 1

  lvim.colorscheme = "gruvbox-material"
  lvim.builtin.lualine.theme = "gruvbox-material"
  io.popen('switch_theme gruvbox-material')
end

-- https://github.com/folke/tokyonight.nvim
M.to_tokyonight_storm = function ()
  vim.g.tokyonight_dev = true
  vim.g.tokyonight_style = "storm"
  vim.g.tokyonight_sidebars = {
    "qf",
    "vista_kind",
    "terminal",
    "packer",
    "help",
  }
  vim.g.tokyonight_cterm_colors = false
  vim.g.tokyonight_terminal_colors = true
  vim.g.tokyonight_italic_comments = false
  vim.g.tokyonight_italic_keywords = true
  vim.g.tokyonight_italic_functions = false
  vim.g.tokyonight_italic_variables = false
  vim.g.tokyonight_transparent = lvim.transparent_window
  vim.g.tokyonight_hide_inactive_statusline = true
  vim.g.tokyonight_dark_sidebar = true
  vim.g.tokyonight_dim_inactive = true
  vim.g.tokyonight_global_status = true
  vim.g.tokyonight_dark_float = true
  vim.g.tokyonight_colors = {
    hint = "orange",
    error = "#ff0000" ,
    git = { change = "#6183bb", add = "#449dab", delete = "#f7768e", conflict = "#bb7a61" }
  }
--   local _time = os.date "*t"
--   if _time.hour < 8 then
--     vim.g.tokyonight_style = "night"
--   end

  lvim.colorscheme = "tokyonight"
  lvim.builtin.lualine.theme = "tokyonight"
  os.execute('switch_theme tokyonight-storm')
end

-- See https://rosepinetheme.com/
M.to_rose_pine_moon = function ()
  require('rose-pine').setup({
    ---@usage 'main'|'moon'
    dark_variant = 'main',
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = false,
    disable_float_background = false,
    disable_italics = false,
    ---@usage string hex value or named color from rosepinetheme.com/palette
    groups = {
      background = 'base',
      panel = 'surface',
      border = 'highlight_med',
      comment = 'muted',
      link = 'iris',
      punctuation = 'subtle',

      error = 'love',
      hint = 'iris',
      info = 'foam',
      warn = 'gold',

      headings = {
        h1 = 'iris',
        h2 = 'foam',
        h3 = 'rose',
        h4 = 'gold',
        h5 = 'pine',
        h6 = 'foam',
      }
      -- or set all headings at once
      -- headings = 'subtle'
    },
    -- Change specific vim highlight groups
    highlight_groups = {
      ColorColumn = { bg = 'rose' }
    }
  })

  lvim.colorscheme = "rose-pine"
  lvim.builtin.lualine.theme = "rose-pine"
end

-- See https://github.com/catppuccin/nvim
M.to_catpuccin = function ()
  require('catppuccin').setup {
    transparent_background = lvim.transparent_window,
    term_colors = false,
    styles = {
      comments = "NONE",
      functions = "NONE",
      keywords = "italic",
      strings = "NONE",
      variables = "NONE",
    },
    integrations = {
      treesitter = true,
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = "italic",
          hints = "italic",
          warnings = "italic",
          information = "italic",
        },
        underlines = {
          errors = "underline",
          hints = "underline",
          warnings = "underline",
          information = "underline",
        },
      },
      lsp_trouble = true,
      cmp = true,
      lsp_saga = false,
      gitgutter = false,
      gitsigns = true,
      telescope = true,
      nvimtree = {
        enabled = true,
        show_root = false,
        transparent_panel = lvim.transparent_window,
      },
      which_key = true,
      indent_blankline = {
        enabled = true,
        colored_indent_levels = false,
      },
      dashboard = true,
      neogit = false,
      vim_sneak = false,
      fern = false,
      barbar = false,
      bufferline = true,
      markdown = true,
      lightspeed = lvim.builtin.motion_provider == "lightspeed",
      ts_rainbow = false,
      hop = lvim.builtin.motion_provider == "hop",
      notify = true,
      telekasten = true,
      symbols_outline = true,
    },
 }
end

M.colors = {
  tokyonight_colors = {
    none = "NONE",
    bg_dark = "#1f2335",
    bg_alt = "#1f2335",
    bg = "#1a1b26",
    bg_br = "#292e42",
    terminal_black = "#414868",
    fg = "#c0caf5",
    fg_dark = "#a9b1d6",
    fg_gutter = "#3b4261",
    dark3 = "#545c7e",
    comment = "#565f89",
    dark5 = "#737aa2",
    blue0 = "#3d59a1",
    blue = "#7aa2f7",
    cyan = "#7dcfff",
    blue1 = "#2ac3de",
    blue2 = "#0db9d7",
    blue5 = "#89ddff",
    blue6 = "#B4F9F8",
    blue7 = "#394b70",
    violet = "#bb9af7",
    magenta = "#bb9af7",
    magenta2 = "#ff007c",
    purple = "#9d7cd8",
    orange = "#ff9e64",
    yellow = "#e0af68",
    green = "#9ece6a",
    green1 = "#73daca",
    green2 = "#41a6b5",
    teal = "#1abc9c",
    red = "#f7768e",
    red1 = "#db4b4b",
    -- git = { change = "#6183bb", add = "#449dab", delete = "#914c54", conflict = "#bb7a61" },
    git = { change = "#6183bb", add = "#449dab", delete = "#f7768e", conflict = "#bb7a61" },
    gitSigns = { add = "#164846", change = "#394b70", delete = "#823c41" },
  },

  rose_pine_colors = {
    none = "NONE",
    bg = "#2a273f",
    fg = "#e0def4",
    fg_gutter = "#3b4261",
    black = "#393b44",
    gray = "#2a2e36",
    red = "#eb6f92",
    green = "#97c374",
    yellow = "#f6c177",
    blue = "#9ccfd8",
    magenta = "#c4a7e7",
    cyan = "#9ccfd8",
    white = "#dfdfe0",
    orange = "#ea9a97",
    pink = "#D67AD2",
    black_br = "#7f8c98",
    red_br = "#e06c75",
    green_br = "#58cd8b",
    yellow_br = "#FFE37E",
    bg_br = "#393552",
    blue_br = "#84CEE4",
    violet = "#B8A1E3",
    cyan_br = "#59F0FF",
    white_br = "#FDEBC3",
    orange_br = "#F6A878",
    pink_br = "#DF97DB",
    comment = "#526175",
    bg_alt = "#191724",
    git = {
      add = "#84Cee4",
      change = "#c4a7e7",
      delete = "#eb6f92",
      conflict = "#f6c177",
    },
  },

  catppuccin_colors = {
    rosewater = "#F5E0DC",
    flamingo = "#F2CDCD",
    violet = "#DDB6F2",
    pink = "#F5C2E7",
    red = "#F28FAD",
    maroon = "#E8A2AF",
    orange = "#F8BD96",
    yellow = "#FAE3B0",
    green = "#ABE9B3",
    blue = "#96CDFB",
    cyan = "#89DCEB",
    teal = "#B5E8E0",
    lavender = "#C9CBFF",
    white = "#D9E0EE",
    gray2 = "#C3BAC6",
    gray1 = "#988BA2",
    gray0 = "#6E6C7E",
    black4 = "#575268",
    bg_br = "#302D41",
    bg = "#1A1826",
    bg_alt = "#1E1E2E",
    fg = "#D9E0EE",
    black = "#1A1826",
    git = {
      add = "#ABE9B3",
      change = "#96CDFB",
      delete = "#F28FAD",
      conflict = "#FAE3B0",
    },
  },
}

return M
