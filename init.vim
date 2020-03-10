" 设置行号
set number

" 代码高亮
syntax on

" 主题
colorscheme iceberg
" colorscheme hybrid

" leader = ' '
let mapleader = "\<space>"
let g:mapleader= "\<space>"

" 按F2进入粘贴模式
set pastetoggle=<F2>

" 高亮搜索
set hlsearch

" 设置折叠方式
set foldmethod=indent

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

" 自动补全
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i

" Plug
source ~/.config/nvim/plug.vim

" easymotion-s2
nmap ss <Plug>(easymotion-s2)

"python-mode
source ~/.config/nvim/python_mode.vim 

" tagbar
let g:tagbar_width=30
nmap <leader>tb :TagbarToggle<CR>

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

let g:python3_host_prog = '/usr/local/bin/python3'
