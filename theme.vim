fun! ColorMyPencils()
  "highlight LineNr ctermfg=109 guifg=#40ffff
  highlight netrwDir ctermfg=109 guifg=#40ffff
  highlight Comment cterm=italic gui=italic
  highlight ColorColumn ctermbg=0 guibg=#1d202f
  "highlight Cursorline cterm=bold ctermbg=238 gui=bold guibg=#3c3836
  " Keep this though it does not work correctly
  highlight SpellBad gui=undercurl guisp=red term=undercurl cterm=undercurl
  " Colorize unprintable chars, i.e. tabs!
  highlight SpecialKey ctermfg=white ctermbg=9 guibg=#FF0000
  " Colorize indentation stripes
  highlight IndentBlanklineIndent1 guibg=#32302f gui=nocombine
  highlight IndentBlanklineIndent2 guibg=#3c3836 gui=nocombine
endfun

augroup Rollisch_ThemeAdditions
  autocmd!
  autocmd ColorScheme * call ColorMyPencils()
augroup END
