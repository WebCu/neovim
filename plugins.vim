"=============== Plugins ==============="
call plug#begin('~/.vim/plugged')

"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Themes
Plug 'ayu-theme/ayu-vim' 

"=== JS ===
"This is for auto complete, prettier and tslinting.
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} 

"List of CoC extensions needed.
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-phpls']  

"This will auto close ( [ {
" Plug 'jiangmiao/auto-pairs' 

"These two plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

"=== Snippets == "
"Track the engine.
Plug 'SirVer/ultisnips'

"Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

"Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
"- https://github.com/Valloric/YouCompleteMe
"- https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"

"Surround Text
Plug 'tpope/vim-surround'

"Super Tab
Plug 'ervandew/supertab'

"=== PHP === "

"PHP Namespaces
Plug 'arnaud-lb/vim-php-namespace'

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

"PHP Syntax
Plug 'StanAngeloff/php.vim'

"PHP CS Fixer
Plug 'stephpy/vim-php-cs-fixer'

"PHPDocumentor
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'

call plug#end()
