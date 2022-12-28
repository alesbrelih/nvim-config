local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap = false
if fn.empty(fn.glob(install_path)) > 0 then
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
    use {'kyazdani42/nvim-web-devicons'}
    use {'nvim-lualine/lualine.nvim'}

    -- helpers
    use {'windwp/nvim-autopairs'}
    use {"folke/which-key.nvim"}
    use {'akinsho/toggleterm.nvim'}
    use {'f-person/git-blame.nvim'}

    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")

    -- fuzzy finder
    use {'nvim-telescope/telescope.nvim'}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    -- treesitter support
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'nvim-treesitter/nvim-treesitter-textobjects'}

    -- navigation
    use {'ThePrimeagen/harpoon'}
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
    use {"folke/trouble.nvim"}

    -- handling of non LSP linters/formatters
    use {'jose-elias-alvarez/null-ls.nvim'}

    -- file sybols
    use {'simrat39/symbols-outline.nvim'}

    use {'towolf/vim-helm'}

    use {
        "someone-stole-my-name/yaml-companion.nvim",
        requires = {
            {"neovim/nvim-lspconfig"}, {"nvim-lua/plenary.nvim"},
            {"nvim-telescope/telescope.nvim"}
        },
        config = function()
            require("telescope").load_extension("yaml_schema")
        end
    }

    -- If you are using Packer
    if packer_bootstrap then require('packer').sync() end
end)

require("indent_blankline").setup {show_end_of_line = true}
