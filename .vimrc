set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'Shougo/vimproc.vim'                 " dep of vimshell
Plugin 'Shougo/vimshell.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'                  " run ctags in-memory on-the-fly, without generating any files
Plugin 'honza/vim-snippets'
Plugin 'Shougo/unite.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'                       " the_silver_searcher, faster than ack, which is a replacement of grep aiming at code-searching
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'godlygeek/tabular'

Plugin 'rhysd/vim-clang-format'
Plugin 'Rykka/riv.vim'                      " rst support
Plugin 'tpope/vim-markdown'
Plugin 'mattn/emmet-vim'
Plugin 'fatih/vim-go'
Plugin 'derekwyatt/vim-scala'

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
set tw=200              " (textwidth) large enough
" set autochdir         " chdir to pwd of current file, which has conflict with vimshell

colorscheme base16-solarized-dark
set bg=dark             " very important to avoid ugly color mixing using colored-terminals

" re-map <leader>
let mapleader = ' '

" YCM
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
nmap <leader>d :YcmCompleter GoToDefinition<CR>

" tagbar toggle
nmap <leader>tag :TagbarToggle<CR>

" resize window
nmap <leader>H 20<C-w><
nmap <leader>L 20<C-w>>
nmap <leader>J 8<C-w>-
nmap <leader>K 8<C-w>+

" clang-format to format full file, otherwise format single line by default
":let clang_format_fallback_style = {BasedOnStyle: google, IndentWidth: 4}
":function ClangFormat()
":   let l:lines = 'all'
":   pyf /usr/local/Cellar/clang-format/2015-07-31/share/clang/clang-format.py
":endfunction
"map <leader>f :call ClangFormat()<CR>
map <leader>f :ClangFormat<CR>
let g:clang_format#code_style = 'google'                  " base style
let g:clang_format#style_options = {'IndentWidth': 4}
let g:clang_format#auto_format_on_insert_leave = 1        " auto format on leaving insert mode

" airline 'base16' theme conflicts with colorscheme base16-*
"let g:airline_theme = 'bubblegum'        " warm light colors
let g:airline_theme = 'sol'               " silver as main color
set laststatus=2
" use powerline patched font but without the delimiters
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''

" let ag.vim search from root instead of cwd
let g:ag_working_path_mode = 'r'

" vimshell
let g:vimshell_editor_command = '/usr/local/Cellar/macvim/7.4-76/MacVim.app/Contents/MacOS/Vim'


" let tagbar support markdown
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }
" let tagbar support makefile targets
let g:tagbar_type_make = {
            \ 'kinds':[
                \ 'm:macros',
                \ 't:targets'
            \ ]
\}
" let tagbar support go
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

