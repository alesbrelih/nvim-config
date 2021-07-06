local utils = require('utils')
local cmd = vim.cmd
utils.opt('o', 'termguicolors', true)
require'colorbuddy'.colorscheme('gloombuddy')
-- cmd 'colorscheme gruvbox-material'