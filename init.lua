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

require('go').setup({
    dap_debug = true,
    dap_debug_gui = true,
    dap_debug_vt = true,
    build_tags="mock,integration_tests",
    test_runner="richgo",
    run_in_floaterm = true
})
