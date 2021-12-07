call plug#begin()
Plug 'preservim/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neovim/nvim-lspconfig'
Plug 'ap/vim-css-color'
Plug 'nvim-telescope/telescope.nvim'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'plasticboy/vim-markdown'
Plug 'ntk148v/vim-horizon'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

set number! relativenumber!

lua <<EOF
require'lspconfig'.ccls.setup{}
EOF

