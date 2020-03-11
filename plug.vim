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

" gitgutter -> show a git diff
Plug 'airblade/vim-gitgutter'



" /usr/local/Cellar/neovim/0.4.3/share/nvim/runtime/colors

" hybrid
Plug 'w0ng/vim-hybrid'

" iceberg
Plug 'cocopon/iceberg.vim'



" Initialize plugin system
call plug#end()

