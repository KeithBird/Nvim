" Plug
call plug#begin('~/.local/share/nvim/site/plugged')



" Python-mode
" 更改python路径
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

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

" tagbar -> right_tag
Plug 'majutsushi/tagbar'

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



" /usr/local/Cellar/neovim/0.4.3/share/nvim/runtime/colors

" hybrid
Plug 'w0ng/vim-hybrid'

" iceberg
Plug 'cocopon/iceberg.vim'



" Initialize plugin system
call plug#end()

