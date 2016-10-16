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
let maplocalleader=","

" 快速配置 .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" 映射 jk -> esc, disable esc, ctrl+[
inoremap jk <esc>
vnoremap jk <esc>
inoremap <esc> <nop>
inoremap <c-[> <nop>

" 移动到行首, 行尾
nnoremap H ^
nnoremap L $

" imod 使刚输入的单词大写
inoremap <c-u> <esc>hvawUA
" nmod 使光标下的单词两边加上 ", ' 并返回 nmod
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" nmod 向上, 向下插入一行, 并返回 nomarl
nnoremap <leader>j o<esc>k
nnoremap <leader>k O<esc>j

""""""""""""""""""""""""""""""""""""""""""""
" 缩写替换功能, 下面是演示, 在插入模式中输入缩写后可以自动替换成后面的字符串
iabbrev @@ codergege@163.com
iabbrev ccopy Copyright 2016 codergege, all rights reserved.

""""""""""""""""""""""""""""""""""""""""""""
" autocmd event pattern command
" 自动检测 event, 如果符合 pattern, 就执行 command

" autocmd group
augroup codergege
" 防止重复载入
autocmd!

" html 文件, 在输入 :w 回车后, 自动执行 gg=G 命令
" autocmd BufWritePre *.html :normal gg=G
autocmd BufWritePre,BufRead *.html :normal gg=G
" html 文件 ,f -> fold 当前 tag
autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
" 一般 BufNewFile,BufRead 这两个事件都会一起使用
" 编辑 html 文件时, 不 wrap 
autocmd BufNewFile,BufRead *.html set nowrap
" 当是 javascript 文件时设置注释为 //
" 其他 注释
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType java nnoremap <buffer> <localleader>c I//<esc>
" autocmd 和 abbrev 配合
" 当是 javascript file 时, 输入 iff 自动替换成 if () 并将光标放在 （） 内
autocmd FileType javascript iabbrev <buffer> iff if ()<left>
" 这条想法不能执行, 得想其他办法
"autocmd FileType javascript iabbrev  iff if ()<esc>hi

augroup END

