" Airline initialization for vim 

let g:airline_powerline_fonts = 1

let g:airline_theme= 'dracula'

let g:airline_extensions = ['branch', 'coc']
let g:airline_section_y = '' 
let g:airline_section_x = '' 
let g:airline_section_z = '%{airline#util#prepend("",0)}%{airline#util#prepend("",0)}%{airline#util#prepend("",0)}%{airline#util#wrap(airline#parts#filetype(),0)}'
let g:airline_right_alt_sep = ''
" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''

