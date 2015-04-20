execute pathogen#infect()
let mapleader = ","
syntax on
colorscheme mustang
filetype plugin indent on
set number
"set list
nnoremap <F5> :GundoToggle<CR>

"usado para ultisnips
set runtimepath+=~/.vim/ultisnips_rep

augroup vimrc_autocmds
	autocmd!
	" highlight characters past column 120
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%120v.*/
        autocmd FileType python set nowrap
augroup END

" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

map <C-n> :NERDTreeToggle<CR>

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

" recomended settings para systastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
  
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"mapeamento de teclado
nmap <leader>l :set list!<CR>
inoremap jj <ESC>
set listchars=tab:▸\ ,eol:¬
"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
