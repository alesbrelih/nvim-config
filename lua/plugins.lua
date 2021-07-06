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
  
    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' }
  
    use {'nvim-treesitter/nvim-treesitter'}
    use {'sheerun/vim-polyglot'}

    -- Lua development
    use { 'tjdevries/nlua.nvim' }
  
    -- Vim dispatch
    use { 'tpope/vim-dispatch' }
  
    -- Fugitive for Git
    use { 'tpope/vim-fugitive' }

    -- Snippets
    use { 'honza/vim-snippets' }

    use { 'mfussenegger/nvim-dap' }
    use { 'nvim-telescope/telescope-dap.nvim' }

    use {'prettier/vim-prettier', run = 'yarn install' }
  end)