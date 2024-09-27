" Ativar a numeração das linhas
set number

" Habilitar a indentação automática
set autoindent

" Habilitar o uso de 4 espaços para cada tabulação
set tabstop=4
set shiftwidth=4
set expandtab

" Ativar a pesquisa incremental
set incsearch

" Sensibilidade a maiúsculas e minúsculas na pesquisa
set ignorecase
set smartcase

" Habilitar a sintaxe de cores
syntax on

" Mostrar a linha e coluna atuais
set ruler

" Ativar a barra de status
set laststatus=2

" Alias
nnoremap <silent> <C-F> :NERDTreeToggle<CR>
nnoremap <F2> :set wrap!<CR>

" Iniciar o vim-plug
call plug#begin('~/.vim/plugged')

    " Pacotes essenciais
    Plug 'tpope/vim-sensible'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-scripts/vim-syntax-x86'
    Plug 'rusty1s/vim-verilog'

    " Estética e aparência
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'morhetz/gruvbox'  " Tema gruvbox

    " Utilitários
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'kien/ctrlp.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Complemento, linters e formatadores
    Plug 'plasticboy/vim-markdown'
    Plug 'airblade/vim-gitgutter'

    " Linguagens de programação
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'vim-jp/vim-cpp'
    Plug 'junegunn/gv.vim'
    Plug 'rip-rip/clang_complete'
    Plug 'yggdroot/indentline'
    Plug 'vhda/verilog_systemverilog.vim'
    Plug 'henry-hsieh/riscv-asm-vim'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" Configurações para o tema gruvbox
set background=dark
colorscheme gruvbox

" Ativar o autocompletar com o coc.nvim
set completeopt=menuone,noinsert,noselect

" Mapeamentos básicos para o coc.nvim
inoremap <silent><expr> <C-n> coc#refresh()
nnoremap <leader>rn <Plug>(coc-rename)
nnoremap <leader>f  <Plug>(coc-format)
nnoremap <leader>j  <Plug>(coc-jump-definition)
nnoremap <leader>k  <Plug>(coc-jump-type-definition)
nnoremap <leader>gd <Plug>(coc-goto-definition)
nnoremap <leader>gi <Plug>(coc-goto-implementation)
nnoremap <leader>gr <Plug>(coc-goto-references)


