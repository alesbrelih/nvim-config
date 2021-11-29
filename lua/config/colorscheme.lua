local utils = require('utils')
local cmd = vim.cmd
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'background', "dark")
-- require'colorbuddy'.colorscheme('gloombuddy')
cmd 'colorscheme gruvbox-material'
-- require('nightfox').load("nightfox")
