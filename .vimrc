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
" need to install ctags for it to work on OSX
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

" vim-javascript
Plugin 'pangloss/vim-javascript'

" vim git-gutter
Plugin 'airblade/vim-gitgutter'

" Emmet.vim
Plugin 'mattn/emmet-vim'

" Indent Guides
Plugin 'nathanaelkane/vim-indent-guides'

" vim-jsx
Plugin 'mxw/vim-jsx'

" vim-exchange
Plugin 'tommcdo/vim-exchange'

" vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'

" rust.vim
Plugin 'rust-lang/rust.vim'

" Laravel Blade
Plugin 'jwalton512/vim-blade'

" Vue.js
Plugin 'posva/vim-vue'

" Solidity
Plugin 'tomlion/vim-solidity'

"end plugins
call vundle#end()
filetype plugin indent on
"end vundle setup

set t_Co=256
syntax enable
set number
colorscheme solarized
set tabstop=4 softtabstop=4 expandtab shiftwidth=4
set background=dark
set textwidth=80
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
nnoremap <silent> <Leader>tn :tabnew
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" inoremap {<CR> {<CR>}<ESC>O<BS><Tab>
" inoremap (<CR> (<CR>)<ESC>O<BS><Tab>
" inoremap [<CR> [<CR>]<ESC>O<BS><Tab>

" nmap <C-v> :vertical resize +5<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

imap jj <esc>

" remove trailing whitespace on write
autocmd BufWritePre * %s/\s\+$//e

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

" vim-jax config
let g:jsx_ext_required = 0 " allow JSX in normal JS file types

" indent guide config
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Uncomment 2 lines below if you want list of syntastic errors
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors = ["trimming empty <", "'<' + '/' + letter not allowed here", "missing </script>"]
let g:syntastic_javascript_checkers = ['eslint']
" End Syntastic config

" delimitMate config
let delimitMate_expand_cr=1
" End delimitMate config

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
   " set guifont=InputMono-Regular:h12
   " set guifont=Roboto\ Mono\ for\ Powerline:h14
   set macligatures
   set guifont=Fira\ Code:h14
endif

" Make sure Ninja extensions are highlighted
au BufNewFile,BufRead *.blade.php,*.html,*.htm,*.nunjucks,*.njk set ft=jinja

" autocmd BufNewFile,BufRead *.html set textwidth=0 wrapmargin=0 tabstop=2 softtabstop=2 shiftwidth=2
" autocmd BufNewFile,BufRead *.css set textwidth=0 wrapmargin=0 tabstop=2 softtabstop=2 shiftwidth=2
" autocmd BufNewFile,BufRead *.scss set textwidth=0 wrapmargin=0 tabstop=2 softtabstop=2 shiftwidth=2
" autocmd BufNewFile,BufRead *.js set textwidth=0 wrapmargin=0 tabstop=2 softtabstop=2 shiftwidth=2

autocmd FileType vue syntax sync fromstart

" set working directory to current file
autocmd BufEnter * lcd %:p:h
