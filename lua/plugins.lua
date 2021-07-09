return require('packer').startup(function()
    
    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}
  
    -- Color scheme
    -- use { 'sainnhe/gruvbox-material' }
    use 'tjdevries/colorbuddy.nvim'
    use 'bkegley/gloombuddy'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use { 'nvim-telescope/telescope-media-files.nvim' }

    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-compe' }

    use {'nvim-treesitter/nvim-treesitter'}
    use {'sheerun/vim-polyglot'}

    use { 'sbdchd/neoformat' }

    -- Lua development
    use { 'tjdevries/nlua.nvim' }
  
    -- Vim dispatch
    use { 'tpope/vim-dispatch' }
  
    -- Fugitive for Git
    use { 'tpope/vim-fugitive' }

    use { 'hrsh7th/vim-vsnip' }
    use { 'xabikos/vscode-javascript' }
    use { 'golang/vscode-go' }

    use { 'mfussenegger/nvim-dap' }
    use { 'nvim-telescope/telescope-dap.nvim' }

    use {'prettier/vim-prettier', run = 'yarn install' }

    use { "folke/lua-dev.nvim" }

    use { "ray-x/lsp_signature.nvim" }

    -- Database
    use { 'tpope/vim-dadbod' }
    use { 'kristijanhusak/vim-dadbod-ui' }
    use { 'kristijanhusak/vim-dadbod-completion' }

    use { 'glepnir/lspsaga.nvim' }
    use { 'onsails/lspkind-nvim' }
    use { 'RRethy/vim-illuminate' }

    use {
        "folke/which-key.nvim",
         config = function() require("which-key").setup {} end
    }
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("trouble").setup {} end
    }
    use { 'p00f/nvim-ts-rainbow' }
    use { 'tami5/sql.nvim' }
    use {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require"telescope".load_extension("frecency")
        end
    }
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('gitsigns').setup()
        end
    }
    use { 'b3nj5m1n/kommentary' }

    use { 'fatih/vim-go' }

    use { 'preservim/nerdtree' }

    use { 'vim-airline/vim-airline' }

    use { 'vim-airline/vim-airline-themes' }
  end)
