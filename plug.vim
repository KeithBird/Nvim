" Plug
call plug#begin('~/.local/share/nvim/site/plugged')



" undotree
nnoremap <leader>ud :UndotreeToggle<CR>
set undodir=~/.undodir/
set undofile

" Python-mode
" 更改vim's python路径
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
source ~/.config/nvim/python_mode.vim

" coc.nvim -> complete
" 配置js环境，见wiki
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" neoformat -> autopep8
" pip autopep8,见视频
Plug 'sbdchd/neoformat'

" ale -> linter 异步语法检查
" pip,见视频
Plug 'dense-analysis/ale'

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
nmap ss <Plug>(easymotion-s2)

" tagbar -> right_tag
Plug 'majutsushi/tagbar'
nnoremap <leader>tb :Tagbar<CR>
let g:tagbar_width=30

" commentary -> /*...*/
Plug 'tpope/vim-commentary'

" fugitive -> Git包装器
Plug 'tpope/vim-fugitive'

" gv.vim -> git browser
Plug 'junegunn/gv.vim'

" gitgutter -> show a git diff
Plug 'airblade/vim-gitgutter'

" undotree
Plug 'mbbill/undotree'



" vim-markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" start LaTeX
let g:vim_markdown_math = 1
" 禁用折叠
" let g:vim_markdown_folding_disabled = 1
" Vim的标准隐藏配置
set conceallevel=2
" 禁用隐藏
let g:vim_markdown_conceal = 0
" 缩进为2
let g:vim_markdown_new_list_item_indent = 4

" markdown-preview.nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" 指定浏览器路径
" let g:mkdp_path_to_chrome = "path/of/chrome"

" ultimate solution for snippets
Plug 'SirVer/ultisnips'
"设置tab键为触发键
let g:UltiSnipsExpandTrigger = '<tab>'
"设置向后跳转键
let g:UltiSnipsJumpForwardTrigger = '<tab>' 
"设置向前跳转键
let g:UltiSnipsJumpBackwardTrigger = '<C-p>' 
"设置文件目录
"let g:UltiSnipsSnippetDirectories=["path/of/snippetDirectories"]
"设置打开配置文件时为垂直打开
"let g:UltiSnipsEditSplit="vertical" 



" /usr/local/Cellar/neovim/0.4.3/share/nvim/runtime/colors

" hybrid
Plug 'w0ng/vim-hybrid'

" iceberg
Plug 'cocopon/iceberg.vim'



" Initialize plugin system
call plug#end()

