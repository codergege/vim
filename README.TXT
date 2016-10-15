安装配置 vim
 编译安装最新版本 vim, 并用 git 管理 
1) mkdir -p develop/installation
2) cd develop/installation
3) git clone https://github.com/vim/vim.git
4) cd vim/src
5) sudo apt-get install libncurses5-dev
6) ./configure --with-feature=huge --prefix=/usr/local/vim
7) sudo make
8) sudo make install
9) cd /usr/bin
10) sudo ln -sf /usr/local/vim/bin/vim vim
11) cd 
12) git clone https://github.com/codergege/vim.git
13) mv vim .vim; cd .vim ; git config --global user.name "codergege"; git confi --global user.email "codergege@163.com"; 看看 git remote -v
14) cd
15) ln -sf .vim/vimrc .vimrc
#### todo: vim 插件管理

