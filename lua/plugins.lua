 return require('packer').startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- Color scheme
    use 'sainnhe/gruvbox-material'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        config = function()
            require('telescope').setup({
                defaults = { file_ignore_patterns = {"mock%_.*%.go", "go/vendor"} },
                extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
            })
        end
    }


    -- Harpoon
    use {
        'ThePrimeagen/harpoon',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    }

    use { 'nvim-telescope/telescope-media-files.nvim' }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }



    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'nvim-treesitter/nvim-treesitter-textobjects'}
    use {'nvim-treesitter/playground'}


    -- use {'sheerun/vim-polyglot'}

    use { 'sbdchd/neoformat' }

    -- Lua development
    use { 'tjdevries/nlua.nvim' }

    -- Vim dispatch
    use { 'tpope/vim-dispatch' }


    -- use { 'xabikos/vscode-javascript' }

    use { 'mfussenegger/nvim-dap' }
    use { 'nvim-telescope/telescope-dap.nvim' }
    use {'theHamsta/nvim-dap-virtual-text'}
    use {'rcarriga/nvim-dap-ui'}
    use {'Pocco81/DAPInstall.nvim'}

    --[[ use {
        "rcarriga/vim-ultest",
        config = "require('config.ultest').post()",
        run = ":UpdateRemotePlugins",
        requires = {"vim-test/vim-test"}
} ]]
    use { "simrat39/symbols-outline.nvim" }

    use { "folke/lua-dev.nvim" }

    use { "ray-x/lsp_signature.nvim" }

    -- Database
    use { 'tpope/vim-dadbod' }
    use { 'kristijanhusak/vim-dadbod-ui' }
    use { 'kristijanhusak/vim-dadbod-completion' }

    -- use { 'glepnir/lspsaga.nvim' }
    use { 'onsails/lspkind-nvim' }
    use { 'yamatsum/nvim-cursorline' }

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

    -- use { 'vim-airline/vim-airline' }
    --
    -- use { 'vim-airline/vim-airline-themes' }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'windwp/nvim-autopairs'
    }

    use {"akinsho/toggleterm.nvim"}


    use { 'f-person/git-blame.nvim' }

    use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
    }

    use { 'ryanoasis/vim-devicons' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/cmp-nvim-lua' }
    use { 'hrsh7th/cmp-cmdline' }
    use { "rafamadriz/friendly-snippets" }

    use { 'tpope/vim-surround' }

    use {'RishabhRD/popfix'}
    use {'RishabhRD/nvim-cheat.sh'}

    use {'ray-x/guihua.lua',run = 'cd lua/fzy && make' }
    use{'ray-x/go.nvim'}
    use { 'kevinhwang91/rnvimr'}

    use {'tversteeg/registers.nvim'}

    use {'preservim/nerdtree'}

    use {'gaborvecsei/memento.nvim'}


    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use "lukas-reineke/indent-blankline.nvim"

    use 'kosayoda/nvim-lightbulb'

    use 'tpope/vim-obsession'
    use {
    -- Optional but recommended
    -- 'nvim-treesitter/nvim-treesitter',
    'lewis6991/spellsitter.nvim'
    }
    use { 'github/copilot.vim' }

    -- use {
    --     'romgrk/barbar.nvim',
    --     requires = {'kyazdani42/nvim-web-devicons'}
    -- }

    -- use 'karb94/neoscroll.nvim'
    use {'kevinhwang91/nvim-bqf', ft = 'qf'}
    -- use 'folke/tokyonight.nvim'
  end)
