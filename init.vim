"=============== General Settings ==============="
set guicursor=
set scrolloff=8
set number                          "Activates line numbers.
set relativenumber                  "Activates relative line numbers.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autowriteall                    "Automatically write the file when switching buffers.
set noerrorbells visualbell t_vb=   "No damn bells!
set backspace=indent,eol,start      "Make backspace behave like every other editor.
set complete=.,w,b,u                "Set our desired autocompletion matching.

"Tabs and spaces.
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4


"Tags
set tags+=tags,tags.vendors

"Plugins
so ~/.config/nvim/plugins.vim

"=============== Themes ==============="
set termguicolors       "Enable true colors support.
let ayucolor="light"    "For light version of theme.
let ayucolor="mirage"   "For mirage version of theme.
let ayucolor="dark"     "For dark version of theme.
colorscheme ayu



"=============== Visuals ==============="
set linespace=15
set t_CO=256                    "Use 256  colors. This is useful for Terminal Vim.
set guioptions-=e               "We don't want Gui tabs.
set guioptions-=l               "Disable Gui scrollbars.
set guifont=Fira\ Code:h17      "Set the default font family and size.


"=============== Split Management ==============="
set splitbelow
set splitright




"=============== Search ==============="
"set hlsearch                               "Is active by default in nvim.  
"set incsearch                              "Is active by default in nvim.  

"ripgrep to search
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set grepformat=%f:%l:%c:%m


"=============== Mappings ==============="
let mapleader = " "                                     "The default leader key is \, but a space(' ') is much better.
nnoremap <leader>pv :vsp<CR>

"Shortcut to edit init.vim
nnoremap <leader>ev :tabedit $MYVIMRC<CR>

"Shortcut to edit plugin.vim
nnoremap <leader>ep :tabedit ~/.config/nvim/plugins.vim<CR>

"Shortcut to source init.vim
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

"Search files in Git
nnoremap <C-p> :GFiles<CR>

"Search files in Git
nnoremap <leader>pf :Files<CR>

nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

"Add simple highlight removal.
nnoremap <leader>, :nohlsearch<CR>

"Noeclide COC
"Make <CR> auto-select the first completion item and notify coc.nvim to
"format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:pdv_template_dir = $HOME."/.vim/plugged/pdv/templates_snip"
nnoremap <leader>pd :call pdv#DocumentWithSnip()<CR>

"=============== Auto-Commands ==============="
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.config/nvim/init.vim so %
augroup END
