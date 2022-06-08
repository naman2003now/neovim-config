call plug#begin('~/.vim/plugged')

	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'chrisbra/vim-commentary'
	Plug 'preservim/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'
	Plug 'rhysd/vim-clang-format'

call plug#end()

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim

colorscheme gruvbox

set nu
syntax on
set tabstop=2
set shiftwidth=2
set nowrap

" Code formatting
autocmd BufWritePre *.c ClangFormat
autocmd BufWritePre *.cpp ClangFormat
autocmd BufWritePre *.js Prettier
autocmd BufWritePre *.html Prettier
autocmd BufWritePre *.css Prettier

tnoremap <Esc> <C-\><C-n>

noremap <C-p> :GFiles<CR>

"Move between windows
" noremap <Left> <C-w>H
" noremap <Right> <C-w>L
" noremap <Down> <C-w>J
" noremap <Up> <C-w>K

noremap sh <C-w>h
noremap sj <C-w>j
noremap sk <C-w>k
noremap sl <C-w>l

noremap sv <C-w>v
noremap ss <C-w>s


noremap s< <C-w><
noremap s> <C-w>>
noremap s- <C-w>-
noremap s+ <C-w>+

noremap s= <C-w>=

noremap sn :tabnew<CR>
noremap [t :tabprevious<CR>
noremap ]t :tabnext<CR>

