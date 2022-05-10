local fn = vim.fn
local execute = vim.api.nvim_command

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Map leader to space
vim.g.mapleader = ' '

-- Sensible defaults

require('settings')

-- Key mappings
require('keymappings')

-- Plugins
require('plugins')

require('config')

require('debugger')

-- LSP
require('lang')
--

-- require('barbar')

require('lualine').setup {
    options = { theme = 'gruvbox-material' }
}

require('go').setup({
    dap_debug = true,
    dap_debug_gui = true,
    dap_debug_vt = true,
    build_tags="mock,integration_tests",
    verbose= true,
    log_path="/tmp/go.nvim",
    test_runner="richgo",
    run_in_floaterm = true,
    verbose_tests = false
})
--
-- Run gofmt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
