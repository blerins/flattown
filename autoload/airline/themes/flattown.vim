" vim-airline companion theme of flattown

" Normal mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:N1 = [ '#36393c' , '#5f87d7' , 236 , 68 ] " mode
let s:N2 = [ '#86898c' , '#36393c' , 253 , 236 ] " info
let s:N3 = [ '#c6c6c6' , '#444444' , 251 , 238 ] " statusline

" Insert mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:I1 = [ '#36393c' , '#76b976' , 236 , 71 ] " mode
let s:I2 = s:N2 " info
let s:I3 = s:N3 " statusline

" Visual mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:V1 = [ '#36393c' , '#af87d7' , 236 , 140 ] " mode
let s:V2 = s:N2 " info
let s:V3 = s:N3 " statusline

" Replace mode
let s:R1 = [ '#f0f0f0' , '#db402c' , 255 , 167 ] " mode
let s:R2 = s:N2 " info
let s:R3 = s:N3 " statusline

" Inactive mode
let s:IA = [ '#86898c' , s:N3[1] , 243 , s:N3[3] , '' ]

" Modified
let s:MA = [ '#ff8700' , '#444444' , 208 , 238 ]

let g:airline#themes#flattown#palette = {}

let g:airline#themes#flattown#palette.accents = {
      \ 'red': [ '#d70000' , '' , 160 , ''  ]
      \ }

let g:airline#themes#flattown#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#flattown#palette.normal_modified = {
      \ 'airline_c': s:MA ,
      \ }

let g:airline#themes#flattown#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#flattown#palette.insert_modified = {
      \ 'airline_c': s:MA ,
      \ }

let g:airline#themes#flattown#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#flattown#palette.visual_modified = {
      \ 'airline_c': s:MA ,
      \ }

let g:airline#themes#flattown#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#flattown#palette.replace_modified = {
      \ 'airline_c': s:MA ,
      \ }

let g:airline#themes#flattown#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#flattown#palette.inactive_modified = {
      \ 'airline_c': s:MA ,
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#flattown#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#86898c' , '#2c2f33' , 253 , 234 , ''     ] ,
      \ [ '#86898c' , '#36393c' , 253 , 238 , ''     ] ,
      \ [ '#2c2f33' , '#b8d977' , 232 , 253 , 'bold' ] )
