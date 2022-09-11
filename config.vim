set exrc
set relativenumber
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nohlsearch
set hidden
set noerrorbells
set ignorecase
set smartcase
set undodir=~/.local/share/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set showmode
set signcolumn=yes
set pumheight=10



"splits
set splitbelow
set splitright

"get more space for printing messages
set cmdheight=2

"Lower update time to imporve the experience of the user
set updatetime=500

"Dont pass messages to |ins-completion-menu|
"set shortmess=+c ;;Commenting not working

"Map leader
let mapleader = " " 

"Fzf binding
nmap <C-P> :FZF<CR>
nmap <leader>pf :Rg<CR>
nnoremap <leader>bb :Buffers<CR>

"Some asthethic changes.
set fcs=foldopen:🞃,foldclose:▸,foldsep:¦,stl:⚋
set foldcolumn=2
set foldmethod=marker




"" Package manager VIM-PLUG 
"call plug#begin()
""Dracula Theme
""GruvBox Theme
"Plug 'dracula/vim', { 'name': 'dracula' }
"Plug 'gruvbox-community/gruvbox'
""
""
"""fzf
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"
"
"" The default plugin directory will be as follows:
""   - Vim (Linux/macOS): '~/.vim/plugged'
""   - Vim (Windows): '~/vimfiles/plugged'
""   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
"" You can specify a custom plugin directory by passing it as the argument
""   - e.g. `call plug#begin('~/.vim/plugged')`
""   - Avoid using standard Vim directory names like 'plugin'
"
""" Make sure you use single quotes
""
""" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
""Plug 'junegunn/vim-easy-align'
""
""" Any valid git URL is allowed
""Plug 'https://github.com/junegunn/vim-github-dashboard.git'
""
""" Multiple Plug commands can be written in a single line using | separators
""Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
""
""" On-demand loading
""Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
""Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
""
""" Using a non-default branch
""Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
""
""" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
""Plug 'fatih/vim-go', { 'tag': '*' }
""
""" Plugin options
""Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
""
""" Plugin outside ~/.vim/plugged with post-update hook
""Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
""
""" Unmanaged plugin (manually installed and updated)
""Plug '~/my-prototype-plugin'
"
"" " plugin from http://vim-scripts.org/vim/scripts.html
"" " Plugin 'L9'
"" "Plugin 'tpope/vim-fugitive'
""
"call plug#end()
"


filetype plugin indent on    " required

command! Format execute 'lua vim.lsp.buf.formatting()'



