--[[
Change/add autocommands
]]
local M = {}

M.config = function()
  lvim.autocommands.custom_groups = {
    --   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
    -- do not automatically strip whitespace from markdown files
    { "FileType", "markdown", ":DisableStripWhitespaceOnSave" },
  }

end

return M
