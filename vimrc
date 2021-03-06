set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle plugin
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" xmledit on github
Plugin 'sukima/xmledit'

" nerdtree
Plugin 'scrooloose/nerdtree'

" commenter
Plugin 'scrooloose/nerdcommenter'

" color shcemes
Plugin 'flazz/vim-colorschemes'

" LeaderF 全局搜索文件插件
Plugin 'Yggdroot/LeaderF'

" vimwiki
Plugin 'vimwiki'

" text-obj
Plugin 'kana/vim-textobj-user'

" text-obj - a line: al
Plugin 'kana/vim-textobj-line'

" text-obj - entire: ae, ie
Plugin 'kana/vim-textobj-entire'

" text-obj - function: 
" daf to Delete A Function, and
" vif to Visually select the code Inside a Function.
" yaF to Yank A Function with leading or trailing blank lines, and
" viF to visually select a function without leading or trailing blank lines.
Plugin 'kana/vim-textobj-function'
" pending 模式 fold az, ai
" Plugin 'textobj-fold'

" text-obj - url: au, iu with or without tailing spaces
Plugin 'jceb/vim-textobj-uri'

" 这个插件不能被 vundle 加入, 自动补全
"plugin 'kana/vim-smartinput'

" 自动补全
Plugin 'Auto-Pairs'
" 缩进虚线, terminal vim 下不好看, 而且宽度设置有问题, 算了
"Plugin 'Indent-Guides'
" 状态栏
" Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'



" java 
" Plugin 'artur-shaik/vim-javacomplete2'
" 以后考虑安装的插件
"Plugin 'java_src_link.vim'
"Plugin 'Java-Syntax-and-Folding'
"Plugin 'java_checkstyle.vim'
"Plugin 'JavaDecompiler.vim'
"Plugin 'javalog.vim'

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

""""""""""""" BASIC """""""""""""""""
" use utf-8
set encoding=utf-8
" solarized color scheme
syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
"colorscheme solarized
colorscheme molokai

" nerdtree
"" 是否显示隐藏文件
"let NERDTreeShowHidden=1

" 状态栏
"set guifont=Inconsolata\ for\ Powerline:h15 
"let g:Powerline_symbols='fancy' 
"set t_Co=256 
"set fillchars+=stl:\ ,stlnc:\ 
"set term=xterm-256color 
"set termencoding=utf-8

" 原生 Status line
"set laststatus=2
"set statusline=
"" buffer number
"set statusline+=%-3.3n\
"" filename
"set statusline+=%f\
"" status flags
"set statusline+=%h%m%r%w
"" file type
"set statusline+=\[%{strlen(&ft)?&ft:'none'}]
"" right align remainder
"set statusline+=%=
"" character value
"set statusline+=0x%-8B
"" line, character
"set statusline+=%-14(%l,%c%V%)
"" file posistion
"set statusline+=%<%P

" vimwiki
" 禁用驼峰词条
let g:vimwiki_camel_case=0
" vimwiki 使用 markdown 语法


" vim 中拷贝到系统剪切板
set clipboard=unnamedplus
" vim 拷贝模式, 防止自动缩进和补全
" 不起作用
" set pastetoggle=<f12>

" 打开 vim 时自动允许 indent-guides
"let g:indent_guides_enable_on_vim_startup = 1
" 设置缩进显示的宽度
"let g:indent_guides_guide_size = 1
" 设置缩进线颜色百分比
"let g:indent_guides_color_change_percent = 5

"General recommended settings for editing "*.txt" files
"set nocp et ts=4 sw=4 tw=80 ai
" 让第 80 列高亮
set cc=80
" 自动保存
au FocusLost * silent! wa
let autosave=5
" 从不备份
set nobackup
" 不产生 swap file
set noswapfile
" 解决 backspace 无法使用的问题
set backspace=indent,eol,start
" 去掉错误声
set noeb
" 自动缩进
set autoindent
" tab 宽度
set tabstop=4
" 统一缩进为 4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
"set noexpandtab
" 设置语法高亮
syntax on
" 设置 nu, rnu
set nu
set rnu
" Show line number, curso position
set ruler

""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
let maplocalleader=","

" nerdtree
"" 不显示这些文件
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree

" nerdcommeter set up
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" 快速配置 .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" auto-pairs 飞行模式, 强制跳转到 ) ] }
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'


" 映射 vimwiki 全部转成 html 命令为: f12
nnoremap <f3> :VimwikiAll2HTML<cr>

" 映射 jk -> esc, disable esc, ctrl+[
inoremap jk <esc>
vnoremap jk <esc>
inoremap <esc> <nop>
inoremap <c-[> <nop>

" 自动补全快捷键修改 
" 不起作用
"inoremap <a-/> <c-r>=complete()<cr>

" 移动到行首, 行尾
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $

" imod 使刚输入的单词大写
inoremap <c-u> <esc>hvawUA

" nmod 使光标下的单词两边加上 ", ' 并返回 nmod
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" nmod 加入空行, 并返回 nmod
nnoremap <leader>j o<esc>k
" 折叠
set foldmethod=marker
" 设置折叠切换为 <space> 
nnoremap <space> za

" 插入时间
nnoremap <leader>t a<C-R>=strftime("%Y-%m-%d %H:%M:%S ")<CR><Esc>
inoremap <leader>t <C-R>=strftime("%Y-%m-%d %H:%M:%S ")<CR>
nnoremap <leader>d a<C-R>=strftime("%Y-%m-%d ")<CR><Esc>
inoremap <leader>d <C-R>=strftime("%Y-%m-%d ")<CR>
"imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>
"
""""""""""""""""""""""""""""""""""""""""""""
" 加入 auto-pairs 插件后, iab 已经不起作用了
" 缩写替换功能, 下面是演示, 在插入模式中输入缩写后可以自动替换成后面的字符串
"iabbrev @@ codergege@163.com
"iabbrev ccopy Copyright 2016 codergege, all rights reserved.

" imod 插入时间 为什么不起作用了呢
"iabbrev ,d <C-R>=strftime("%Y-%m-%d")<CR>
"iabbrev ,t <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
" java 缩写替
"iab psvm public static void main(String[] args) { }<UP><END><BS><BS>
"iab { { }<UP><END><BS><BS>
"iab syso System.out.println();<LEFT><LEFT>
"iab syse System.err.println();<LEFT><LEFT>
""""""""""""""""""""""""""""""""""""""""""""
" autocmd event pattern command
" 自动检测 event, 如果符合 pattern, 就执行 command

" autocmd group
augroup codergege
" 防止重复载入
autocmd!

" enable javacomplete2
"autocmd FileType java setlocal omnifunc=javacomplete#Complete

" nerdtree 自动打开 nerdtree, 并将光标停留在右侧编辑区
autocmd vimenter * NERDTree
wincmd w
autocmd VimEnter * wincmd w
" nerdtree 只剩 nerdtree 窗口时关闭 vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" html 文件, 在输入 :w 回车后, 自动执行 gg=G 命令
" autocmd BufWritePre *.html :normal gg=G
autocmd BufWritePre,BufRead *.html :normal gg=G

" html 文件 ,f -> fold 当前 tag
autocmd FileType html nnoremap <buffer> <localleader>f Vatzf

" 一般 BufNewFile,BufRead 这两个事件都会一起使用
" 编辑 html 文件时, 不 wrap 
autocmd BufNewFile,BufRead *.html set nowrap

" autocmd 和 abbrev 配合
" 当是 javascript file 时, 输入 iff 自动替换成 if () 并将光标放在 （） 内
" autocmd FileType javascript iabbrev <buffer> iff if ()<left>

augroup END

"""""""""""""" FUNCTION """""""""""""""""
" 最大化当前窗口
function! Zoom ()
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose

        " restore the view
        if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
    else
        tab split
    endif
endfunction

nnoremap <leader>z :call Zoom()<CR>

"
