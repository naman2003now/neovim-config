call plug#begin('~/.vim/plugged')

	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'chrisbra/vim-commentary'
" Plug 'preservim/nerdtree'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'airblade/vim-rooter'
	Plug 'rhysd/vim-clang-format'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'airblade/vim-gitgutter'

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
autocmd BufWritePre *.ts Prettier
autocmd BufWritePre *.html Prettier
autocmd BufWritePre *.css Prettier

" Terminal Normal Mode
" tnoremap <Esc> <C-\><C-n>
" tnoremap <C-[> <C-\><C-n>

" Open Terminal
" noremap st :terminal<CR>

" FZF Git Search
" noremap <C-p> :GFiles<CR>
" noremap <C-b> :Files<CR>

" Window Navigation
" noremap sh <C-w>h
" noremap sj <C-w>j
" noremap sk <C-w>k
" noremap sl <C-w>l

" Window movement
" noremap sH <C-w>H
" noremap sJ <C-w>J
" noremap sK <C-w>K
" noremap sL <C-w>L

" Window swapping
" noremap sr <C-w>r
" noremap sR <C-w>R

" Window Splitting
" noremap sv <C-w>v
" noremap ss <C-w>s

" Window resizing
" noremap s< <C-w><
" noremap s> <C-w>>
" noremap s- <C-w>-
" noremap s+ <C-w>+
" noremap s= <C-w>=

" Tab Utilities
" noremap sn :tabnew<CR>
" noremap [t :tabprevious<CR>
" noremap ]t :tabnext<CR>

" Buffer Navigation
noremap ]b :bnext<CR>
noremap [b :bprevious<CR>
