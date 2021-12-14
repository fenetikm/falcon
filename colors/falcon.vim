" ===============================================================
" falcon
" 
" URL: https://github.com/fenetikm/falcon
" Author: Michael Welford
" License: MIT
" Last Change: 2021/12/15 08:30
" ===============================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="falcon"


let Italic = ""
if exists('g:falcon_italic')
  let Italic = "italic"
endif
let g:falcon_italic = get(g:, 'falcon_italic', 0)

let Bold = ""
if exists('g:falcon_bold')
  let Bold = "bold"
endif

let g:falcon_bold = get(g:, 'falcon_bold', 0)
hi ALEErrorSign guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ALEWarningSign guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ALEInfoSign guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link AspVBSVariableSimple Identifier
hi link AspVBSStatement Keyword
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#151521 ctermbg=234 gui=NONE cterm=NONE
hi Conceal guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Cursor guifg=NONE ctermfg=NONE guibg=#787882 ctermbg=243 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#171729 ctermbg=234 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#2F2F3A ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#B4B4B9 ctermfg=249 guibg=#2F2F3A ctermbg=236 gui=NONE cterm=NONE
hi Directory guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE ctermfg=NONE guibg=#203003 ctermbg=234 gui=NONE cterm=NONE
hi DiffChange guifg=NONE ctermfg=NONE guibg=#031630 ctermbg=233 gui=NONE cterm=NONE
hi DiffDelete guifg=NONE ctermfg=NONE guibg=#300E03 ctermbg=233 gui=NONE cterm=NONE
hi DiffText guifg=NONE ctermfg=NONE guibg=#203003 ctermbg=234 gui=NONE cterm=NONE
hi ErrorMsg guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#787882 ctermfg=243 guibg=#212127 ctermbg=235 gui=NONE cterm=NONE
hi FoldColumn guifg=#787882 ctermfg=243 guibg=#212127 ctermbg=235 gui=NONE cterm=NONE
hi SignColumn guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#020221 ctermfg=0 guibg=#BFDAFF ctermbg=153 gui=Bold cterm=Bold
hi LineNr guifg=#57575E ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#F0E1CE ctermfg=224 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi NonText guifg=#36363A ctermfg=237 guibg=#020221 ctermbg=0 gui=NONE cterm=NONE
hi Normal guifg=#B4B4B9 ctermfg=249 guibg=#020221 ctermbg=0 gui=NONE cterm=NONE
hi PMenu guifg=#878791 ctermfg=102 guibg=#18182A ctermbg=234 gui=NONE cterm=NONE
hi PMenuSel guifg=#000004 ctermfg=0 guibg=#FFC552 ctermbg=221 gui=NONE cterm=NONE
hi PmenuSbar guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PmenuThumb guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Question guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Search guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=Bold,underline cterm=Bold,underline
hi SpecialKey guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=NONE ctermfg=NONE guibg=#3F3A59 ctermbg=237 gui=underline cterm=underline
hi SpellLocal guifg=NONE ctermfg=NONE guibg=#3F3A59 ctermbg=237 gui=underline cterm=underline
hi SpellCap guifg=NONE ctermfg=NONE guibg=#3F3A59 ctermbg=237 gui=undercurl cterm=undercurl
hi SpellRare guifg=NONE ctermfg=NONE guibg=#3F3A59 ctermbg=237 gui=underline cterm=underline
hi StatusLine guifg=#787882 ctermfg=243 guibg=#28282D ctermbg=235 gui=NONE cterm=NONE
hi StatusLineNC guifg=#787882 ctermfg=243 guibg=#36363A ctermbg=237 gui=NONE cterm=NONE
hi TabLine guifg=#787882 ctermfg=243 guibg=#36363A ctermbg=237 gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#212127 ctermbg=235 gui=NONE cterm=NONE
hi TabLineSel guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Visual guifg=#DFDFE5 ctermfg=254 guibg=#2D1078 ctermbg=4 gui=NONE cterm=NONE
hi WildMenu guifg=#020221 ctermfg=0 guibg=#FFC552 ctermbg=221 gui=NONE cterm=NONE
hi Comment guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi Constant guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi String guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Character String
hi Boolean guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi Number guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Float Number
hi Identifier guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Repeat Statement
hi link Label Statement
hi Operator guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Exception Statement
hi PreProc guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi Type guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type
hi Special guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SpecialChar Special
hi link Tag Special
hi Delimiter guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SpecialComment Special
hi link Debug Special
hi Underlined guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi Todo guifg=#020221 ctermfg=0 guibg=#CFC1B2 ctermbg=181 gui=Italic cterm=Italic
hi QuickFixLine guifg=#BFDAFF ctermfg=153 guibg=#36363A ctermbg=237 gui=NONE cterm=NONE
hi Bold guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi Italic guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi IndentBlanklineChar guifg=#2F2F3A ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IndentBlanklineIndent1 guifg=#2F2F3A ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IndentBlanklineIndent2 guifg=#36363A ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi BufTabLineCurrent guifg=#B4B4B9 ctermfg=249 guibg=#787882 ctermbg=243 gui=NONE cterm=NONE
hi BufTabLineActive guifg=#DFDFE5 ctermfg=254 guibg=#36363A ctermbg=237 gui=NONE cterm=NONE
hi BufTabLineHidden guifg=#787882 ctermfg=243 guibg=#36363A ctermbg=237 gui=NONE cterm=NONE
hi BufTabLineFill guifg=NONE ctermfg=NONE guibg=#212127 ctermbg=235 gui=NONE cterm=NONE
hi CleverFDefaultLabel guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi cPreCondit guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link cDefine Define
hi cStructure guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link cStorageClass StorageClass
hi link cType Type
hi cCustomParen guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cConditional guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cCustomFunc guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cStatement guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cppSTLnamespace guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cppAccess guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cAnsiFunction guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cRepeat guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cSpecial guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cssVendor guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTagName guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssSelectorOp2 guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttrComma guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link cssFunction Function
hi cssIdentifier guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssInclude guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIncludeKeyword guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssImportant guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi link cssBraces Delimiter
hi cssAttributeSelector guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssMediaType guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi cssMediaKeyword guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssFontDescriptor guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassName guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassNameDot guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssProp guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttr guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssNoise guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssPseudoClass guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAtRuleLogical guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Done guifg=#859933 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Partial guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DashboardFooter guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi DashboardHeader guifg=#5521D9 ctermfg=56 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DashboardCenter guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DashboardShortCut guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link diffAdded DiffAdd
hi link diffRemoved DiffDelete
hi link diffFile Title
hi diffLine guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffSubname guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi dockercomposeKeywords guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link elmTypeDef Type
hi elmType guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi elmTopLevelDecl guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link elmAlias Identifier
hi fugitiveSymbolicRef guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi fugitiveHeader guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi fugitiveHunk guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi fugitiveModifier guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi fzf1 guifg=#CFC1B2 ctermfg=181 guibg=#36363A ctermbg=237 gui=NONE cterm=NONE
hi fzf2 guifg=#FF761A ctermfg=208 guibg=#36363A ctermbg=237 gui=NONE cterm=NONE
hi fzf3 guifg=#FF761A ctermfg=208 guibg=#36363A ctermbg=237 gui=NONE cterm=NONE
hi gitcommitSummary guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitBranch guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedType guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedType guifg=#859933 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedFile guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedFile guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitconfigSection guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitconfigVariable guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsAdd guifg=#859933 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsChange guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsDelete guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsChangeDelete guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goLabel guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goRepeat guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goBuiltins guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goVar guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goPackage guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link goImport goPackage
hi graphqlVariable guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi graphqlStructure guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi graphqlName guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi graphqlKeyword guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi graphqlOperator guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHyperTextJump guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi helpStar guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHeadline guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpSectionDelim guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpOption guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi HighlightedyankRegion guifg=#F8F8FF ctermfg=15 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlEndTag guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link htmlTagName Number
hi htmlSpecialTagName guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH1 guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi htmlH2 guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link htmlH3 htmlH2
hi link htmlH4 htmlH2
hi link htmlH5 htmlH2
hi link htmlH6 htmlH2
hi htmlTitle guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi htmlSpecialChar guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IndentGuidesOdd guifg=NONE ctermfg=NONE guibg=#36363A ctermbg=237 gui=NONE cterm=NONE
hi IndentGuidesEven guifg=NONE ctermfg=NONE guibg=#212127 ctermbg=235 gui=NONE cterm=NONE
hi javaRepeat guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link javaStatement javaRepeat
hi javaScriptBraces guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptNull guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi javaScriptGlobal guifg=#9F97CC ctermfg=140 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi link jsBrackets Delimiter
hi link jsClassBraces jsBrackets
hi link jsBraces jsBrackets
hi link jsObjectBraces jsBrackets
hi link jsParens jsBrackets
hi jsObjectKey guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsFuncBraces jsBrackets
hi link jsFuncParens jsBrackets
hi link jsIfElseBraces jsBrackets
hi jsFuncArgs guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExtendsKeyword guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsArrowFunction Operator
hi jsFunction guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsRepeat jsFunction
hi jsReturn guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassDefinition guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassProperty guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassKeyword guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassFuncName guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncName guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsNull guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi link jsStorageClass StorageClass
hi jsObjectSeparator guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectValue guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefault guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsRegexpCharClass guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateBraces guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsThis guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi jsFuncCall guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectProp guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsConditional guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsVariableDef guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncBlock guifg=#F8F8FF ctermfg=15 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTry guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsCatch jsTry
hi jsTryCatchBraces guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalObjects guifg=#9F97CC ctermfg=140 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi jsParen guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsParenCatch jsParen
hi link jsParenIfElse jsParen
hi jsAsyncKeyword guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsForAwait jsAsyncKeyword
hi jsGlobalNodeObjects guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBoolean guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsonKeywordMatch Delimiter
hi link xmlEqual Operator
hi xmlEndTag guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTagN guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTagName guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsDefaultError guifg=#9E1E00 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsDefaultWarning guifg=#BC8F3F ctermfg=137 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsDefaultInformation guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsDefaultHint guifg=#847B73 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspReferenceRead guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi LspReferenceText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi LspReferenceWrite guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi LspDiagnosticsVirtualTextError guifg=#9E1E00 ctermfg=124 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi LspDiagnosticsVirtualTextWarning guifg=#BC8F3F ctermfg=137 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi LspDiagnosticsVirtualTextHint guifg=#847B73 ctermfg=8 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi LspDiagnosticsVirtualTextInformation guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi LspDiagnosticsUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#9E1E00
hi LspDiagnosticsUnderlineWarning guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#BC8F3F
hi LspDiagnosticsUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#847B73
hi LspDiagnosticsUnderlineInformation guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#787882
hi DiagnosticSignError guifg=#9E1E00 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignWarn guifg=#BC8F3F ctermfg=137 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignInfo guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticSignHint guifg=#847B73 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticError guifg=#9E1E00 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticWarn guifg=#BC8F3F ctermfg=137 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticInfo guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiagnosticHint guifg=#847B73 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ReferenceRead guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi ReferenceText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi ReferenceWrite guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi DiagnosticVirtualTextError guifg=#9E1E00 ctermfg=124 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi DiagnosticVirtualTextWarn guifg=#BC8F3F ctermfg=137 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi DiagnosticVirtualTextHint guifg=#847B73 ctermfg=8 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi DiagnosticVirtualTextInfo guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#9E1E00
hi DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#BC8F3F
hi DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#847B73
hi DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#787882
hi LspSignatureActiveParameter guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi luaFuncKeyword guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncTable guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncName guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncCall guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaFuncArgName guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaCond guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link luaStatement luaCond
hi link luaLocal Constant
hi link luaFuncParens Delimiter
hi link luaParens luaFuncParens
hi link luaBraces luaFuncParens
hi luaDocTag guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi link markdownHeadingDelimiter Delimiter
hi link markdownItemDelimiter Delimiter
hi markdownInlineDelimiter guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link markdownOrderedListMarker Delimiter
hi link markdownListMarker Delimiter
hi link markdownLinkTextDelimiter Delimiter
hi markdownUrl guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi markdownCodeDelimiter guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCode guifg=#878791 ctermfg=102 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link markdownError SpellBad
hi markdownXmlElement guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link mkdLink Underlined
hi mkdURL guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi mkdInlineURL guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi mkdBold guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi htmlBold guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi link mkdListItem Delimiter
hi htmlItalic guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi mkdCode guifg=#878791 ctermfg=102 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi mkdCodeDelimiter guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link mkdHeading Delimiter
hi healthSuccess guifg=#020221 ctermfg=0 guibg=#859933 ctermbg=101 gui=NONE cterm=NONE
hi healthError guifg=#020221 ctermfg=0 guibg=#FF3600 ctermbg=202 gui=NONE cterm=NONE
hi NormalFloat guifg=NONE ctermfg=NONE guibg=#1E1E2F ctermbg=234 gui=NONE cterm=NONE
hi FloatBorder guifg=#36363A ctermfg=237 guibg=#1E1E2F ctermbg=234 gui=NONE cterm=NONE
hi NERDTreeCWD guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeOpenable guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeClosable guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeFlags guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeGitStatusDirDirty guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi netrwClassify guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CmpItemAbbr guifg=#878791 ctermfg=102 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CmpItemAbbrDeprecated guifg=#878791 ctermfg=102 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi CmpItemAbbrMatch guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CmpItemAbbrMatchFuzzy guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi CmpItemKind guifg=#57575E ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CmpItemKindDefault guifg=#57575E ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CmpItemMenu guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyERRORBorder guifg=#9E1E00 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyWARNBorder guifg=#BC8F3F ctermfg=137 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyINFOBorder guifg=#666D26 ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyDEBUGBorder guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyTRACEBorder guifg=#847B73 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyERRORIcon guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyWARNIcon guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyINFOIcon guifg=#859933 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyDEBUGIcon guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyTRACEIcon guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyERRORTitle guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyWARNTitle guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyINFOTitle guifg=#859933 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyDEBUGTitle guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NotifyTRACETitle guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link NotifyERRORBody Normal
hi link NotifyWARNBody Normal
hi link NotifyINFOBody Normal
hi link NotifyDEBUGBody Normal
hi link NotifyTRACEBody Normal
hi NvimTreeFolderName guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeRootFolder guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeFolderIcon guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeEmptyFolderName guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeOpenedFolderName guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeOpenedFile guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi NvimTreeGitDirty guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitStaged guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitMerge guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitRenamed guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitNew guifg=#859933 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitDeleted guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpCommentTitle guifg=#878791 ctermfg=102 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi phpDocTags guifg=#847B73 ctermfg=8 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi phpDocCustomTags guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link phpDocNamespaceSeparator Comment
hi phpUseNamespaceSeparator guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link phpBoolean Boolean
hi phpStorageClass guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpClasses guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpStaticClasses guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi phpClassImplements guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi link phpClassExtends phpClassImplements
hi phpStructure guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi phpMethod guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpFunctions guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpRepeat guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link phpKeyword Keyword
hi link phpType Type
hi link phpParent Delimiter
hi phpMemberSelector guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link phpOperator Operator
hi phpVarSelector guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link phpIdentifier Identifier
hi phpStringDelimiter guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpSuperglobals guifg=#9F97CC ctermfg=140 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi phpSpecialChar guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi link phpNullValue Boolean
hi plugDeleted guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugBracket guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plug1 guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plug2 guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonStatement guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonRepeat guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonFunction guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonExClass guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonBuiltinObj guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonDot guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonBuiltinFunc guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link pythonNone Boolean
hi rstSections guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rstCodeBlock guifg=#878791 ctermfg=102 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rstDirective guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rstHyperlinkTarget guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi rstExDirective guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyClass guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link rubyClassName Normal
hi rubyModule guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link rubyModuleName Normal
hi rubyDefine guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyFunction guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyControl guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyConstant guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyGlobalVariable guifg=#9F97CC ctermfg=140 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi rubySymbol guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link rubyArrayDelimiter Delimiter
hi rubyBlockParameterList guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link rubyCurlyBlockDelimiter Delimiter
hi rubyDoBlock guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyLocalVariableOrMethod guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyMethodBlock guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyHeredocDelimiter guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyCurlyBlock guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link shCaseBar Operator
hi link shQuote Delimiter
hi shFunction guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link shLoop Function
hi link shTestOpr Operator
hi shVariable guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi bashSpecialVariables guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link shSnglCase Delimiter
hi shSetList guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shStatement guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link shSet shStatement
hi Sneak guifg=#F8F8FF ctermfg=15 guibg=#2D1078 ctermbg=4 gui=NONE cterm=NONE
hi SneakLabel guifg=#F8F8FF ctermfg=15 guibg=#2D1078 ctermbg=4 gui=NONE cterm=NONE
hi SneakScope guifg=#F8F8FF ctermfg=15 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link sqlStatement Function
hi sqlKeyword guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link sqlSpecial Number
hi sqlType guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link sqlFunction Title
hi link mysqlKeyword sqlKeyword
hi link mysqlOperator Operator
hi link mysqlFunction sqlType
hi link mysqlStatement sqlStatement
hi link mysqlType sqlType
hi link Quote Delimiter
hi sshconfigKeyword guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi sshconfigMatch guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi sshconfigYesNo guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi sshconfigLogLevel guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySlash guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyPath guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyHeader guifg=#5521D9 ctermfg=56 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFile guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySection guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyNumber guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarComment guifg=#36363A ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarKind guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarNestedKind guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarScope guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarType guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarSignature guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarPseudoID guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarFoldIcon guifg=#787882 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarHighlight guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarVisibilityPublic guifg=#859933 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarVisibilityProtected guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarVisibilityPrivate guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TelescopeBorder guifg=#36363A ctermfg=237 guibg=#18182A ctermbg=234 gui=NONE cterm=NONE
hi TelescopeTitle guifg=#878791 ctermfg=102 guibg=#18182A ctermbg=234 gui=NONE cterm=NONE
hi TelescopeMatching guifg=#FFC552 ctermfg=221 guibg=#18182A ctermbg=234 gui=NONE cterm=NONE
hi TelescopePromptPrefix guifg=#878791 ctermfg=102 guibg=#18182A ctermbg=234 gui=NONE cterm=NONE
hi TelescopeSelection guifg=#DFDFE5 ctermfg=254 guibg=#18182A ctermbg=234 gui=NONE cterm=NONE
hi TelescopeSelectionCaret guifg=#FF761A ctermfg=208 guibg=#18182A ctermbg=234 gui=NONE cterm=NONE
hi TelescopeMultiSelection guifg=#DFDFE5 ctermfg=254 guibg=#18182A ctermbg=234 gui=NONE cterm=NONE
hi TelescopeNormal guifg=#787882 ctermfg=243 guibg=#18182A ctermbg=234 gui=NONE cterm=NONE
hi TelescopePreviewNormal guifg=#B4B4B9 ctermfg=249 guibg=#1E1E2F ctermbg=234 gui=NONE cterm=NONE
hi tmuxCmds guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tmuxOptsSet guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tmuxOptions guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tmuxOptsSetw guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link TSKeyword Keyword
hi link TSVariable Identifier
hi TSMethod guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link TSVariableBuiltin Type
hi link TSFunction Function
hi link TSOperator Operator
hi TSConstructor guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi link TSException Keyword
hi link TSConstant Constant
hi link TSConstBuiltin Boolean
hi TSError guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordFunction guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link twigVarDelim Delimiter
hi link twigTagDelim Delimiter
hi twigString guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi twigOperator guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi twigTagBlock guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlLink guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link twigVariable Identifier
hi twigFilter guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi snipSnippetHeaderKeyword guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link snipSnippetFooterKeyword snipSnippetHeaderKeyword
hi link snipTabStop Identifier
hi snipTabStopDefault guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi link snipMirror snipTabStop
hi link snipSnippetTrigger String
hi link snipSnippetDocContextString Comment
hi DbgBreakptLine guifg=NONE ctermfg=NONE guibg=#031630 ctermbg=233 gui=NONE cterm=NONE
hi DbgBreakptSign guifg=#031630 ctermfg=233 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DbgCurrentLine guifg=NONE ctermfg=NONE guibg=#300E03 ctermbg=233 gui=NONE cterm=NONE
hi DbgCurrentSign guifg=#300E03 ctermfg=233 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterAdd guifg=#859933 ctermfg=101 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChange guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterDelete guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChangeDelete guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SignatureMarkText guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Terminal guifg=#B4B4B9 ctermfg=249 guibg=#020221 ctermbg=0 gui=NONE cterm=NONE
hi titleEntry guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentTitle guifg=#DFDFE5 ctermfg=254 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi vimCommand guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimVar guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimLet guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimNotFunc guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimIsCommand guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link vimOperParen Delimiter
hi vimFuncVar guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi vimFuncName guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimAutoEvent guifg=#FF3600 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimMap guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimGroup guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiTerm guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSetSep guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link vimHighlight vimLet
hi vimSetEqual guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimNotation guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimMapLhs guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimMapRhs guifg=#C8D0E3 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link VimwikiLink Underlined
hi link VimwikiHeaderChar Delimiter
hi VimwikiHeader1 guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi VimwikiHeader2 guifg=#BFDAFF ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link VimwikiHeader3 VimwikiHeader2
hi link VimwikiHeader4 VimwikiHeader2
hi link VimwikiHeader5 VimwikiHeader2
hi link VimwikiHeader6 VimwikiHeader2
hi link VimwikiList Delimiter
hi VimwikiPre guifg=#878791 ctermfg=102 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiCode guifg=#878791 ctermfg=102 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiCodeChar guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiMarkers guifg=#CFC1B2 ctermfg=181 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiBold guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi VimwikiItalic guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi VistaTag guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VistaPrefix guifg=#57575E ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlAttrib guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTag guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlProcessingDelim guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowStringDelimiter guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockCollectionItemStart guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockMappingKey guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowMappingKey guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link yamlFlowIndicator Delimiter
hi link yamlKeyValueDelimiter Delimiter
hi yamlNull guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=Italic cterm=Italic
hi link yamlBool Number
hi yamlPlainScalar guifg=#B4B4B9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshCommands guifg=#FFC552 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link zshBrackets Delimiter
hi zshOptStart guifg=#FF761A ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi zshVariableDef guifg=#99A4BC ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link zshTypes Type
hi link zshKeyword Keyword
hi link zshStringDelimiter Delimiter
hi link zshDelimiter Delimiter
hi link zshParentheses Delimiter

if exists('*term_setansicolors')
  let g:terminal_ansi_colors = repeat([0], 16)

  let g:terminal_ansi_colors[0] = '#000004'
  let g:terminal_ansi_colors[1] = '#FF3600'
  let g:terminal_ansi_colors[2] = '#859933'
  let g:terminal_ansi_colors[3] = '#FFC552'
  let g:terminal_ansi_colors[4] = '#635196'
  let g:terminal_ansi_colors[5] = '#FF761A'
  let g:terminal_ansi_colors[6] = '#34BFA4'
  let g:terminal_ansi_colors[7] = '#B4B4B9'
  let g:terminal_ansi_colors[8] = '#020221'
  let g:terminal_ansi_colors[9] = '#FF8E78'
  let g:terminal_ansi_colors[10] = '#B2BC55'
  let g:terminal_ansi_colors[11] = '#FFD392'
  let g:terminal_ansi_colors[12] = '#99A4BC'
  let g:terminal_ansi_colors[13] = '#FFB07B'
  let g:terminal_ansi_colors[14] = '#8BCCBF'
  let g:terminal_ansi_colors[15] = '#F8F8FF'
endif

if has('nvim')
  let g:terminal_color_0 = '#000004'
  let g:terminal_color_1 = '#FF3600'
  let g:terminal_color_2 = '#859933'
  let g:terminal_color_3 = '#FFC552'
  let g:terminal_color_4 = '#635196'
  let g:terminal_color_5 = '#FF761A'
  let g:terminal_color_6 = '#34BFA4'
  let g:terminal_color_7 = '#B4B4B9'
  let g:terminal_color_8 = '#020221'
  let g:terminal_color_9 = '#FF8E78'
  let g:terminal_color_10 = '#B2BC55'
  let g:terminal_color_11 = '#FFD392'
  let g:terminal_color_12 = '#99A4BC'
  let g:terminal_color_13 = '#FFB07B'
  let g:terminal_color_14 = '#8BCCBF'
  let g:terminal_color_15 = '#F8F8FF'
endif

" ===================================
" Generated by Estilo 1.5.1
" https://github.com/jacoborus/estilo
" ===================================
