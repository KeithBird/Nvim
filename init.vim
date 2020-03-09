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

" easymotion-s2
nmap ss <Plug>(easymotion-s2)

" Plug
call plug#begin('~/.local/share/nvim/site/plugged')



" Python-mode
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" fzf
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Nerdtree -> file system explorer  
Plug 'scrooloose/nerdtree'

" indentline -> show indents
Plug 'yggdroot/indentline'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" surround -> double (
Plug 'tpope/vim-surround'

" easymotion -> ss
Plug 'easymotion/vim-easymotion'

" tagbar -> right_tag
Plug 'majutsushi/tagbar'

" deoplete
" coc.nvim -> complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" neoformat -> autopep8
Plug 'sbdchd/neoformat'

" ale -> linter 异步语法检查 
Plug 'dense-analysis/ale'

" commentary -> /*...*/
Plug 'tpope/vim-commentary'

" fugitive -> Git包装器
Plug 'tpope/vim-fugitive'

" gv.vim -> git browser
Plug 'junegunn/gv.vim'

" gitgutter -> shows a git diff
Plug 'airblade/vim-gitgutter'

" hybrid
Plug 'w0ng/vim-hybrid'

" iceberg
Plug 'cocopon/iceberg.vim'



" Initialize plugin system
call plug#end()





"python-mode
"启用
let g:pymode_options = 1
"开启警告
let g:pymode_warnings = 0
"保存文件时自动删除无用空格
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
"显示允许的最大长度的列
let g:pymode_options_colorcolumn = 1
"设置QuickFix窗口的最大，最小高度
"let g:pymode_quickfix_minheight = 3
"let g:pymode_quickfix_maxheight = 10
"使用python3
let g:pymode_python = 'python3'
"使用PEP8风格的缩进
let g:pymode_indent = 1
"取消代码折叠
let g:pymode_folding = 0
"开启python-mode定义的移动方式
"let g:pymode_motion = 1
"启用python-mode内置的python文档，使用K进行查找
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
"自动检测并启用virtualenv
"let g:pymode_virtualenv = 1
"不使用python-mode运行python代码
"let g:pymode_run = 0
let g:pymode_run_bind = '<Leader>r'
"不使用python-mode设置断点
"let g:pymode_breakpoint = 0
"let g:pymode_breakpoint_bind = '<leader>b'
"启用python语法检查
let g:pymode_lint = 1
"修改后保存时进行检查
let g:pymode_lint_on_write = 0
"编辑时进行检查
let g:pymode_lint_on_fly = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
"发现错误时不自动打开QuickFix窗口
let g:pymode_lint_cwindow = 0
"侧边栏不显示python-mode相关的标志
"let g:pymode_lint_signs = 0
"let g:pymode_lint_todo_symbol = 'WW'
"let g:pymode_lint_comment_symbol = 'CC'
"let g:pymode_lint_visual_symbol = 'RR'
"let g:pymode_lint_error_symbol = 'EE'
"let g:pymode_lint_info_symbol = 'II'
"let g:pymode_lint_pyflakes_symbol = 'FF'
"启用重构
"let g:pymode_rope = 1
"不在父目录下查找.ropeproject，能提升响应速度
"let g:pymode_rope_lookup_project = 0
"光标下单词查阅文档
"let g:pymode_rope_show_doc_bind = '<C-c>d'
"项目修改后重新生成缓存
"let g:pymode_rope_regenerate_on_write = 1
"开启补全，并设置<C-Tab>为默认快捷键
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Tab>'
"<C-c>g跳转到定义处，同时新建竖直窗口打开
let g:pymode_rope_goto_definition_bind = '<C-]>'
let g:pymode_rope_goto_definition_cmd = 'vnew'
"重命名光标下的函数，方法，变量及类名
let g:pymode_rope_rename_bind = '<C-c>rr'
"重命名光标下的模块或包
"let g:pymode_rope_rename_module_bind = '<C-c>r1r'
"开启python所有的语法高亮
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
"高亮缩进错误
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"高亮空格错误
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" tagbar
let g:tagbar_width=30
nmap <leader>tb :TagbarToggle<CR>

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

let g:python3_host_prog = '/usr/local/bin/python3'
