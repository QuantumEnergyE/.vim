" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

set rnu
syntax on
set tabstop=4
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
colorscheme molokai
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
" Enable folding
set foldmethod=indent
set foldlevel=99
" provide python3
let g:ycm_python_binary_path = '/usr/local/bin/python3.6'
" enable fzf
set rtp+=/usr/local/opt/fzf
" ale flake8 for python3
let g:ale_python_flake8_executable = 'python3'   " or 'python' for Python 2
let g:ale_python_flake8_options = '-m flake8'
" enable flake8
let g:ale_linters = {'python': ['flake8']}
" enable yapf
let g:ale_fixers = {'python': ['yapf']}
