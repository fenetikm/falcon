" ===============================================================
" falcon
" 
" URL: https://github.com/fenetikm/falcon
" Author: Michael Welford
" License: MIT
" Last Change: 2018/02/10 17:09
" ===============================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="falcon"

hi ALEErrorSign guifg=#ff5000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ALEWarningSign guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ALEInfoSign guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Cursor guifg=NONE ctermfg=NONE guibg=#606065 ctermbg=241 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#363638 ctermbg=237 gui=NONE cterm=NONE
hi CursorLineNr guifg=#a3a3a6 ctermfg=248 guibg=#363638 ctermbg=237 gui=NONE cterm=NONE
hi Directory guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE ctermfg=NONE guibg=#435943 ctermbg=238 gui=NONE cterm=NONE
hi DiffChange guifg=NONE ctermfg=NONE guibg=#595943 ctermbg=240 gui=NONE cterm=NONE
hi DiffDelete guifg=NONE ctermfg=NONE guibg=#594343 ctermbg=238 gui=NONE cterm=NONE
hi DiffText guifg=NONE ctermfg=NONE guibg=#435943 ctermbg=238 gui=NONE cterm=NONE
hi ErrorMsg guifg=#ff5000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#606065 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#606065 ctermfg=241 guibg=#26262a ctermbg=235 gui=NONE cterm=NONE
hi SignColumn guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#000002 ctermfg=0 guibg=#d4d6f4 ctermbg=189 gui=NONE cterm=NONE
hi LineNr guifg=#606065 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#d4d6f4 ctermfg=189 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi NonText guifg=#363638 ctermfg=237 guibg=#0b0b1a ctermbg=233 gui=NONE cterm=NONE
hi Normal guifg=#e1e1e6 ctermfg=254 guibg=#0b0b1a ctermbg=233 gui=NONE cterm=NONE
hi PMenu guifg=#e1e1e6 ctermfg=254 guibg=#363638 ctermbg=237 gui=NONE cterm=NONE
hi PMenuSel guifg=#000002 ctermfg=0 guibg=#ffd500 ctermbg=220 gui=NONE cterm=NONE
hi PmenuSbar guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PmenuThumb guifg=#a3a3a6 ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Question guifg=#a3a3a6 ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Search guifg=#000002 ctermfg=0 guibg=#9cd481 ctermbg=150 gui=NONE cterm=NONE
hi SpecialKey guifg=#808080 ctermfg=8 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#e1e1e6 ctermfg=254 guibg=#606065 ctermbg=241 gui=NONE cterm=NONE
hi StatusLineNC guifg=#a3a3a6 ctermfg=248 guibg=#606065 ctermbg=241 gui=NONE cterm=NONE
hi TabLine guifg=#606065 ctermfg=241 guibg=#363638 ctermbg=237 gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#26262a ctermbg=235 gui=NONE cterm=NONE
hi TabLineSel guifg=#a3a3a6 ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#9cd481 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Visual guifg=#faf4c6 ctermfg=230 guibg=#606065 ctermbg=241 gui=NONE cterm=NONE
hi WildMenu guifg=#0b0b1a ctermfg=233 guibg=#ffd500 ctermbg=220 gui=NONE cterm=NONE
hi Comment guifg=#606065 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Constant guifg=#ff5000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#a3a3a6 ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Character String
hi link Boolean Constant
hi link Number String
hi link Float String
hi Identifier guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi Function guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi Operator guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi link Exception Statement
hi PreProc guifg=#faf4c6 ctermfg=230 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi Type guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type
hi Special guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SpecialChar Special
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special
hi Todo guifg=#000002 ctermfg=0 guibg=#faf4c6 ctermbg=230 gui=NONE cterm=NONE
hi QuickFixLine guifg=#ff5000 ctermfg=202 guibg=#26262a ctermbg=235 gui=NONE cterm=NONE
hi BufTabLineCurrent guifg=#e1e1e6 ctermfg=254 guibg=#606065 ctermbg=241 gui=NONE cterm=NONE
hi BufTabLineActive guifg=#a3a3a6 ctermfg=248 guibg=#363638 ctermbg=237 gui=NONE cterm=NONE
hi BufTabLineHidden guifg=#606065 ctermfg=241 guibg=#363638 ctermbg=237 gui=NONE cterm=NONE
hi BufTabLineFill guifg=NONE ctermfg=NONE guibg=#26262a ctermbg=235 gui=NONE cterm=NONE
hi cssTagName guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIdentifier guifg=#d4d6f4 ctermfg=189 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssInclude guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIncludeKeyword guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssImportant guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi cssBraces guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttributeSelector guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassName guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassNameDot guifg=#a3a3a6 ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi fzf1 guifg=#ffd500 ctermfg=220 guibg=#363638 ctermbg=237 gui=NONE cterm=NONE
hi fzf2 guifg=#ff9800 ctermfg=208 guibg=#363638 ctermbg=237 gui=NONE cterm=NONE
hi fzf3 guifg=#ff9800 ctermfg=208 guibg=#363638 ctermbg=237 gui=NONE cterm=NONE
hi gitcommitSummary guifg=#9cd481 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IndentGuidesOdd guifg=NONE ctermfg=NONE guibg=#363638 ctermbg=237 gui=NONE cterm=NONE
hi IndentGuidesEven guifg=NONE ctermfg=NONE guibg=#26262a ctermbg=235 gui=NONE cterm=NONE
hi javaScriptBraces guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsBrackets guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsClassBraces jsBrackets
hi link jsBraces jsBrackets
hi link jsObjectBraces jsBrackets
hi link jsParens jsBrackets
hi jsObjectKey guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link jsFuncBraces jsBrackets
hi link jsFuncParens jsBrackets
hi link jsIfElseBraces jsBrackets
hi jsFuncArgs guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExtendsKeyword guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsArrowFunction guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFunction guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsReturn guifg=#faf4c6 ctermfg=230 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassDefinition guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassProperty guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassKeyword guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassFuncName guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncName guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsNull guifg=#faf4c6 ctermfg=230 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsStorageClass guifg=#faf4c6 ctermfg=230 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectSeparator guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectValue guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefault guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsRegexpCharClass guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateBraces guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBoolean guifg=#ff5000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlEqual guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlEndTag guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTagN guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTagName guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeCWD guifg=#faf4c6 ctermfg=230 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpCommentTitle guifg=#a3a3a6 ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpDocTags guifg=#faf4c6 ctermfg=230 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpDocCustomTags guifg=#d4d6f4 ctermfg=189 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpStorageClass guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpClasses guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi phpStructure guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi phpNumber guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link phpFloat phpNumber
hi phpMethod guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpRepeat guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpKeyword guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpType guifg=#faf4c6 ctermfg=230 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpMemberSelector guifg=#a3a3a6 ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpOperator guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpVarSelector guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpIdentifier guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyDefine guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyFunction guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyConstant guifg=#faf4c6 ctermfg=230 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyArrayDelimiter guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyBlockParameterList guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyCurlyBlockDelimiter guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySlash guifg=#606065 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyPath guifg=#606065 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyHeader guifg=#d4d6f4 ctermfg=189 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFile guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySection guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarComment guifg=#363638 ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarKind guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarNestedKind guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarScope guifg=#faf4c6 ctermfg=230 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarType guifg=#a3a3a6 ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarSignature guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarPseudoID guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarFoldIcon guifg=#606065 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarHighlight guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarVisibilityPublic guifg=#718e54 ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarVisibilityProtected guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TagbarVisibilityPrivate guifg=#ff5000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterAdd guifg=#718e54 ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChange guifg=#a3a3a6 ctermfg=248 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterDelete guifg=#ff5000 ctermfg=202 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChangeDelete guifg=#ff9800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SignatureMarkText guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentTitle guifg=#606065 ctermfg=241 guibg=NONE ctermbg=NONE gui=bold,italic cterm=bold,italic
hi yamlBlockCollectionItemStart guifg=#ffd500 ctermfg=220 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockMappingKey guifg=#8f97b3 ctermfg=103 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowMappingKey guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlKeyValueDelimiter guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlNull guifg=#ff5000 ctermfg=202 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi link yamlBool yamlNull
hi yamlPlainScalar guifg=#e1e1e6 ctermfg=254 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


" ===================================
" Generated by Estilo 1.3.3
" https://github.com/jacoborus/estilo
" ===================================
