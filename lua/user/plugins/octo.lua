-- Setup octo.nvim plugin
-- see https://github.com/pwntester/octo.nvim

local M = {}

M.config = function()
  local status_ok, octo = pcall(require, "octo")
  if not status_ok then
    return
  end

  octo.setup({
    -- default_remote = { "upstream", "origin" },
    -- reaction_viewer_hint_icon = "",
    -- user_icon = " ",
    -- comment_icon = " ",
    -- outdated_icon = " ",
    -- resolved_icon = " ",
    -- timeline_marker = "",
    -- timeline_indent = "2",
    -- right_bubble_delimiter = "",
    -- left_bubble_delimiter = "",
  })
end

return M
