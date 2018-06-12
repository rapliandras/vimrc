execute pathogen#infect()
call pathogen#helptags()


source /home/arapli/devenv/plugins.conf
source /home/arapli/devenv/mappings.conf
source /home/arapli/devenv/autocmd.conf
source /home/arapli/devenv/overrides.conf
source /home/arapli/devenv/plugins/airline.conf

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

let g:ycm_collect_identifiers_from_tags_files = 1


" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
" Fast saves

" Down is really the next line
nnoremap j gj
nnoremap k gk

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

nmap <C-b> :NERDTreeToggle<cr>

" Create split below
nmap :sp :rightbelow sp<cr>

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>

highlight Search cterm=underline


" Run PHPUnit tests
map <Leader>t :!phpunit %<cr>

" Completion by andrew
filetype plugin on
"set omnifunc=syntaxcomplete#Complete
autocmd FileType php setlocal omnifunc=phpactor#Complete

let g:SuperTabDefaultCompletionType = ""

" Easy motion stuff
let g:EasyMotion_leader_key = '<Leader>'

" Powerline (Fancy thingy at bottom stuff)
let g:Powerline_symbols = 'fancy'

" Remove search results
command! H let @/=""


:highlight Pmenu ctermbg=blue gui=bold

