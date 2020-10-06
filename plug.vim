" Plug
call plug#begin('~/.local/share/nvim/site/plugged')

" undotree
" ========
nnoremap <leader>ud :UndotreeToggle<CR>
set undodir=~/.undodir/
set undofile

" Python-mode
" ===========
" 更改vim's python路径
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
source ~/.config/nvim/python_mode.vim

" coc.nvim -> complete
" ====================
" 配置js环境，见wiki
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" [Example vim configuration]

" Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" [Coc Extensions]

" ~/.config/coc/extensions

" coc-translator
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)

" coc-actions
function! s:cocActionsOpenFromSelected(type) abort
    execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

"coc-bookmark
nnoremap <leader>j <Plug>(coc-bookmark-next)
nnoremap <leader>k <Plug>(coc-bookmark-prev)
nnoremap <leader>m <Plug>(coc-bookmark-toggle)
nnoremap <leader>mm <Plug>(coc-bookmark-annotate)
nnoremap <leader>ml :CocList bookmark<CR>

" Install
let g:coc_global_extensions = [
	\ 'coc-actions',
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-html',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-pyright',
	\ 'coc-python',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tasks',
	\ 'coc-todolist',
	\ 'coc-translator',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-yank',
	\ 'coc-translator',
	\ 'coc-pairs',
	\ 'coc-marketplace',
	\ 'coc-highlight',
	\ 'coc-bookmark']

" pip autopep8, 见视频
" ============
Plug 'sbdchd/neoformat'

" ale -> linter 异步语法检查
" ===
" pip,见视频
Plug 'dense-analysis/ale'

" fzf
" ===
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Nerdtree -> file system explorer
" ========
Plug 'scrooloose/nerdtree'

" indentline -> show indents
" ==========
Plug 'yggdroot/indentline'

" airline
" =======
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" surround -> double (
" ========
Plug 'tpope/vim-surround'

" easymotion -> ss
" ==========
Plug 'easymotion/vim-easymotion'
nmap ss <Plug>(easymotion-s2)

" tagbar -> right_tag
" ======
Plug 'majutsushi/tagbar'
nnoremap <leader>tb :Tagbar<CR>
let g:tagbar_width=30

" commentary -> /*...*/
" ==========
Plug 'tpope/vim-commentary'

" fugitive -> Git包装器
" ========
Plug 'tpope/vim-fugitive'

" gv.vim -> git browser
" ======
Plug 'junegunn/gv.vim'

" gitgutter -> show a git diff
" =========
Plug 'airblade/vim-gitgutter'

" undotree
" ========
Plug 'mbbill/undotree'

" vimtex
" ======
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'

" vim-markdown
" ============
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" 代码高亮
let g:markdown_fenced_languages = ['css', 'js=javascript']

" start LaTeX
let g:vim_markdown_math = 1

" 禁用折叠
let g:vim_markdown_folding_disabled = 1

" 以类似python-mode的样式进行折叠
" let g:vim_markdown_folding_style_pythonic = 1

" Vim的标准隐藏配置
" set conceallevel=2

" 禁用语法隐藏
let g:vim_markdown_conceal = 0

" 禁用LaTeX隐藏
let g:tex_conceal = 0

" 禁用隐藏代码栅栏
let g:vim_markdown_conceal_code_blocks = 0

" 缩进为4
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
" ======
Plug 'w0ng/vim-hybrid'

" iceberg
" =======
Plug 'cocopon/iceberg.vim'

" swift.vim
" =========
Plug 'keith/swift.vim'
Plug 'vim-syntastic/syntastic'

" Initialize plugin system
call plug#end()

