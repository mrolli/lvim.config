--[[
Change/add autocommands
]]
local M = {}

M.config = function()
  lvim.autocommands.custom_groups = {
    --   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
    -- do not automatically strip whitespace from markdown files
    { "FileType", "markdown", ":DisableStripWhitespaceOnSave" },
    -- { "BufRead,BufNewFile", "*/playbooks/*.yml", "set filetype=yaml.ansible" }
  }

end

return M
