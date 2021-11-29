 return require('packer').startup(function()
    
    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}
  
    -- Color scheme
    use 'tjdevries/colorbuddy.nvim'
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
    require('telescope').load_extension('fzf')


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

    use { 'b3nj5m1n/kommentary' }

    use { 'vim-airline/vim-airline' }

    use { 'vim-airline/vim-airline-themes' }

    use {
        'windwp/nvim-autopairs'
    }

    use {
        'simrat39/symbols-outline.nvim'
    }

    use {"akinsho/nvim-toggleterm.lua"}

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

    use { 'tpope/vim-surround' }

    use {'RishabhRD/popfix'}
    use {'RishabhRD/nvim-cheat.sh'}

    use{'ray-x/go.nvim'}
    use { 'kevinhwang91/rnvimr'}

    use {'tversteeg/registers.nvim'}
    
    use {'preservim/nerdtree'}

    use {'gaborvecsei/memento.nvim'}

    -- For Packer
    use 'EdenEast/nightfox.nvim'

    -- Lua
    use {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup {
                manual_mode = true,
                -- Methods of detecting the root directory. **"lsp"** uses the native neovim
                -- lsp, while **"pattern"** uses vim-rooter like glob pattern matching. Here
                -- order matters: if one is not detected, the other is used as fallback. You
                -- can also delete or rearangne the detection methods.
                detection_methods = { "pattern" },

                -- All the patterns used to detect root dir, when **"pattern"** is in
                -- detection_methods
                patterns = { "go/mod", ".git" },
            }
        end
    }
  end)
