
" --Plugins--

call plug#begin()
Plug 'Rigellute/rigel'
Plug 'itchyny/lightline.vim'
Plug 'mboughaba/i3config.vim'
call plug#end()



" --Visual--
syntax enable

set termguicolors
colorscheme rigel

set tabstop=4
set softtabstop=4
set expandtab

filetype indent on
set showmatch

set wildmenu

set number

set lazyredraw

" i3 sytax highlighting
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" --Searching--
set incsearch
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" --Folding--
set foldenable
set foldmethod=indent

" --Keybinding--
noremap B ^
noremap W $
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

inoremap jj <esc>
