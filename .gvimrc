set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set guioptions-=L       " 隐藏左侧滚动条
set guioptions-=r       " 隐藏右侧滚动条
set guioptions-=b       " 隐藏底部滚动条
set lines=40
set columns=180
set nu                  " 行号
set cursorline          " 高亮当前行



autocmd VimEnter * NERDTree        " 启动时开启 The-NERD-tree
autocmd VimEnter * wincmd p        " 光标自动定在编辑区

