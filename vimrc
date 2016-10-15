"""""""""""""" BASIC """""""""""""""""
" 从不备份
set nobackup
" 不产生 swap file
set noswapfile
" 不要使用 vi 键盘模式, 使用 vim 自己的
set nocompatible
" 解决 backspace 无法使用的问题
set backspace=indent,eol,start
" 去掉错误声
set noeb
" 自动缩进
set autoindent
set cindent
" tab 宽度
set tabstop=4
" 统一缩进为 4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 设置语法高亮
syntax on
" 设置 nu
set nu

""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

" 快速配置 .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" imod 使刚输入的单词大写
inoremap <c-u> <esc>hvawUA

" nmod 向上, 向下插入一行, 并返回 nomarl
nnoremap <leader>j o<esc>k
nnoremap <leader>k O<esc>j

""""""""""""""""""""""""""""""""""""""""""""
" 缩写替换功能, 下面是演示, 在插入模式中输入缩写后可以自动替换成后面的字符串
iabbrev @@ codergege@163.com
iabbrev ccopy Copyright 2016 codergege, all rights reserved.

