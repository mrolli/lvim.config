-- Setup better whitespace plugin
-- see https://github.com/ntpeters/vim-better-whitespace

-- The same list as the default except markown is removed to show whitepace in markdown files
vim.g.better_whitespace_filetypes_blacklist = { 'diff', 'git', 'gitcommit', 'unite', 'qf', 'help', 'fugitive' }
