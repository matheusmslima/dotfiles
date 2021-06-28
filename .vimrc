syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set hlsearch
set ruler
" highlight Comment ctermfg=green
" highlight Number ctermfg=cyan
" colorscheme peachpuff
" colorscheme monokai
" set background=#1d1d1f
augroup PythonCustomization
  " highlight python self, when followed by a comma, a period or a parenth
     :autocmd FileType python syn match pythonStatement "\(\W\|^\)\@<=self\([\.,)]\)\@="
     augroup END

call plug#begin('~/.vim/plugged')

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    let g:UltiSnipsListSnippets="<c-l>"

Plug 'honza/vim-snippets'

Plug 'davidhalter/jedi-vim'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none
