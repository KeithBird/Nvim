" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" 行号
set number
set relativenumber

" 代码高亮
syntax on

" 主题
colorscheme iceberg
" colorscheme hybrid

" 高亮光标所在行 
set cursorline 
set cursorcolumn

" 用浅色高亮当前行
" autocmd InsertEnter * se cul

" 光标移动到buffer的顶部和底部时保持距离
set scrolloff=10

" 显示标尺
set ruler

" 输入的命令显示
set showcmd

" 允许折叠
set foldenable

" 自动缩进
set autoindent
set cindent

" Tab键的宽度
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn

" 搜索忽略大小写
set ignorecase

" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

" leader = ' '
let mapleader = "\<space>"
let g:mapleader= "\<space>"

" 高亮搜索
set hlsearch
set incsearch

" 设置折叠方式
" set foldmethod=indent

" jj进入normal模式
inoremap jj <Esc>`^

" 保存退出
noremap <leader>q :q<CR>
noremap <leader>w :w<CR>

" switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Sudo to write	强制保存
cnoremap w!! w !sudo tee % >/dev/null

" 自动补全 coc-pairs
" inoremap ( ()<Esc>i
" inoremap [ []<Esc>i
" inoremap { {}<Esc>i

nnoremap <leader>ff :FZF<CR> 
nnoremap <leader>nf :NERDTree<CR>
nnoremap <leader>ag :Ag<space>



" Plug
source ~/.config/nvim/plug.vim


" md-snippets
source ~/.config/nvim/md-snippets.vim

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Ubuntu
" let g:python3_host_prog = '/usr/bin/python3'

" Mac
 let g:python3_host_prog = '/usr/local/bin/python3'

" mac.zshrc
" alias python3='/usr/local/bin/python3'
" alias python=python3

" Ubuntu.zshrc
" alias python3='/usr/bin/python3'
" alias python=python3
