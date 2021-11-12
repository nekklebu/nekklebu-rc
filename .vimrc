call plug#begin('~/.vim/plugged')

/Navigation -- requires gtags, ack, ag
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/gtags.vim'
Plug 'mileszs/ack.vim'
/Style -- requires llvm
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/vim-clang-format'
Plug 'arcticicestudio/nord-vim'
/Syntax
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'fedorenchik/qt-support.vim'
Plug 'PProvost/vim-ps1'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

call plug#end()

colorscheme nord
set termguicolors
set autochdir
set encoding=utf-8
set backspace=indent,eol,start

set ai
set si
set tabstop=4
set shiftwidth=4
set expandtab
set wrap
syntax on

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutToggle = '<C-1>'
let g:AutoPairsShortcutJump   = '<C-n>'
let g:AutoPairs = {'(':')', '[':']', '<':'>', '{':'}',"'":"'",'"':'"', "`":"`", '```':'`````', '"""':'"""""', "'''":"'''''"}

/let g:clang_format#auto_format       = 1
let g:clang_format#detect_style_file = 1

let g:ackprg = 'ag --vimgrep'

cnoremap \fp <C-R>=fnamemodify('.', ':p:h')<CR>
map <C-E>  :e ~/.vimrc<CR>
map <C-D>  :e ~/Documents/work/Safe<CR>
map <C-.>  :vi ~/Documents/work/yesternotes<CR>
map <C-G>  :GtagsCursor<CR> 
map <C-S>  :Ack -H "<C-R><S-">" 
map <C-B>  :b#<CR>
map <C-L>  :ClangFormat<CR>
map <C-Q>  :set nu!<CR>
map <S-R>  :%s/<C-R><S-">/
map <C-2>  :cd %:p:h 
map <S-D>  :vim -d <C-R>=fnamemodify('.', ':p:h')<CR> 
