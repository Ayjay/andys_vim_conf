set nocompatible
set incsearch
set ignorecase
set smartcase
set scrolloff=2
set wildmode=longest,list
set number
set vb

set expandtab
set shiftwidth=4
set softtabstop=4

call pathogen#runtime_append_all_bundles() 

syntax on

call pathogen#runtime_append_all_bundles()

filetype plugin on
filetype plugin indent on

" Quickly edit/reload the vimrc file
nmap <Leader>s :e $MYVIMRC<CR>
nmap <Leader>v :so $MYVIMRC<CR>

" Swap goto mark's line and goto mark itself
nnoremap ' `
nnoremap ` '

set history=100

let mapleader=","

" Allows matching of things other than parens
runtime macros/matchit.vim

set ofu=syntaxcomplete#Complete

" Scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Stifle 'type enter' prompt
" set shortmess=atI

" --------------------
" ShowMarks
" --------------------
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_enable = 1
" For marks a-z
highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
" For marks A-Z
highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
" For all other marks
highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
" For multiple marks on the same line.
highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen

" --------------------
" MiniBufExplorer
" --------------------
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

nnoremap ; :

set autochdir

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Add comments
" ,# perl # comments
" map ,# :s/^/#/<CR>
" ,/ C/C++/C#/Java // comments
" map ,/ :s/^/\/\//<CR>
" ,< HTML comment
" map ,< :s/^\(.*\)$/<!-- \1 -->/<CR><Esc>:nohlsearch<CR>
" c++ java style comments
" map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR><Esc>:nohlsearch<CR>

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"

colorscheme marklar

" Move backup and swap files to a better location
set backup
set backupdir=~/.vim/backup
set dir=~/.vim/swap

" syntax autofold
:set foldmethod=indent

" Setup folding autosave/load
" au BufWinLeave * mkview
" au BufWinEnter * silent loadview
