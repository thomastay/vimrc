"Leader key and my own key settings
let mapleader = ","

"For Vundle
set nocompatible  
filetype off 
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$HOME/vimfiles/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
" Plugin 'vim-latex/vim-latex'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" For Airline
let g:airline_theme='simple'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"For CtrlP
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
nmap <leader>p :CtrlP<cr>
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

"For Buffergator
let g:buffergator_suppress_keymaps = 1
" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>
nmap <leader>gt :BuffergatorMruCycleNext<cr>
nmap <leader>gT :BuffergatorMruCyclePrev<cr>
nmap <leader>tt :edit 

"For Latex
" filetype plugin on
" set shellslash
" filetype indent on

" For fugitive (Git)
nmap <leader>ga :Git add %:p<CR><CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit -v -q<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gl :Git local 

"In general
syntax enable
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set number
set cursorline
set hidden				"For buffers
set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0
set wrapmargin=0
set formatoptions-=cro

"Mapping keys
map <Leader>ll :silent !pdflatex.exe -synctex=1 -interaction=nonstopmode -output-directory %:p:h %:p<CR><CR>

"Remapping of Actual Keys
imap jj <Esc>
nmap <S-Enter> o<Esc>
nmap <CR> i<CR><Esc>kA
nnoremap 0 ^
nnoremap ^ 0
nnoremap <Space> i<Space><Esc>

command! W write
command! WQ wq
command! Wq wq

"Macros
let @b='i\begin{homeworkProblem}
let @s='a$ s.t. if $'
let @e='i\begin{enumerate}[label = (\alph*)]
let @c='i\[
