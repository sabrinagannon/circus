if exists('g:loaded_circus') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" Declare highlights and link toe existing highlight group rather than setting
" colours by ourselves so that it matches the colourscheme
hi def link CircusHeader      Number
hi def link circusSubHeader   Identifier
" command to run our plugin
command! Circus lua require'circus'.circus()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_circus = 1


