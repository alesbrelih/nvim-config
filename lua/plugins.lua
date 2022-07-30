local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
print(install_path);
local packer_bootstrap = false
if fn.empty(fn.glob(install_path)) > 0 then
    print("empty");
    packer_bootstrap = fn.system({
        'git', 'clone', '--depth', '1',
        'https://github.com/wbthomason/packer.nvim', install_path
    })
    vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}

    -- display
    use {'p00f/nvim-ts-rainbow'}
    use "lukas-reineke/indent-blankline.nvim"
    use {'yamatsum/nvim-cursorline'}
    use {'sainnhe/gruvbox-material'}
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- helpers
    use {'windwp/nvim-autopairs'}
    use {"folke/which-key.nvim"}
    use {'akinsho/toggleterm.nvim'}
    use {'f-person/git-blame.nvim'}

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    -- treesitter support
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'nvim-treesitter/nvim-treesitter-textobjects'}

    -- navigation
    use {
        'ThePrimeagen/harpoon',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use {'phaazon/hop.nvim', branch = 'v1'}

    -- file explorer
    use {'kevinhwang91/rnvimr'}

    -- registers
    use {'tversteeg/registers.nvim'}

    -- comments
    use {'numToStr/Comment.nvim'}

    -- lightbulb
    use 'kosayoda/nvim-lightbulb'

    -- session saving
    use {'tpope/vim-obsession'}

    -- quickfix
    use {'kevinhwang91/nvim-bqf', ft = 'qf'}

    use {
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim", 'nvim-neotest/neotest-go'
        }
    }
    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'}, {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'}, -- Autocompletion
            {'hrsh7th/nvim-cmp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'}, {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'}, -- Snippets
            {'L3MON4D3/LuaSnip'}, {'rafamadriz/friendly-snippets'}
        }
    }
    use {'ray-x/lsp_signature.nvim'}
    use {'onsails/lspkind-nvim'}
    use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}

    -- handling of non LSP linters/formatters
    use {'jose-elias-alvarez/null-ls.nvim'}

    -- file sybols
    use {'simrat39/symbols-outline.nvim'}
    if packer_bootstrap then require('packer').sync() end
end)
