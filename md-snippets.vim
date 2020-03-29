" md-snippets

autocmd Filetype markdown inoremap <buffer> <C-f> <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> <C-n> <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> <C-l> ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> <C-b> **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> <C-s> ~~~~ <++><Esc>F~hi
" autocmd Filetype markdown inoremap <buffer> <C-i> ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> <C-c> `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> <C-x> ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> <C-t> - [ ] <Enter><++><ESC>kA
autocmd Filetype markdown inoremap <buffer> <C-p> ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> <C-w> [](<++>) <++><Esc>F[a
" autocmd Filetype markdown inoremap <buffer> <C-1> #<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> <C-2> ##<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> <C-3> ###<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> <C-4> ####<Space><Enter><++><Esc>kA
" autocmd Filetype markdown inoremap <buffer> <C-5> #####<Space><Enter><++><Esc>kA

