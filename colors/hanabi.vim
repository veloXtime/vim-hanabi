" -----------------------------------------------------------------------------
" Name:			hanabi
" Description:	Minimal but Colorful Color Scheme for Vim
" Author:		Hanyu Xu
" Website:		https://github.com/veloXtime/vim-hanabi
" License:		MIT
" -----------------------------------------------------------------------------"


hi clear

if exists('syntax_on')
	syntax reset
endif

set background=dark

let g:colors_name = "hanabi"

let g:hanabi_italics = get(g:, 'hanabi_italics', 0)


" colors
let s:gray1		= [ '#1b202a', 233 ]	" very dark gray
let s:gray2		= [ '#2b3140', 238 ]	" dark gray
let s:gray3		= [ '#323c4d', 240 ]	" gray
let s:gray4		= [ '#99aac2', 110 ]	
let s:gray5		= [ '#51617d', 60  ]	" dark blue gray
let s:gray6		= [ '#9aa7bd', 188 ]	" light blue gray
let s:gray7		= [ '#bac2cf', 252 ]	" light light blue gray

let s:beige		= [ '#e6d8b3', 222 ]
let s:yellow	= [ '#b5a262', 179 ]
let s:rust		= [ '#a1561c', 130 ]
let s:chestnut	= [ '#91463f', 108 ]

let s:green		= [ '#759666', 108 ]
let s:grass		= [ '#91b382', 108 ]
let s:olive		= [ '#556B2F', 108 ]

let s:violet	= [ '#888bba', 104 ]
let s:blue		= [ '#5285c4', 110 ]
let s:iceberg	= [ '#74a8a7', 110 ]
let s:frost		= [ '#91a5c2', 110 ]
let s:cyan		= [ '#5da3b2', 109 ]
let s:lilac		= [ '#a7a2c3', 146 ]
let s:pink		= [ '#a182b2', 139 ]

let s:comm		= [ '#51667a', 59  ]




function! CH(group, fg, bg, attr)
	let l:attr = a:attr
	if !g:hanabi_italics && l:attr ==# 'italic'
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
	call CH('Normal',	s:gray6,	s:gray1,	'none')
else
 	exe 'hi Normal term=none cterm=none gui=none'
endif


" Editor Highlights
call CH('Comment',				s:comm,			'',				'italic')
call CH('Constant',				s:green,		'',				'')
call CH('Special',				s:cyan,			'',				'')
call CH('String',				s:yellow,		'',				'')
call CH('Character',			s:grass,		'',				'')
call CH('Identifier',			s:violet,		'',				'none')
call CH('Function',				s:pink,			'',				'')
call CH('Statement',			s:blue,			'',				'none')
call CH('Operator',				s:gray4,		'',				'none')
call CH('PreProc',				s:pink,			'',				'')
call CH('Define',				s:blue,			'',				'')
call CH('Macro',				s:iceberg,		'',				'')
call CH('Type',					s:cyan,			'',				'none')
call CH('Structure',			s:lilac,		'',				'')

call CH('ColorColumn',			'',				s:gray5,		'')

call CH('Cursor',				s:gray2,		s:gray7,		'')
call CH('CursorColumn',			'',				s:gray2,		'')
call CH('CursorLine',			'',				s:gray2,		'none')

call CH('Directory',			s:blue,			'',				'')

call CH('DiffAdd',				s:gray3,		s:green,		'none')
call CH('DiffChange',			s:gray3,		s:violet,		'none')
call CH('DiffDelete',			s:gray3,		s:rust,			'none')
call CH('DiffText',				s:gray3,		s:blue,			'none')

call CH('ErrorMsg',				s:chestnut,		s:gray1,		'bold')

call CH('VertSplit',			s:gray5,		s:gray1,		'none')

call CH('Folded',				s:gray3,		s:gray1,		'')
call CH('FoldColumn',			s:cyan,			s:gray1,		'')
call CH('SignColumn',			s:gray2,		s:gray1,		'')

call CH('LineNr',				s:gray3,		'',				'')
call CH('CursorLineNr',			s:gray6,		s:gray2,		'none')

call CH('MatchParen',			s:gray2,		s:lilac,		'bold')

call CH('ModeMsg',				s:iceberg,		'',				'')
call CH('MoreMsg',				s:green,		'',				'')

call CH('NonText',				s:gray5,		'',				'')

call CH('Pmenu',				s:gray6,		s:gray3,		'')
call CH('PmenuSel',				s:gray2,		s:blue,			'')
call CH('PmenuSbar',			s:gray3,		s:gray5,			'')
call CH('PmenuThumb',			s:gray5,		s:gray6,			'')

call CH('Question',				s:grass,		'',				'')

call CH('Search',				s:gray1,		s:violet,		'')

call CH('SpecialKey',			s:gray5,		'',				'')

call CH('SpellCap',				s:blue,			'',				'undercurl')
call CH('SpellBad',				s:rust,			'',				'undercurl')
call CH('SpellRare',			s:rust,			'',				'undercurl')
call CH('SpellLocal',			s:rust,			'',				'undercurl')


call CH('StatusLine',			s:gray6,		s:gray3,		'none')
call CH('StatusLineTerm',		s:gray7,		s:gray3,		'none')
call CH('StatusLineTermNC',		s:gray2,		s:gray5,			'')

call CH('TabLine',				s:gray3,		s:gray1,		'none')
call CH('TabLineFill',			s:gray5,		s:gray2,		'none')
call CH('TabLineSel',			s:gray2,		s:gray5,			'')

call CH('Title',				s:violet,		'',				'none')
call CH('ToolbarButton',		s:lilac,		'',				'none')
call CH('Visual',				s:gray6,		s:gray3,		'')

call CH('WarningMsg',			s:rust,			'',				'')
call CH('WildMenu',				s:gray2,		s:blue,			'')

call CH('Underlined',			s:frost,		'',				'none')
call CH('Error',				s:chestnut,		s:gray1,		'bold')
call CH('Todo',					s:lilac,		s:gray1,		'bold')

