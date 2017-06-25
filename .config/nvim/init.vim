set cindent
set tabstop=4
set shiftwidth=4
set ruler
set number
set showcmd
set formatoptions+=ro
set showmode
set list

call plug#begin('~/.local/share/nvim/plugged')

Plug 'arakashic/chromatica.nvim'
Plug 'scrooloose/nerdtree'

call plug#end()

let g:chromatica#enable_at_startup=1
" Open file browser with Ctrl-N
map <C-n> :NERDTreeToggle<CR>

" Go to normal mode by pressing jk
imap jk <Esc>

" Highlight trailing whitespace in red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Switch windows easily with Ctrl-[hjkl]
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
" Workaround for a bug in Neovim
nmap <BS> <C-W>h

set mouse=a

" Use system clipboard
set clipboard+=unnamedplus
