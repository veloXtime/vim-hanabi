"HANABI"
"velo.x

highlight clear

if exists('syntax_on')
    syntax reset
endif


set background=dark

let g:colors_name = "hanabi"

let g:midori_italics = get(g:, 'midori_italics', 0)

" Color Palette
let s:gray1     = [ '#1b202a', 233 ]
let s:gray2     = [ '#232936', 238 ]
let s:gray3     = [ '#323c4d', 240 ]
let s:gray4     = [ '#51617d', 60  ]
let s:gray5     = [ '#9aa7bd', 188 ]
let s:orange    = [ '#a1561c', 130 ] " '#5b618f' '#8a391b' '#b15e7c'
let s:green     = [ '#709460', 108 ] "'#44693d' '#8d89ca'
let s:murasaki  = [ '#7C7FAB', 104 ] "'#8866BC' '#7c6992' '#595478' '#b5a262' 
let s:blue      = [ '#608cc3', 110 ]
let s:pink      = [ '#a182b2', 139 ]  " '#535486' '#878CB4''#7c6992'
let s:cyan      = [ '#5da3b2', 109 ] " '#7c6992' '#56adb7'
let s:yellow    = [ '#b5a262', 179 ] "'#a86f5f'
let s:midori    = [ '#a7a2c3', 146 ] " '#3e5824''#b07c83'
let s:comcolor  = [ '#7594b3', 59  ] " '#566C73' '#6a8e89'


function! CH(group, fg, bg, attr)
    let l:attr = a:attr
    if !g:midori_italics && l:attr ==# 'italic'
        let l:attr = 'none'
    endif
    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg[0]
        exec "hi " . a:group . " ctermfg=" . a:fg[1]
    endif
    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg[0]
        exec "hi " . a:group . " ctermbg=" . a:bg[1]

    endif
    if !empty(a:attr)
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

if has('gui_running')
	call CH('Normal',               s:gray5,      s:gray1,        'none')
else
 	exe 'hi Normal term=none cterm=none gui=none'
endif


" Editor Highlights
call CH('ColorColumn',          '',           s:gray4,        '')
call CH('Cursor',               s:gray2,      s:gray5,        '')
call CH('CursorColumn',         '',           s:gray2,        '')
call CH('CursorLine',           '',           s:gray2,        'none')
call CH('Directory',            s:blue,       '',             '')
call CH('DiffAdd',              s:gray3,      s:green,        'none')
call CH('DiffChange',           s:gray3,      s:murasaki,     'none')
call CH('DiffDelete',           s:gray3,      s:orange,       'none')
call CH('DiffText',             s:gray3,      s:blue,         'none')
call CH('ErrorMsg',             s:orange,     s:gray1,        'bold')
call CH('VertSplit',            s:gray4,      s:gray1,        'none')
call CH('Folded',               s:gray3,      s:gray1,        '')
call CH('FoldColumn',           s:cyan,       s:gray1,        '')
call CH('SignColumn',           s:gray2,      s:gray1,        '')
call CH('LineNr',               s:gray3,      '',             '')
call CH('CursorLineNr',         s:gray5,      s:gray2,        'none')
call CH('MatchParen',           s:gray2,      s:midori,       'bold')
call CH('ModeMsg',              s:green,      '',             '')
call CH('MoreMsg',              s:green,      '',             '')
call CH('NonText',              s:gray4,      '',             '')
" call CH('Normal',               s:gray5,      s:gray1,        'none')
call CH('Pmenu',                s:gray5,      s:gray3,        '')
call CH('PmenuSel',             s:gray2,      s:blue,         '')
call CH('PmenuSbar',            s:gray3,      s:gray4,        '')
call CH('PmenuThumb',           s:gray4,      s:gray5,        '')
call CH('Question',             s:green,      '',             '')
call CH('Search',               s:gray1,      s:murasaki,     '')
call CH('SpecialKey',           s:gray4,      '',             '')
call CH('SpellCap',             s:blue,       '',             'undercurl')
call CH('SpellBad',             s:orange,     '',             'undercurl')
call CH('StatusLine',           s:gray5,      s:gray3,        'none')
call CH('StatusLineNC',         s:gray2,      s:gray4,        '')
call CH('TabLine',              s:gray3,      s:gray1,        'none')
call CH('TabLineFill',          s:gray4,      s:gray2,        'none')
call CH('TabLineSel',           s:gray2,      s:gray4,        '')
call CH('Title',                s:murasaki,   '',             'none')
call CH('Visual',               s:gray5,      s:gray3,        '')
call CH('WarningMsg',           s:orange,     '',             '')
call CH('WildMenu',             s:gray2,      s:blue,         '')

" Standard Syntax
call CH('Comment',              s:comcolor, '',         'italic')
call CH('Constant',             s:midori,   '',         '')
call CH('String',               s:green,    '',         '')
call CH('Character',            s:green,    '',         '')
call CH('Identifier',           s:pink,     '',         'none')
call CH('Function',             s:murasaki, '',         '')
call CH('Statement',            s:blue,     '',         'none')
call CH('Operator',             s:cyan,     '',         'none')
call CH('PreProc',              s:cyan,     '',         '')
call CH('Define',               s:blue,     '',         '')
call CH('Macro',                s:blue,     '',         '')
call CH('Type',                 s:yellow,   '',         'none')
call CH('Structure',            s:blue,     '',         '')
call CH('Special',              s:cyan,     '',         '')
call CH('Underlined',           s:blue,     '',         'none')
call CH('Error',                s:orange,   s:gray1,    'bold')
call CH('Todo',                 s:midori,   s:gray1,    'bold')

" CSS/Sass/Less
call CH('cssAttrComma',         s:green,    '',         '')
call CH('cssAttributeSelector', s:green,    '',         '')
call CH('cssBraces',            s:gray5,    '',         '')
call CH('cssClassName',         s:yellow,   '',         '')
call CH('cssClassNameDot',      s:yellow,   '',         '')
call CH('cssIdentifier',        s:murasaki, '',         '')
call CH('cssImportant',         s:pink,     '',         '')
call CH('cssMediaType',         s:pink,     '',         '')
call CH('cssProp',              s:gray5,    '',         '')
call CH('cssSelectorOp',        s:blue,     '',         '')
call CH('cssSelectorOp2',       s:blue,     '',         '')

call CH('sassAmpersand',                  s:blue,     '',         '')
call CH('sassClass',                      s:yellow,   '',         '')
call CH('sassClassChar',                  s:yellow,   '',         '')

call CH('lessAmpersand',                  s:blue,     '',         '')
call CH('lessClass',                      s:yellow,   '',         '')
call CH('lessClassChar',                  s:yellow,   '',         '')
call CH('lessFunction',                   s:murasaki, '',         '')
call CH('lessCssAttribute',               s:gray5,    '',         '')

" Git
call CH('gitcommitComment',               s:gray4,    '',         'italic')
call CH('gitcommitOnBranch',              s:gray4,    '',         'italic')
call CH('gitcommitFile',                  s:cyan,     '',         '')
call CH('gitcommitHeader',                s:pink,     '',         '')
call CH('gitcommitBranch',                s:yellow,   '',         '')
call CH('gitcommitUnmerged',              s:green,    '',         '')
call CH('gitcommitUntrackedFile',         s:cyan,     '',         '')
call CH('gitcommitSelectedFile',          s:green,    '',         '')
call CH('gitcommitDiscardedFile',         s:orange,   '',         '')
call CH('gitcommitUnmergedFile',          s:murasaki, '',         '')
call CH('gitcommitSelectedType',          s:green,    '',         '')
call CH('gitcommitDiscardedType',         s:orange,   '',         '')
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

" HTML
call CH('htmlArg',                        s:murasaki, '',         '')
call CH('htmlEndTag',                     s:pink,     '',         '')
call CH('htmlTag',                        s:pink,     '',         '')
call CH('htmlTagName',                    s:blue,     '',         '')
call CH('htmlTitle',                      s:gray5,    '',         '')

" Javascript
call CH('javaScriptBraces',               s:gray5,    '',         '')
call CH('javaScriptIdentifier',           s:blue,     '',         '')
call CH('javaScriptFunction',             s:blue,     '',         '')
call CH('javaScriptNumber',               s:orange,   '',         '')
call CH('javaScriptReserved',             s:blue,     '',         '')
call CH('javaScriptRequire',              s:cyan,     '',         '')
call CH('javaScriptNull',                 s:orange,   '',         '')

" Ruby
call CH('rubyBlockParameterList',         s:pink,     '',         '')
call CH('rubyInterpolationDelimiter',     s:pink,     '',         '')
call CH('rubyStringDelimiter',            s:green,    '',         '')
call CH('rubyRegexpSpecial',              s:cyan,     '',         '')

" Vim-Fugitive
call CH('diffAdded',                      s:green,    '',         '')
call CH('diffRemoved',                    s:orange,   '',         '')

" Vim-Gittgutter
hi link GitGutterAdd    SignifySignAdd
hi link GitGutterChange SignifySignChange
hi link GitGutterDelete SignifySignDelete
call CH('GitGutterChangeDelete',          s:yellow,   '',         '')

" Vim-Signify
call CH('SignifySignAdd',                 s:green,    '',         '')
call CH('SignifySignChange',              s:murasaki, '',         '')
call CH('SignifySignDelete',              s:orange,   '',         '')




