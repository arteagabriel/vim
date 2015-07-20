set t_Co=256
syntax enable
set number
" colorscheme monokai 
" colorscheme hybrid
colorscheme jellybeans
set relativenumber
set smartindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"insert plugins here

" CtrlP
Plugin 'kien/ctrlp.vim'

" NERD Tree
Plugin 'scrooloose/nerdtree'

" Surround.vim
Plugin 'tpope/vim-surround'

" commentary.vim
Plugin 'tpope/vim-commentary'

" vim-colorschemes
Plugin 'flazz/vim-colorschemes'

" Airline 
Plugin 'bling/vim-airline'

" tagbar
Plugin 'majutsushi/tagbar'

" Syntastic
Plugin 'scrooloose/syntastic'

" YouCompleteMe
" See github repo page to finish installation
Plugin 'Valloric/YouCompleteMe'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" delimitMate
Plugin 'Raimondi/delimitMate'

" Tern for Vim
Plugin 'marijnh/tern_for_vim'

" EasyMotion
Plugin 'easymotion/vim-easymotion'

" Haml
Plugin 'tpope/vim-haml'

"end plugins
filetype plugin indent on

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Function to switch between relative and absolute line numbers
" function! NumberToggle()
"     if(&relativenumber == 1)
"         set number
"     else
"         set relativenumber
"     endif
" endfunc

" nnoremap <C-n> :call NumberToggle()<cr>

" :au FocusLost * :set number
" :au FocusGained * :set relativenumber
