local utils = require('utils')
utils.map('n', '<C-l>', '<cmd> :noh<CR>') -- Clear highlights
utils.map('i', '<C-c>', '<Esc>')
utils.map('n', '<C-h>', '<C-W>h')
utils.map('n', '<C-j>', '<C-W>j')
utils.map('n', '<C-k>', '<C-W>k')
utils.map('n', '<C-l>', '<C-W>l')

utils.map("n", "<leader>g", "<cmd>lua _G._lazygit_toggle()<CR>")
utils.map("n", "<leader>s", "<cmd>:SymbolsOutline<CR>")
utils.map("n", "<leader>§", "<cmd>:Cheat<CR>")

