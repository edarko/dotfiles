:set autoindent
:set cindent
:set fillchars+=vert:\ 
execute pathogen#infect()
au VimEnter *  NERDTree
syntax on
let g:NERDTreeWinSize = 35 
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
:set number
highlight clear
if exists("syntax_on")
syntax reset
endif

set t_Co=256

let g:colors_name="bulldog"
 
" Basic -------------------------------------------
 
hi Normal               ctermfg=15      ctermbg=none    cterm=none
hi NonText              ctermfg=15      ctermbg=none    cterm=none
hi Directory            ctermfg=208     ctermbg=none    cterm=bold
hi SpecialKey           ctermfg=208     ctermbg=none    cterm=none
hi LineNr               ctermfg=208     ctermbg=none     cterm=none
hi IncSearch            ctermfg=none    ctermbg=none    cterm=reverse
hi Search               ctermfg=16      ctermbg=208     cterm=reverse
hi Visual               ctermfg=16      ctermbg=208     cterm=none
hi VisualNOS            ctermfg=none    ctermbg=none    cterm=bold
hi ModeMsg              ctermfg=208     ctermbg=none    cterm=none
hi MoreMsg              ctermfg=208     ctermbg=none    cterm=none
hi Question             ctermfg=208     ctermbg=none    cterm=none
hi ErrorMsg             ctermfg=16      ctermbg=208     cterm=none
hi WarningMsg           ctermfg=208     ctermbg=none    cterm=none
hi WildMenu             ctermfg=16      ctermbg=208     cterm=none
hi Folded               ctermfg=102     ctermbg=none    cterm=none
hi FoldColumn           ctermfg=16      ctermbg=208     cterm=none
hi DiffAdd              ctermfg=16      ctermbg=15      cterm=bold
hi DiffChange           ctermfg=16      ctermbg=208     cterm=bold
hi DiffDelete           ctermfg=16      ctermbg=208     cterm=bold
hi DiffText             ctermfg=16      ctermbg=208     cterm=bold
hi StatusLine           ctermfg=15      ctermbg=236     cterm=bold
hi StatusLineNC         ctermfg=102     ctermbg=236     cterm=none
hi VertSplit            ctermfg=255     ctermbg=233    cterm=none
hi Title                ctermfg=15      ctermbg=none    cterm=bold
hi MatchParen           ctermfg=16      ctermbg=208     cterm=none
hi TabLineFill          ctermfg=250     ctermbg=none    cterm=none
hi TabLineSel           ctermfg=none    ctermbg=208     cterm=bold
hi TabLine              ctermfg=none     ctermbg=none    cterm=none
 
" Syntax ------------------------------------------
 
hi Comment              ctermfg=208     ctermbg=none    cterm=bold
hi Function             ctermfg=208     ctermbg=none    cterm=bold
hi PreProc              ctermfg=15      ctermbg=none    cterm=none
hi Constant             ctermfg=15      ctermbg=none    cterm=none
hi Type                 ctermfg=246     ctermbg=none    cterm=none
hi Statement            ctermfg=246     ctermbg=none    cterm=none
hi Identifier           ctermfg=15      ctermbg=none    cterm=none
hi String               ctermfg=208     ctermbg=none    cterm=none
hi Ignore               ctermfg=246     ctermbg=none    cterm=bold
hi Special              ctermfg=208     ctermbg=none    cterm=none
"hi Error               ctermfg=16      ctermbg=208     cterm=none
hi Error                ctermfg=none    ctermbg=none    cterm=none
hi Todo                 ctermfg=15      ctermbg=none    cterm=none
hi Underlined           ctermfg=208     ctermbg=none    cterm=underline
hi Number               ctermfg=15      ctermbg=none    cterm=none
 
" Syntax Links ------------------------------------
 
hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Number          Constant
hi link Conditional     Statement
hi link Repeat          Statement
hi link Label           Statement
hi link Keyword         Statement
hi link Operator        Statement
hi link Exception       Error
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special

" VimDiff
hi DiffAdd	ctermfg=251	ctermbg=22	cterm=NONE
hi DiffChange	ctermfg=251	ctermbg=98	cterm=NONE
hi DiffDelete	ctermfg=88	ctermbg=88	cterm=NONE
hi DiffText	ctermfg=251	ctermbg=NONE	cterm=NONE


" Special for Java
hi link javaScopeDecl         Identifier
hi link javaCommentTitle      javaDocSeeTag
hi link javaDocTags           javaDocSeeTag
hi link javaDocParam          javaDocSeeTag
hi link javaDocSeeTagParam    javaDocSeeTag

hi  javaDocSeeTag ctermfg=229 ctermbg=NONE cterm=NONE


" Special for Python
hi link pythonStatement Identifier
hi pythonBuiltin	ctermfg=42	ctermbg=NONE	cterm=UNDERLINE
hi pythonOperator	ctermfg=166	ctermbg=NONE	cterm=NONE
