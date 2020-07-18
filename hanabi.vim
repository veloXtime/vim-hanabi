" HANABI
" veloxtime
" A color Scheme for Both Gui and Term

highlight clear

if exists('syntax_on')
	syntax reset
endif

set background=dark

let g:colors_name = "hanabi"

let g:lilac_italics = get(g:, 'lilac_italics', 0)

" Color Palette
let s:gray1			= [ '#1b202a', 233 ]
let s:gray2			= [ '#232936', 238 ]
let s:gray3			= [ '#323c4d', 240 ]
let s:dbg			= [ '#51617d', 60  ] " dark blue gray
let s:lbg			= [ '#9aa7bd', 188 ] " light blue gray
let s:llbg			= [ '#bac2cf', 252 ] " light light blue gray
let s:cream			= [ '#e6d8b3', 222 ] " cream
let s:rust			= [ '#a1561c', 130 ]
let s:pistachio		= [ '#759666', 108 ]
let s:grass			= [ '#91b382', 108 ]
let s:olive			= [ '#556B2F', 108 ]
let s:chestnut		= [ '#91463f', 108 ]
let s:violet		= [ '#888bba', 104 ] " light violet
let s:blue			= [ '#5285c4', 110 ]
let s:iceberg		= [ '#74a8a7', 110 ]
let s:frost			= [ '#91a5c2', 110 ]
let s:pink			= [ '#a182b2', 139 ] " '#535486' '#878CB4''#7c6992'
let s:cyan			= [ '#5da3b2', 109 ] " '#7c6992' '#56adb7'
let s:yellow		= [ '#b5a262', 179 ] " '#a86f5f'
let s:lilac			= [ '#a7a2c3', 146 ] " '#3e5824''#b07c83'
let s:comm			= [ '#51667a', 59  ] " '#566C73' '#6a8e89'


" attr-list:
" bold, underline, undercurl, italic, standout

function! CH(group, fg, bg, attr)
	let l:attr = a:attr
	if !g:lilac_italics && l:attr ==# 'italic'
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
	call CH('Normal',               s:lbg,      s:gray1,        'none')
else
 	exe 'hi Normal term=none cterm=none gui=none'
endif


" Editor Highlights

call CH('ColorColumn',			'',				s:dbg,			'')
call CH('Cursor',				s:gray2,		s:llbg,			'')
call CH('CursorColumn',			'',				s:gray2,		'')
call CH('CursorLine',			'',				s:gray2,		'none')
call CH('Directory',			s:blue,			'',				'')
call CH('DiffAdd',				s:gray3,		s:pistachio,	'none')
call CH('DiffChange',			s:gray3,		s:violet,		'none')
call CH('DiffDelete',			s:gray3,		s:rust,			'none')
call CH('DiffText',				s:gray3,		s:blue,			'none')
call CH('ErrorMsg',				s:chestnut,		s:gray1,		'bold')
call CH('VertSplit',			s:dbg,			s:gray1,		'none')
call CH('Folded',				s:gray3,		s:gray1,		'')
call CH('FoldColumn',			s:cyan,			s:gray1,		'')
call CH('SignColumn',			s:gray2,		s:gray1,		'')
call CH('LineNr',				s:gray3,		'',				'')
call CH('CursorLineNr',			s:lbg,			s:gray2,		'none')
call CH('MatchParen',			s:gray2,		s:lilac,		'bold')
call CH('ModeMsg',				s:iceberg,		'',				'')
call CH('MoreMsg',				s:pistachio,	'',				'')
call CH('NonText',				s:dbg,			'',				'')
call CH('Pmenu',				s:lbg,			s:gray3,		'')
call CH('PmenuSel',				s:gray2,		s:blue,			'')
call CH('PmenuSbar',			s:gray3,		s:dbg,			'')
call CH('PmenuThumb',			s:dbg,			s:lbg,			'')
call CH('Question',				s:grass,		'',				'')
call CH('Search',				s:gray1,		s:violet,		'')
call CH('SpecialKey',			s:dbg,			'',				'')
call CH('SpellCap',				s:blue,			'',				'undercurl')
call CH('SpellBad',				s:rust,			'',				'undercurl')
call CH('StatusLine',			s:lbg,			s:gray3,		'none')
call CH('StatusLineTerm',		s:llbg,			s:gray3,		'none')
call CH('StatusLineTermNC',		s:gray2,		s:dbg,			'')
call CH('TabLine',				s:gray3,		s:gray1,		'none')
call CH('TabLineFill',			s:dbg,			s:gray2,		'none')
call CH('TabLineSel',			s:gray2,		s:dbg,			'')
call CH('Title',				s:violet,		'',				'none')
call CH('ToolbarButton',		s:lilac,		'',				'none')

call CH('Visual',				s:lbg,			s:gray3,        '')
call CH('WarningMsg',			s:rust,			'',             '')
call CH('WildMenu',				s:gray2,		s:blue,         '')

" Standard Syntax
call CH('Comment',				s:comm, '',         'italic')
call CH('Constant',				s:lilac,   '',         '')
call CH('Special',				s:cyan,     '',         '')
call CH('String',				s:pistachio,    '',         '')
call CH('Character',			s:grass,    '',         '')
call CH('Identifier',			s:pink,     '',         'none')
call CH('Function',				s:violet, '',         '')
call CH('Statement',			s:blue,     '',         'none')
call CH('Operator',				s:cyan,     '',         'none')
call CH('PreProc',				s:iceberg,     '',         '')
call CH('Define',				s:blue,     '',         '')
call CH('Macro',				s:iceberg,     '',         '')
call CH('Type',					s:yellow,   '',         'none')
call CH('Structure',			s:pink,     '',         '')
call CH('Special',				s:cyan,     '',         '')
call CH('Underlined',			s:frost,     '',         'none')
call CH('Error',				s:chestnut,   s:gray1,    'bold')
call CH('Todo',					s:lilac,   s:gray1,    'bold')

" CSS/Sass/Less
call CH('cssAttrComma',         s:pistachio,    '',         '')
call CH('cssAttributeSelector', s:grass,    '',         '')
call CH('cssBraces',            s:lbg,		'',         '')
call CH('cssClassName',         s:frost,		'',         '')
call CH('cssClassNameDot',      s:yellow,		'',         '')
call CH('cssIdentifier',        s:violet,		'',         '')
call CH('cssImportant',         s:pink,			'',         '')
call CH('cssMediaType',         s:pink,			'',         '')
call CH('cssProp',              s:lbg,		'',         '')
call CH('cssSelectorOp',        s:blue,			'',         '')
call CH('cssSelectorOp2',       s:blue,			'',         '')

call CH('sassAmpersand',                  s:blue,     '',         '')
call CH('sassClass',                      s:yellow,   '',         '')
call CH('sassClassChar',                  s:yellow,   '',         '')

call CH('lessAmpersand',                  s:blue,     '',         '')
call CH('lessClass',                      s:yellow,   '',         '')
call CH('lessClassChar',                  s:yellow,   '',         '')
call CH('lessFunction',                   s:violet, '',         '')
call CH('lessCssAttribute',               s:lbg,    '',         '')

" Git
call CH('gitcommitComment',               s:dbg,    '',         'italic')
call CH('gitcommitOnBranch',              s:dbg,    '',         'italic')
call CH('gitcommitFile',                  s:cyan,     '',         '')
call CH('gitcommitHeader',                s:pink,     '',         '')
call CH('gitcommitBranch',                s:yellow,   '',         '')
call CH('gitcommitUnmerged',              s:pistachio,    '',         '')
call CH('gitcommitUntrackedFile',         s:cyan,     '',         '')
call CH('gitcommitSelectedFile',          s:pistachio,    '',         '')
call CH('gitcommitDiscardedFile',         s:rust,   '',         '')
call CH('gitcommitUnmergedFile',          s:violet, '',         '')
call CH('gitcommitSelectedType',          s:pistachio,    '',         '')
call CH('gitcommitDiscardedType',         s:rust,   '',         '')
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

" HTML
call CH('htmlArg',                        s:violet, '',         '')
call CH('htmlEndTag',                     s:pink,     '',         '')
call CH('htmlTag',                        s:pink,     '',         '')
call CH('htmlTagName',                    s:blue,     '',         '')
call CH('htmlTitle',                      s:lbg,    '',         '')

" Javascript
call CH('javaScriptBraces',               s:lbg,    '',         '')
call CH('javaScriptIdentifier',           s:pink,     '',         '')
call CH('javaScriptFunction',             s:blue,     '',         '')
call CH('javaScriptNumber',               s:olive,   '',         '')
call CH('javaScriptReserved',             s:frost,     '',         '')
call CH('javaScriptRequire',              s:cyan,     '',         '')
call CH('javaScriptNull',                 s:iceberg,   '',         '')

" Ruby
call CH('rubyBlockParameterList',         s:pink,     '',         '')
call CH('rubyInterpolationDelimiter',     s:pink,     '',         '')
call CH('rubyStringDelimiter',            s:pistachio,    '',         '')
call CH('rubyRegexpSpecial',              s:cyan,     '',         '')

" Vim-Fugitive
call CH('diffAdded',                      s:pistachio,    '',         '')
call CH('diffRemoved',                    s:rust,   '',         '')

" Vim-Gittgutter
hi link GitGutterAdd    SignifySignAdd
hi link GitGutterChange SignifySignChange
hi link GitGutterDelete SignifySignDelete
call CH('GitGutterChangeDelete',          s:yellow,   '',         '')

" Vim-Signify
call CH('SignifySignAdd',                 s:pistachio,    '',         '')
call CH('SignifySignChange',              s:violet, '',         '')
call CH('SignifySignDelete',              s:rust,   '',         '')

