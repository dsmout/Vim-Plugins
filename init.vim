set number
syntax on
call plug#begin('~/Git_Stuff/Vim_Plugins')
Plug 'lervag/vimtex'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'zchee/deoplete-jedi'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:deoplete#enable_at_startup = 1
call plug#end()
let g:tex_flavor = 'latex'
set splitbelow
set splitright
set completeopt=menu,noinsert
call deoplete#custom#var('omni', 'input_patterns', {'tex': g:vimtex#re#deoplete})

" New Key bindings

nnoremap <C-\> :Files ~<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-Left> :vert res +5<CR>
nnoremap <C-Right> :vert res -5<CR>
nnoremap <C-Up> :res -5<CR>
nnoremap <C-Down> :res +5<CR>

let mapleader=","
imap :r1 :so ~/.config/nvim/init.vim<CR>
" horz to vert split
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

