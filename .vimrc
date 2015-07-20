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

set autoindent          " 自动缩进
set incsearch           " 实时搜索
set hlsearch            " 高亮搜索结果
set ruler               " 显示光标坐标
set wrap                " 自动折行
set et                  " expandtab, tab 自动扩展成空格
set ts=4                " tabstop, 一个 tab 占 4 个空格
set sw=4                " shiftwidth, 缩进幅度
set autochdir           " 自动切换工作目录到当前文件目录

colorscheme base16-tomorrow


" use powerline patched font
let g:airline_powerline_fonts = 1
set laststatus=2

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


nnoremap <leader>jd :YcmCompleter GoToDefinition


