" sizowie.vim

hi clear
if exists("syntax_on")
  syntax reset
endif

set background=light
set linespace=3

let g:colors_name = "sizowie"

hi Normal               cterm=none ctermbg=none ctermfg=236
hi LineNr               cterm=none ctermbg=none ctermfg=242
hi StatusLine           cterm=none ctermbg=none ctermfg=none
hi StatusLineNC         cterm=none ctermbg=none ctermfg=none
hi Search               cterm=none ctermbg=193  ctermfg=none
hi IncSearch            cterm=none ctermbg=193  ctermfg=none
hi ColumnMargin         cterm=none ctermbg=none ctermfg=242
hi Error                cterm=none ctermbg=none ctermfg=none
hi ErrorMsg             cterm=none ctermbg=none ctermfg=none
hi Folded               cterm=none ctermbg=none ctermfg=none
hi FoldColumn           cterm=none ctermbg=none ctermfg=none
hi NonText              cterm=none ctermbg=none ctermfg=none
hi ModeMsg              cterm=none ctermbg=none ctermfg=none
hi Pmenu                cterm=none ctermbg=none ctermfg=none
hi PmenuSel             cterm=none ctermbg=none ctermfg=none
hi PmenuSbar            cterm=none ctermbg=none ctermfg=none
hi SpellBad             cterm=none ctermbg=none ctermfg=none
hi SpellCap             cterm=none ctermbg=none ctermfg=none
hi SpellRare            cterm=none ctermbg=none ctermfg=none
hi SpellLocal           cterm=none ctermbg=none ctermfg=none
hi Visual               cterm=none ctermbg=252  ctermfg=white
hi Directory            cterm=none ctermbg=none ctermfg=none
hi SpecialKey           cterm=none ctermbg=none ctermfg=none
hi DiffAdd              cterm=none ctermbg=none ctermfg=none
hi DiffChange           cterm=none ctermbg=none ctermfg=none
hi DiffDelete           cterm=none ctermbg=none ctermfg=none
hi DiffText             cterm=none ctermbg=none ctermfg=none
hi MatchParen           cterm=none ctermbg=none ctermfg=none
hi CursorLine           cterm=none ctermbg=none ctermfg=none
hi CursorColumn         cterm=none ctermbg=none ctermfg=none
hi Title                cterm=none ctermbg=none ctermfg=none

" syntax
hi Keyword              cterm=none ctermbg=none ctermfg=none
hi Comment              cterm=none ctermbg=none ctermfg=242
hi Delimiter            cterm=none ctermbg=none ctermfg=none
hi Identifier           cterm=bold ctermbg=none ctermfg=none
hi Structure            cterm=none ctermbg=none ctermfg=none
hi Ignore               cterm=none ctermbg=none ctermfg=none
hi Constant             cterm=bold ctermbg=none ctermfg=none
hi PreProc              cterm=none ctermbg=none ctermfg=none
hi Type                 cterm=none ctermbg=none ctermfg=none
hi Statement            cterm=bold ctermbg=none ctermfg=none
hi Special              cterm=none ctermbg=none ctermfg=none
hi String               cterm=none ctermbg=none ctermfg=none
hi Number               cterm=none ctermbg=none ctermfg=none
hi Underlined           cterm=none ctermbg=none ctermfg=none
hi Symbol               cterm=none ctermbg=none ctermfg=none
hi Method               cterm=none ctermbg=none ctermfg=none
hi Interpolation        cterm=none ctermbg=none ctermfg=none
