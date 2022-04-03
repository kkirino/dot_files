" vim-polyglot disable
let g:polyglot_disabled = ['markdown']

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

call plug#end()

" global
syntax on
set number
set expandtab
set mouse=a

" find files
set path+=$PWD/**

" remove syntax hightlight on "_" in markdown file
augroup update_markdown_syntax
  autocmd!
  autocmd FileType markdown syntax match markdownError '\w\@<=\w\@='
augroup END

" coc.nvim
let g:coc_global_extensions = ["coc-html", "coc-tsserver", "coc-prettier", "coc-pyright", "coc-explorer", "coc-json", "coc-yaml", "coc-docker"]

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" coc-explorer
nmap <space>e <Cmd>CocCommand explorer<CR>

" LightLine.vim 
set laststatus=2
