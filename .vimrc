"Togglevundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" To fix Python YCM crash
let $PATH = '/usr/local/bin:'.$PATH

"insert plugins here
Plugin 'gmarik/Vundle.vim'

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
" Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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

" EasyMotion
Plugin 'easymotion/vim-easymotion'

" Haml
Plugin 'tpope/vim-haml'

" Ag
Plugin 'rking/ag.vim'

" Tabular
Plugin 'godlygeek/tabular'

" repeat.vim
Plugin 'tpope/vim-repeat'

"Jinja/nunjucks syntax highlighting
Plugin 'lepture/vim-jinja'

"end plugins
call vundle#end()
filetype plugin indent on
"end vundle setup

set t_Co=256
syntax enable
set number
"colorscheme monokai 
"colorscheme hybrid
"colorscheme jellybeans
colorscheme solarized
set tabstop=3 softtabstop=3 expandtab shiftwidth=3
set background=dark
"set textwidth=80
set relativenumber
set cursorline
set showcmd
set autoindent
set incsearch
set hlsearch
let mapleader = ","
set foldmethod=indent
set mouse=a

nnoremap <Space> za
nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <Leader>tb :Tagbar<CR>
nnoremap <silent> <Leader>cp :CtrlP<CR>
nnoremap <silent> <Leader>nh :noh<CR>
nnoremap <silent> <C-h> <C-w><Left><CR>
nnoremap <silent> <C-j> <C-w><Down><CR>
nnoremap <silent> <C-k> <C-w><Up><CR>
nnoremap <silent> <C-l> <C-w><Right><CR>
nnoremap <silent> <Leader>g :Git
nnoremap <silent> <Leader>gw :Gwrite<CR>
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>

" move swap files to a specific location
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Always show tabs
set showtabline=2

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Uncomment 2 lines below if you want list of syntastic errors
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors = ["trimming empty <", "'<' + '/' + letter not allowed here", "missing </script>"]
" End Syntastic config

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
" End Airline config

" Change font and size of MacVim
if has("gui_macvim") || has("gui_vimr")
   set guifont=InputMono-Regular:h12
endif

" Make sure Ninja extensions are highlighted
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.nunjucks set ft=jinja
