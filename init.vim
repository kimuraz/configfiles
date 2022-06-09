:set number
:set autoindent
:set tabstop=4
:set smarttab
:set mouse=a
set encoding=UTF-8

call plug#begin()

" Github's copilo
Plug 'https://github.com/github/copilot.vim'

" Monokai theme
Plug 'sainnhe/sonokai'

" NerdTree for file browsing
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Fuzzy search S2
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Vue syntax
Plug 'posva/vim-vue'

" Status bar
Plug 'https://github.com/vim-airline/vim-airline'

call plug#end()

let g:fzf_preview_window = ['right:50%', 'ctrl-/']

autocmd BufRead,BufNewFile *.vue setfiletype html

let g:vue_pre_processors = ['scss']

" Toggle NERDTree CTRL+t
nnoremap <C-t> :NERDTreeToggle<CR>

" File search with fzf \F
nnoremap <silent> <Leader>f :Files<CR>

" Trigger Ag the silver search \f
nnoremap <silent> <Leader>F :Ag<CR>

" History search
nnoremap <silent> <Leader>h :History<CR>
