" Vim Color File
" Name:       m.vim
" Version:    0.7
" Maintainer: github.com/hkgumbs
" License:    The MIT License (MIT)

" Color           hex      ANSI
" =============================
" Black           #666666  0
" BrightBlack     #424242  8
" White           #BFBFBF  7
" BrightWhite     #F5F6F6  15
" Cursor          #20BBFC
" Selection       #B6D6FD

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='m'

" Colors
let s:black           = { "cterm": "0"   }
let s:light           = { "cterm": "7"   }
let s:dark            = { "cterm": "8"   }
let s:white           = { "cterm": "15"  }

let s:medium_gray     = { "cterm": "243" }
let s:actual_white    = { "cterm": "231" }
let s:lighter_black   = { "cterm": "240" }
let s:subtle_black  = { "cterm": "236" }
let s:light_gray    = { "cterm": "249" }
let s:lighter_gray  = { "cterm": "251" }
let s:light_blue      = { "cterm": "153" }

let s:bg              = s:white
let s:bg_subtle       = s:light_gray
let s:bg_very_subtle  = s:lighter_gray
let s:norm            = s:dark
let s:norm_subtle     = s:lighter_black
let s:cyan            = s:dark
let s:green           = s:dark
let s:red             = s:dark
let s:visual          = s:light_blue

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg=NONE guibg=NONE guisp=NONE gui=NONE"
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:norm})
call s:h("Cursor",        {"bg": s:light, "fg": s:norm })
call s:h("Comment",       {"fg": s:medium_gray})

call s:h("SpecialKey",    {"fg": s:light})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:dark})
call s:h("ErrorMsg",      {"fg": s:light})
call s:h("IncSearch",     {"bg": s:light, "fg": s:dark})
call s:h("Search",        {"bg": s:bg_subtle})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:light, "bg": s:bg_very_subtle})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_very_subtle})
call s:h("StatusLineNC",  {"bg": s:bg_very_subtle, "fg": s:medium_gray})
call s:h("VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:dark})
call s:h("Visual",        {"bg": s:visual})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:red})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:medium_gray})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:dark})
call s:h("DiffText",      {"fg": s:dark})
call s:h("SignColumn",    {"fg": s:light})
" hi Conceal
call s:h("SpellBad",      {"cterm": "underline", "fg": s:red})
call s:h("SpellCap",      {"cterm": "underline", "fg": s:light})
call s:h("SpellRare",     {"cterm": "underline", "fg": s:light})
call s:h("SpellLocal",    {"cterm": "underline", "fg": s:dark})
call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:light})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",    {"fg": s:light, "bg": s:bg_subtle, "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
call s:h("CursorLine",    {"bg": s:bg_very_subtle})
call s:h("ColorColumn",   {"bg": s:bg_subtle})

call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:medium_gray})
