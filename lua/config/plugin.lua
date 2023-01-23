local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugin.lua source <afile> | PackerSync
augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    --Local VIMRC support
    use 'embear/vim-localvimrc'
    -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
    --Themes
    use { 'gruvbox-community/gruvbox', as = 'gruvbox' }
    use { 'dracula/vim', as = 'dracula' }
    use { 'folke/tokyonight.nvim', as = 'tokyonight' }
    --
    --
    --fzf
    use { 'junegunn/fzf', run = ':call fzf#install()' }
    use 'junegunn/fzf.vim'

    -- cmp plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp" --[[ Important : this adds the LSP capability to cmp. Used in handlers file to extend ]]
    use "hrsh7th/cmp-nvim-lua" --[[  You can get the vim.lsp.util.* API with this source. ]]
    use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }

    -- snippets
    use {"L3MON4D3/LuaSnip",
        commit= "5ce70a0",
    } --snippet engine

    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    --LSP Value
    use { "williamboman/mason.nvim" } -- manage lsp , dap , null-ls
    use { "williamboman/mason-lspconfig.nvim" } -- config for loading lsp
    use "neovim/nvim-lspconfig" -- enable LSP
    use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for

    -- Tree Sitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }


    use "tpope/vim-surround"


    --Comment support
    use "numToStr/Comment.nvim" -- Easily comment stuff
    use 'JoosepAlviste/nvim-ts-context-commentstring'


    --NeoTree + Icons
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'


    --Git Masti
    use 'tpope/vim-fugitive'
    use "lewis6991/gitsigns.nvim"


    --Clojure Conjure

    use { "Olical/conjure", ft = { 'clj', 'clojure' } }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
