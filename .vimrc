set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'taglist.vim'
Plugin 'bufexplorer.zip'
Plugin 'snipMate'
Plugin 'ctrlp.vim'
Plugin 'ZenCoding.vim'
Plugin 'SuperTab'
Plugin 'Syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Rykka/clickable.vim'
Plugin 'Rykka/riv.vim'
Plugin 'plasticboy/vim-markdown'

Plugin 'python.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'pep8'
Plugin 'c.vim'
Plugin 'go.vim'
Plugin 'lua.vim'
Plugin 'luainspect.vim'
Plugin 'xolox/vim-misc'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable

set autoindent          " indent
set incsearch           " real-time search
set hlsearch            " highlight search
set ruler               " cursor position
set wrap                " auto wrap lines
set et                  " (expandtab) expand <tab> to <space>
set ts=4                " (tabstop)
set sw=4                " (shiftwidth) indent
set autochdir           " chdir to pwd of current file

colorscheme base16-twilight
set bg=dark             " very important to avoid ugly color mixing under colored-terms


" use powerline patched font
let g:airline_powerline_fonts = 1
set laststatus=2

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


nnoremap <leader>jd :YcmCompleter GoToDefinition


