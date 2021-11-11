call plug#begin()
Plug 'preservim/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tmsvg/pear-tree'
Plug 'neovim/nvim-lspconfig'
Plug 'ap/vim-css-color'
Plug 'prettier/vim-prettier'
Plug 'nvim-telescope/telescope.nvim'
Plug 'plasticboy/vim-markdown'
Plug 'ntk148v/vim-horizon'
Plug 'mattn/emmet-vim'

call plug#end()

colorscheme horizon 


nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

inoremap kj <ESC>

set scrolloff=8
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

lua <<EOF
require'lspconfig'.ccls.setup{}
EOF

