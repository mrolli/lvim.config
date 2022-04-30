-- Setup indent_blankline plugin
-- see https://github.com/lukas-reineke/indent-blankline.nvim

local M = {}

M.config = function()
  local status_ok, bl = pcall(require, "indent_blankline")
  if not status_ok then
    return
  end

  bl.setup {
    enabled = true,
    bufname_exclude = { "README.md" },
    buftype_exclude = { "terminal", "nofile" },
    filetype_exclude = {
      "git",
      "gitcommit",
      "json",
      "markdown",
      "NvimTree",
      "Trouble",
      "",
    },
    -- char = '▏',
    -- char_list = { "", "┊", "┆", "¦", "|", "¦", "┆", "┊", "" },
    char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
      "IndentBlanklineIndent3",
      "IndentBlanklineIndent4",
      "IndentBlanklineIndent5",
      "IndentBlanklineIndent6",
    },
    space_char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
    show_first_indent_level = true,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    show_foldtext = false,
    show_end_of_line = false,
    use_treesitter = true,
    context_patterns = {
      "class",
      "return",
      "function",
      "method",
      "^if",
      "^do",
      "^switch",
      "^while",
      "jsx_element",
      "^for",
      "^object",
      "^table",
      "block",
      "arguments",
      "if_statement",
      "else_clause",
      "jsx_element",
      "jsx_self_closing_element",
      "try_statement",
      "catch_clause",
      "import_statement",
      "operation_type",
    },
  }
end

return M
