" Vim Color File
" Name:       m.vim
" Version:    0.7
" Maintainer: github.com/hkgumbs
" License:    The MIT License (MIT)

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='m'

let s:black             = { "cterm": "0"  }
let s:light             = { "cterm": "7"  }
let s:dark              = { "cterm": "8"  }
let s:white             = { "cterm": "15" }

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg=NONE guibg=NONE guisp=NONE gui=NONE"
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("ColorColumn",   { "bg": s:light })
call s:h("Comment",       { "fg": s:light })
call s:h("Constant",      { "fg": s:black })
call s:h("CursorLineNr",  { "fg": s:light, "bg": s:light })
call s:h("ErrorMsg",      { "fg": s:light })
call s:h("FoldColumn",    { "fg": s:light })
call s:h("Folded",        { "fg": s:light })
call s:h("IncSearch",     { "fg": s:dark, "bg": s:light })
call s:h("LineNr",        { "fg": s:light })
call s:h("MatchParen",    { "fg": s:dark, "bg": s:light })
call s:h("MoreMsg",       { "fg": s:light, "cterm": "bold"})
call s:h("NonText",       { "fg": s:light })
call s:h("Normal",        { "fg": s:dark, "bg": s:white })
call s:h("Pmenu",         { "fg": s:dark, "bg": s:white })
call s:h("PmenuSbar",     { "fg": s:dark, "bg": s:white })
call s:h("PmenuSel",      { "fg": s:dark, "bg": s:white })
call s:h("PmenuThumb",    { "fg": s:dark, "bg": s:white })
call s:h("Question",      { "fg": s:dark })
call s:h("Search",        { "bg": s:light })
call s:h("SignColumn",    { "fg": s:light })
call s:h("SpecialKey",    { "fg": s:light })
call s:h("SpellBad",      { "cterm": "underline" })
call s:h("SpellCap",      { "cterm": "underline" })
call s:h("SpellLocal",    { "cterm": "underline" })
call s:h("SpellRare",     { "cterm": "underline" })
call s:h("Statement",     { "fg": s:dark })
call s:h("StatusLine",    { "bg": s:light, "cterm": "bold" })
call s:h("StatusLineNC",  { "bg": s:light })
call s:h("TabLine",       { "fg": s:dark, "bg": s:light })
call s:h("TabLineFill",   { "fg": s:dark, "bg": s:light })
call s:h("TabLineSel",    { "fg": s:dark, "bg": s:light, "cterm": "bold" })
call s:h("Title",         { "fg": s:dark })
call s:h("VertSplit",     { "fg": s:light, "bg": s:light })
call s:h("Visual",        { "bg": s:light })
call s:h("VisualNOS",     { "bg": s:light })
call s:h("WarningMsg",    { "fg": s:light })
call s:h("WildMenu",      { "fg": s:white, "bg": s:dark, "cterm": "bold" })
call s:h("qfLineNr",      { "fg": s:light })

hi! link ModeMsg MoreMsg
