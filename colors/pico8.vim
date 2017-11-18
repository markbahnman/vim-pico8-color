if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark
highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'pico8'

let s:black       = '#000000'
let s:dark_blue   = '#1D2B53'
let s:dark_purple = '#7E2553'
let s:dark_green  = '#008751'
let s:brown       = '#AB5236'
let s:dark_gray   = '#5F574F'
let s:light_gray  = '#C2C3C7'
let s:white       = '#FFF1E8'
let s:red         = '#FF004D'
let s:orange      = '#FFA300'
let s:yellow      = '#FFEC27'
let s:green       = '#00E436'
let s:blue        = '#29ADFF'
let s:indigo      = '#83769C'
let s:pink        = '#FF77A8'
let s:peach       = '#FFCCAA'

let s:background = '#4F473F'
let s:shade = '#3F372F'

function! s:HL(group, fg, bg, attr)
  if !empty(a:fg)
    exec 'highlight ' . a:group . ' guifg=' . a:fg
  endif
  if !empty(a:bg)
    exec 'highlight ' . a:group . ' guibg=' . a:bg
  endif
  if !empty(a:attr)
    exec 'highlight ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
  endif
endfunction

" group foreground background style

call s:HL('Cursor', s:dark_gray, s:red, '')
call s:HL('Visual', s:dark_gray, s:yellow, '')

call s:HL('LineNr', s:dark_gray, s:shade, 'none')
call s:HL('CursorLineNr', s:peach, s:red, 'bold')
call s:HL('SignColumn', s:dark_gray, s:shade, '')
call s:HL('NonText', s:dark_gray, '', '')

call s:HL('CursorLine', '', s:shade, '')
call s:HL('CursorColumn', '', s:shade, '')
call s:HL('ColorColumn', '', s:shade, '')

call s:HL('StatusLine', s:dark_purple, s:red, 'bold')
call s:HL('StatusLineNC', s:dark_purple, s:red, 'bold')
call s:HL('Question', s:green, '', '')
call s:HL('ModeMsg', s:light_gray, '', '')
call s:HL('ErrorMsg', s:white, s:red, '')

call s:HL('Title', s:dark_purple, s:red, 'bold')
call s:HL('TabLine', s:dark_purple, s:red, 'bold')
call s:HL('TabLineFill', s:dark_purple, s:red, 'bold')
call s:HL('TabLineSel', s:peach, s:red, 'bold')

call s:HL('VertSplit', s:red, s:red, 'bold')

call s:HL('PMenu', s:light_gray, s:shade, 'none')
call s:HL('PMenuSel', s:dark_gray, s:yellow, 'none')
call s:HL('PMenuSbar', s:dark_gray, s:dark_gray, 'none')
call s:HL('PMenuThumb', s:dark_gray, s:light_gray, 'none')

call s:HL('DiffAdd', s:dark_gray, s:green, 'none')
call s:HL('DiffChange', s:dark_gray, s:yellow, 'none')
call s:HL('DiffDelete', s:dark_gray, s:red, 'none')
call s:HL('DiffText', s:dark_gray, s:blue, 'none')

call s:HL('Normal', s:light_gray, s:background, 'none')
call s:HL('Function', s:pink, '', 'bold')
call s:HL('Statement', s:pink, '', '')
call s:HL('Identifier', s:green, '', '')
call s:HL('Type', s:green, '', '')
call s:HL('Operator', s:white, '', '')
call s:HL('String', s:blue, '', '')
call s:HL('Comment', s:indigo, '', '')
call s:HL('Number', s:blue, '', '')
call s:HL('Error', s:white, s:red, '')
call s:HL('Todo', s:dark_gray, s:yellow, 'bold')
