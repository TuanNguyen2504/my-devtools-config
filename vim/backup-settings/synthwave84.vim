" Name:         Synthwave84
" Author:       Anikin Artyom <anikinartyom@gmail.com>
" Maintainer:   Anikin Artyom <anikinartyom@gmail.com>
" Website:      https://github.com/artanikin/vim-synthwave84
" License:      Vim License (see `:help license`)
" Last Updated: Wed Aug  7 12:28:29 2019
" Last Customized: 07/09/2021
" Generated by Colortemplate v2.0.0 & Customized by Tuan Nguyen

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'synthwave84'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

" Default
hi! link EndOfBuffer NonText
hi! link QuickFixLine Search
hi! link Character Constant
hi! link Conditional Statement
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Number
hi! link Function Identifier
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link lCursor Cursor
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment

" Javascript
hi! link Boolean DPurple
hi! link jsNull DPurple
hi! link jsUndefined DPurple
hi! link jsThis DPurple
hi! link jsFuncArgs DPurple
hi! link jsRegexpString DPurple

hi! link jsVariableDef DPurpleLg
hi! link jsDestructuringPropertyValue DPurpleLg
hi! link jsObjectValue DPurpleLg
hi! link jsDestructuringBlock DPurpleLg
hi! link jsRegexpQuantifier DPurpleLg

hi! link jsImport DPink
hi! link jsExport DPink
hi! link jsExportDefault DPink
hi! link jsExportDefaultGroup DPink
hi! link jsFrom DPink
hi! link jsFunction DPink
hi! link jsStorageClass DPink
hi! link jsOperator DPink
hi! link jsDestructuringBraces DPink
hi! link jsTemplateBraces DPink
hi! link jsModuleAs DPink
hi! link jsRegexpBoundary DPink

hi! link jsClassFuncName DGreen
hi! link jsFuncName DGreen
hi! link jsArrowFunction DGreen
hi! link jsObjectFuncName DGreen
hi! link jsFuncCall DGreen
hi! link jsRegexpGroup DGreen

hi! link jsModuleKeyword DOrange
hi! link jsRegexpMod DOrange

hi! link jsObjectKey DBlugLg
hi! link jsObjectProp DBlugLg
hi! link jsRegexpCharClass DBlugLg

hi! link jsTemplateString DSkinLg
hi! link jsTaggedTemplate DSkin

" JSX
hi! link jsxComponentName DOrange
hi! link jsxTagName DPink
hi! link jsxPunct DPinkLg
hi! link jsxCloseString DPinkLg
hi! link jsxDot DPink

" HTML 
hi! link htmlTagName DPink
hi! link htmlArg DGreen
hi! link htmlTag DPinkLg
hi! link htmlEndTag DPinkLg

" CSS
hi! link cssBraces DPink
hi! link cssProp DOrange
hi! link cssNoise DOrange 
hi! link cssFunctionName DGreen

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['Black', 'DarkRed', 'DarkGreen', 'DarkYellow',
        \ 'DarkBlue', 'DarkMagenta', 'DarkCyan', 'LightGrey', 'DarkGrey', 'Red',
        \ 'Green', '#E9E640', 'Blue', '#E967D7', 'Cyan', 'White']
  " Basic color
  hi Comment guifg=#554FA3 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Constant guifg=#9a86fd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Identifier guifg=#40ffff guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Statement guifg=#E967D7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#E967D7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Type guifg=#48D06D guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Special guifg=#EA9652 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#40ffff guibg=NONE guisp=NONE gui=underline cterm=underline
  hi Error guifg=#ECEBED guibg=#EC4A3E guisp=NONE gui=NONE cterm=NONE
  hi Normal guifg=#ECEBED guibg=#262335 guisp=NONE gui=NONE cterm=NONE

  " My color group
  " #E967D7 #F57E00 #D38A60 #F9C9C9 #48D06D #9a86fd #d2b1ff #81B9EE 
  hi DPink guifg=#E967D7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi DPinkLg guifg=#BD93F9 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi DOrange guifg=#F57E00 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi DSkin guifg=#D38A60 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi DSkinLg guifg=#F9C9C9 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi DGreen guifg=#48D06D guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi DPurple guifg=#9a86fd guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi DPurpleLg guifg=#d2b1ff guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi DBlug guifg=#40ffff guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi DBlugLg guifg=#81B9EE guibg=NONE guisp=NONE gui=NONE cterm=NONE
 
  " Highlight
  hi! CocErrorSign guifg=#EC4A3E
  hi! CocWarningSign guifg=#B89B00 
  hi! CocInfoSign guifg=#48D06D
  hi! CocHintSign guifg=#4595DE
  hi! CocFloating guibg=#44475A 

  " Customized
  hi LineNr guifg=#E9E640 guibg=NONE guisp=NONE gui=bold cterm=NONE
  hi LineNrAbove guifg=#6272A0 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi LineNrBelow guifg=#6272A0 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi StatusLine guifg=#37334D guibg=#44475A guisp=NONE gui=bold,reverse cterm=bold,reverse
  hi StatusLineNC guifg=#37334D guibg=#44475A guisp=NONE gui=reverse cterm=reverse
  hi String guifg=#D38A60 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Number ctermfg=141 ctermbg=NONE cterm=bold guifg=#E9E640 guibg=NONE gui=bold
  hi Title guifg=#ECEBED guibg=NONE guisp=NONE gui=NONE cterm=NONE

  hi ColorColumn guifg=NONE guibg=#44475A guisp=NONE gui=NONE cterm=NONE
  hi Cursor guifg=Black guibg=fg guisp=NONE gui=NONE cterm=NONE
  hi CursorColumn guifg=NONE guibg=#44475A guisp=NONE gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#44475A guisp=NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg=#D4D3D7 guibg=#44475A guisp=NONE gui=bold cterm=bold
  hi DiffAdd guifg=NONE guibg=#90DEB6 guisp=NONE gui=NONE cterm=NONE
  hi DiffChange guifg=NONE guibg=#E967D7 guisp=NONE gui=NONE cterm=NONE
  hi DiffDelete guifg=Black guibg=#EB8F82 guisp=NONE gui=bold cterm=bold
  hi DiffText guifg=NONE guibg=#EC4A3E guisp=NONE gui=bold cterm=bold
  hi FoldColumn guifg=#554FA3 guibg=#44475A guisp=NONE gui=NONE cterm=NONE
  hi Folded guifg=#554FA3 guibg=#44475A guisp=NONE gui=NONE cterm=NONE
  hi NonText guifg=#554FA3 guibg=NONE guisp=NONE gui=bold cterm=bold
  hi Pmenu guifg=#ECEBED guibg=#44475A guisp=NONE gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=#3E3B4B guisp=NONE gui=NONE cterm=NONE
  hi PmenuSel guifg=#ECEBED guibg=#554FA3 guisp=NONE gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE guibg=#ECEBED guisp=NONE gui=NONE cterm=NONE
  hi Search guifg=Black guibg=#E9E640 guisp=NONE gui=NONE cterm=NONE
  hi SignColumn guifg=#888690 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi SignColumn guifg=#ECEBED guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#ECEBED guibg=#44475A guisp=NONE gui=NONE cterm=NONE
  hi TabLine guifg=#554FA3 guibg=#44475A guisp=NONE gui=NONE cterm=NONE
  hi TabLineFill guifg=NONE guibg=#44475A guisp=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#EB8F82 guibg=#44475A guisp=NONE gui=NONE cterm=NONE
  hi Todo guifg=Black guibg=#E9E640 guisp=NONE gui=NONE cterm=NONE
  hi VertSplit guifg=#262335 guibg=#d2b1ff guisp=NONE gui=reverse cterm=reverse
  hi Visual guifg=NONE guibg=#3E3B4B guisp=NONE gui=NONE cterm=NONE
  hi VisualNOS guifg=NONE guibg=NONE guisp=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi WildMenu guifg=Black guibg=#E9E640 guisp=NONE gui=NONE cterm=NONE
  hi Ignore guifg=Black guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Include guifg=#90DEB6 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 256
  hi Normal ctermfg=7 ctermbg=8 cterm=NONE
  if !has('patch-8.0.0616') " Fix for Vim bug
    set background=dark
  endif
  hi ColorColumn ctermfg=NONE ctermbg=7 cterm=NONE
  hi Cursor ctermbg=fg cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=7 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=7 cterm=NONE
  hi CursorLineNr ctermfg=7 ctermbg=7 cterm=NONE
  hi DiffAdd ctermfg=NONE ctermbg=121 cterm=NONE
  hi DiffChange ctermfg=NONE ctermbg=13 cterm=NONE
  hi DiffDelete ctermbg=224 cterm=NONE
  hi DiffText ctermfg=NONE ctermbg=9 cterm=bold
  hi FoldColumn ctermfg=14 ctermbg=7 cterm=NONE
  hi Folded ctermfg=14 ctermbg=7 cterm=NONE
  hi LineNr ctermfg=7 ctermbg=NONE cterm=NONE
  hi NonText ctermfg=14 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=7 ctermbg=7 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=8 cterm=NONE
  hi PmenuSel ctermfg=7 ctermbg=14 cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=7 cterm=NONE
  hi Search ctermbg=11 cterm=NONE
  hi SignColumn ctermfg=7 ctermbg=NONE cterm=NONE
  hi SignColumn ctermfg=7 ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=7 ctermbg=7 cterm=NONE
  hi StatusLine ctermfg=7 ctermbg=7 cterm=bold,reverse
  hi StatusLineNC ctermfg=7 ctermbg=7 cterm=reverse
  hi TabLine ctermfg=14 ctermbg=7 cterm=NONE
  hi TabLineFill ctermfg=NONE ctermbg=7 cterm=NONE
  hi TabLineSel ctermfg=224 ctermbg=7 cterm=NONE
  hi Title ctermfg=13 ctermbg=NONE cterm=NONE
  hi Todo ctermbg=11 cterm=NONE
  hi VertSplit ctermfg=7 ctermbg=14 cterm=reverse
  hi Visual ctermfg=NONE ctermbg=8 cterm=NONE
  hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi WildMenu ctermbg=11 cterm=NONE
  hi Comment ctermfg=14 ctermbg=NONE cterm=NONE
  hi Constant ctermfg=9 ctermbg=NONE cterm=NONE
  hi Error ctermfg=7 ctermbg=9 cterm=NONE
  hi Identifier ctermfg=14 ctermbg=NONE cterm=NONE
  hi Ignore ctermbg=NONE cterm=NONE
  hi Include ctermfg=121 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=11 ctermbg=NONE cterm=NONE
  hi Special ctermfg=224 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=11 ctermbg=NONE cterm=NONE
  hi String ctermfg=224 ctermbg=NONE cterm=NONE
  hi Type ctermfg=9 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=14 ctermbg=NONE cterm=underline
  hi rubySymbol ctermfg=224 ctermbg=NONE cterm=NONE
  hi rubyBoolean ctermfg=224 ctermbg=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=LightGray ctermbg=DarkGray cterm=NONE
  if !has('patch-8.0.0616') " Fix for Vim bug
    set background=dark
  endif
  hi ColorColumn ctermfg=NONE ctermbg=LightGray cterm=NONE
  hi Cursor ctermfg=Black ctermbg=fg cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=LightGray cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=LightGray cterm=NONE
  hi CursorLineNr ctermfg=LightGray ctermbg=LightGray cterm=NONE
  hi DiffAdd ctermfg=NONE ctermbg=LightGreen cterm=NONE
  hi DiffChange ctermfg=NONE ctermbg=Magenta cterm=NONE
  hi DiffDelete ctermfg=Black ctermbg=LightRed cterm=NONE
  hi DiffText ctermfg=NONE ctermbg=Red cterm=bold
  hi FoldColumn ctermfg=Cyan ctermbg=LightGray cterm=NONE
  hi Folded ctermfg=Cyan ctermbg=LightGray cterm=NONE
  hi LineNr ctermfg=LightGray ctermbg=NONE cterm=NONE
  hi NonText ctermfg=Cyan ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=LightGray ctermbg=LightGray cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=DarkGray cterm=NONE
  hi PmenuSel ctermfg=LightGray ctermbg=Cyan cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=LightGray cterm=NONE
  hi Search ctermfg=Black ctermbg=Yellow cterm=NONE
  hi SignColumn ctermfg=LightGray ctermbg=NONE cterm=NONE
  hi SignColumn ctermfg=LightGray ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=LightGray ctermbg=LightGray cterm=NONE
  hi StatusLine ctermfg=LightGray ctermbg=LightGray cterm=bold,reverse
  hi StatusLineNC ctermfg=LightGray ctermbg=LightGray cterm=reverse
  hi TabLine ctermfg=Cyan ctermbg=LightGray cterm=NONE
  hi TabLineFill ctermfg=NONE ctermbg=LightGray cterm=NONE
  hi TabLineSel ctermfg=LightRed ctermbg=LightGray cterm=NONE
  hi Title ctermfg=Magenta ctermbg=NONE cterm=NONE
  hi Todo ctermfg=Black ctermbg=Yellow cterm=NONE
  hi VertSplit ctermfg=LightGray ctermbg=Cyan cterm=reverse
  hi Visual ctermfg=NONE ctermbg=DarkGray cterm=NONE
  hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi WildMenu ctermfg=Black ctermbg=Yellow cterm=NONE
  hi Comment ctermfg=Cyan ctermbg=NONE cterm=NONE
  hi Constant ctermfg=Pink ctermbg=NONE cterm=NONE
  hi Error ctermfg=LightGray ctermbg=Red cterm=NONE
  hi Identifier ctermfg=Cyan ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=Black ctermbg=NONE cterm=NONE
  hi Include ctermfg=LightGreen ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=Yellow ctermbg=NONE cterm=NONE
  hi Special ctermfg=LightRed ctermbg=NONE cterm=NONE
  hi Statement ctermfg=Yellow ctermbg=NONE cterm=NONE
  hi String ctermfg=LightRed ctermbg=NONE cterm=NONE
  hi Type ctermfg=Pink ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=Cyan ctermbg=NONE cterm=underline
  hi rubySymbol ctermfg=LightRed ctermbg=NONE cterm=NONE
  hi rubyBoolean ctermfg=LightRed ctermbg=NONE cterm=NONE
  unlet s:t_Co
  finish
endif
