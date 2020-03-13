" 行号
set number
	
" 代码高亮
syntax on

" 主题
colorscheme iceberg
" colorscheme hybrid

" leader = ' '
let mapleader = "\<space>"
let g:mapleader= "\<space>"

" 缩进为4
set shiftwidth=4
    
" 按F2进入粘贴模式
set pastetoggle=<F2>

" 高亮搜索
set hlsearch

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

" 自动补全
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i

nnoremap <leader>ff :FZF<CR> 
nnoremap <leader>nf :NERDTree<CR>
nnoremap <leader>ag :Ag<space>

			

" Plug
source ~/.config/nvim/plug.vim



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
