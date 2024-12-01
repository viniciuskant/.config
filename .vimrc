set number
set cursorline

" Estilo para a caixa de sugestão
highlight CocMenuSel guibg=#3e4451 guifg=#abb2bf
highlight CocPumBorder guibg=#282c34 guifg=#61afef

" Cores para diferentes tipos de itens
highlight CocHintSign guifg=#56b6c2
highlight CocInfoSign guifg=#61afef
highlight CocWarningSign guifg=#e5c07b
highlight CocErrorSign guifg=#e06c75

" Configuração dos sinais de diagnóstico do coc.nvim
sign define CocErrorSign text=✗ texthl=CocErrorSign
sign define CocWarningSign text=⚠ texthl=CocWarningSign
sign define CocInfoSign text=ℹ texthl=CocInfoSign
sign define CocHintSign text=➤ texthl=CocHintSign


let g:coc_max_lines=10
let g:coc_max_colums=80

" Verificação ortográfica apenas para latex
autocmd FileType tex setlocal spell spelllang=pt

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

" Atalho quebra de linha
map <C-z> :set wrap!<CR>

" Alias
nnoremap <silent> <C-F> :NERDTreeToggle<CR>
nnoremap <F2> :set wrap!<CR>

" Criar ou mudar para uma aba específica (1 a 9)
for i in range(1, 9)
  execute 'nnoremap <silent> <A-' . i . '> :tabnext ' . i . '<CR>'
endfor

" Atalho para criar uma nova aba
nnoremap <silent> <A-t> :tabnew<CR>


" Usa Zathura como visualizador de PDFs
let g:vimtex_view_method = 'evince'

" Compilação automática de LaTeX
let g:vimtex_compiler_method = 'latexmk'


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
    Plug 'junegunn/fzf', { 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Complemento, linters e formatadores
    Plug 'plasticboy/vim-markdown'
    Plug 'airblade/vim-gitgutter'

    " Linguagens de programação
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'vim-jp/vim-cpp'
    Plug 'junegunn/gv.vim'
    Plug 'lervag/vimtex'
    Plug 'Valloric/YouCompleteMe'
    Plug 'davidhalter/jedi-vim'
    Plug 'rip-rip/clang_complete'
    Plug 'yggdroot/indentline'
    Plug 'vhda/verilog_systemverilog.vim'
    Plug 'henry-hsieh/riscv-asm-vim'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    Plug 'lervag/vimtex'

call plug#end()

" Configurações para o tema gruvbox
set background=dark
colorscheme gruvbox

" Ativar o autocompletar com o coc.nvim
set completeopt=menuone,noinsert,noselect

" Mapeamentos básicos para o coc.nvim
" Usar <C-n> para descer nas sugestões e <C-p> para subir
inoremap <silent><expr> <C-p> pumvisible() ? "\<C-p>" : coc#refresh()
inoremap <expr> <C-n> pumvisible() ? "\<C-n>" : "\<C-n>"

" Pressione <Enter> para selecionar a sugestão
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" Mapeamentos de funções do coc.nvim
nnoremap <leader>rn <Plug>(coc-rename)
nnoremap <leader>f  <Plug>(coc-format)
nnoremap <leader>j  <Plug>(coc-jump-definition)
nnoremap <leader>k  <Plug>(coc-jump-type-definition)
nnoremap <leader>gd <Plug>(coc-goto-definition)
nnoremap <leader>gi <Plug>(coc-goto-implementation)
nnoremap <leader>gr <Plug>(coc-goto-references)

