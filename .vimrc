"Togglevundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" To fix Python YCM crash
" let $PATH = '/usr/local/bin:'.$PATH

"insert plugins here
Plugin 'gmarik/Vundle.vim'

" CtrlP
" Plugin 'kien/ctrlp.vim'

" NERD Tree
Plugin 'scrooloose/nerdtree'
Plugin 'unkiwii/vim-nerdtree-sync'

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

" Gruvbox theme for vim+airline
Plugin 'morhetz/gruvbox'

" tagbar
" need to install ctags for it to work on OSX
" Plugin 'majutsushi/tagbar'

" Syntastic
" Plugin 'scrooloose/syntastic'

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
" Plugin 'rking/ag.vim'

" Tabular
" Plugin 'godlygeek/tabular'

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
" Plugin 'nathanaelkane/vim-indent-guides'

" vim-jsx
Plugin 'neoclide/vim-jsx-improve'

" yasj.vim
" Plugin 'othree/yajs.vim'

" vim-exchange
" Plugin 'tommcdo/vim-exchange'

" vim-multiple-cursors
" Plugin 'terryma/vim-multiple-cursors'

" rust.vim
" Plugin 'rust-lang/rust.vim'

" Laravel Blade
Plugin 'jwalton512/vim-blade'

" Vue.js
Plugin 'posva/vim-vue'

" Solidity
Plugin 'tomlion/vim-solidity'

" Ruby endwise
" Plugin 'tpope/vim-endwise'

" Ruby
" Plugin 'vim-ruby/vim-ruby'

" Ruby on Rails
" Plugin 'tpope/vim-rails'

" Elixir
Plugin 'elixir-editors/vim-elixir'

" closetag
Plugin 'alvan/vim-closetag'

" markdown
Plugin 'gabrielelana/vim-markdown'

" css-color
Plugin 'ap/vim-css-color'

" vim-sneak
Plugin 'justinmk/vim-sneak'

" vim-graphql
Plugin 'jparise/vim-graphql'

" vim-css3-syntax
Plugin 'hail2u/vim-css3-syntax'

" sensible defaults
Plugin 'Aldlevine/nerdtree-git-plugin'

" styled components
Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }

" auto close parens etc
Plugin 'jiangmiao/auto-pairs'

" typescript support
Plugin 'leafgarland/typescript-vim'

" jsx typescript support
Plugin 'peitalin/vim-jsx-typescript'

" ale linting
Plugin 'dense-analysis/ale'

" tmux navigator for vim/tmux splits
Plugin 'christoomey/vim-tmux-navigator'

" editor config support
Plugin 'editorconfig/editorconfig-vim'

"end plugins
call vundle#end()
filetype plugin indent on
"end vundle setup

set t_Co=256
syntax enable
set number
colorscheme gruvbox
set tabstop=4 softtabstop=2 expandtab shiftwidth=2
set background=dark
set textwidth=80
set relativenumber
set cursorline
set showcmd
set autoindent
set incsearch
set hlsearch
let mapleader = ","
" set foldmethod=indent
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

set noswapfile
set nobackup
set nowb

" store longer history
set history=100

" move swap files to a specific location
" set backupdir=~/.vim/backup//
" set directory=~/.vim/swap//
set undodir=~/.vim/undo

" Always show tabs
" set showtabline=2

" open new splits to the right and the bottom
set splitbelow
set splitright

" Syntastic config
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" vim-jax config
let g:jsx_ext_required = 0 " allow JSX in normal JS file types

" indent guide config
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1

" Uncomment 2 lines below if you want list of syntastic errors
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_html_tidy_ignore_errors = ["trimming empty <", "'<' + '/' + letter not allowed here", "missing </script>"]
" let g:syntastic_javascript_checkers = ['eslint']
" End Syntastic config

" delimitMate config
" let delimitMate_expand_cr=1
" End delimitMate config

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_theme='gruvbox'

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

" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }

" vim-closetag config
" let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js, *.jsx,*.ts, *.tsx'

" vim-sneak config
let g:sneak#s_next = 1 " Jump to next match when pressing s again
let g:sneak#label = 1  " Use label mode, similar to easymotion

" Configure NerdTree
" :set mouse=a
let g:NERDTreeMouseMode=3 " Use NERDTree with a mouse
" nnoremap <c-\> :edit .<cr>
let g:NERDTreeGitStatusNodeColorization=1 " Enable git status colorisation a la Atom
let g:NERDTreeShowHidden=1 " Show dotfiles by default
let loaded_netrwPlugin=1 " Disable netrw since we're going to hijack it with NERDTree anyway
let NERDTreeRespectWildIgnore=1 " Respect wildignore
let g:NERDTreeHijackNetrw = 1 " Use the split explorer model, hijack netrw
let g:NERDTreeMinimalUI=1 " Hide 'Press ? for help' prompt

" Configure vim-nerdtree-sync
let g:nerdtree_sync_cursorline=1 " Enable syncing of active file to nerdtree

" Configure JavaScript highlighting
" let g:javascript_plugin_jsdoc=1
" let g:javascript_plugin_flow=1

" Configure ale (linting)
let g:ale_sign_column_always = 1
let g:ale_sign_error = '💩'
let g:ale_sign_warning = '⚠️'
" let g:ale_linters = {
"       \'javascript': ['eslint']
"       \} " , 'eslint'
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_javascript_eslint_suppress_missing_config = 1
let g:ale_javascript_eslint_suppress_eslintignore = 1
let g:ale_javascript_eslint_use_global = 0
let g:ale_fixers = {
      \'javascript': ['prettier']
      \}
" let g:ale_completion_enabled = 1

" use js linting for .vue files
let b:ale_linter_aliases = ['javascript', 'vue']

" Markdown
let g:markdown_enable_spell_checking = 0
let g:markdown_include_jekyll_support = 0

autocmd FileType vue syntax sync fromstart

" set working directory to current file
autocmd BufEnter * lcd %:p:h

let g:deoplete#enable_at_startup = 1
