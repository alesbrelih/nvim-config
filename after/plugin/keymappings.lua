local utils = require('utils')

vim.g.mapleader = ' '
vim.g.ftplugin_sql_omni_key = '<C-j>'

utils.map('n', '<C-l>', '<cmd> :noh<CR>') -- Clear highlights
utils.map('i', '<C-c>', '<Esc>')
utils.map('n', '<C-h>', '<C-W>h')
utils.map('n', '<C-j>', '<C-W>j')
utils.map('n', '<C-k>', '<C-W>k')
utils.map('n', '<C-l>', '<C-W>l')
-- utils.map('n', '<C-x>', '<C-W>w<C-W>q')

utils.map("n", "<leader>c", "<cmd>lua _G._vd_toggle()<CR>")
utils.map("n", "<leader>g", "<cmd>lua _G._lazygit_toggle()<CR>")
utils.map("n", "<leader>8", "<cmd>lua _G._k9s_toggle()<CR>")
utils.map("n", "<leader>s", "<cmd>:SymbolsOutline<CR>")
utils.map("n", "<leader>§", "<cmd>:Cheat<CR>")

-- debug
utils.map("n", "<leader>ds", "<cmd>:GoDebug -n<CR>")
utils.map("n", "<leader>dd", "<cmd>:GoDbgStop<CR>")
utils.map("n", "<leader>dt", "<cmd>:GoBreakToggle<CR>")
utils.map("n", "<leader>dc", "<cmd>:GoBreakCondition<CR>")

-- harpoon
utils.map("n", "<leader>cc",
          "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
utils.map("n", "<leader>cp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>")
utils.map("n", "<leader>cn", "<cmd>lua require('harpoon.ui').nav_next()<CR>")
utils.map("n", "<leader>c1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>")
utils.map("n", "<leader>c2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>")
utils.map("n", "<leader>c3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>")
utils.map("n", "<leader>c4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>")
utils.map("n", "<leader>ca", "<cmd>lua require('harpoon.mark').add_file()<CR>")

-- hop
utils.map("n", "§w", ":HopWord<CR>")
utils.map("n", "§c", ":HopChar1<CR>")
utils.map("n", "§cc", ":HopChar2<CR>")
utils.map("n", "§p", ":HopPattern<CR>")
utils.map("n", "§l", ":HopLine<CR>")

-- trouble
utils.map("n", "<leader>xx", "<cmd>TroubleToggle<CR>")
utils.map("n", " <leader>xw", "<cmd>TroubleToggle lsp_workspace_diagnostics<CR>")
utils.map("n", "<leader>xd", "<cmd>TroubleToggle lsp_document_diagnostics<CR>")
utils.map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<CR>")
utils.map("n", "<leader>xl", "<cmd>TroubleToggle loclist<CR>")
utils.map("n", "<leader>xr", "<cmd>TroubleToggle lsp_references<CR>")

-- telescope
utils.map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
utils.map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
utils.map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
utils.map("n", "<leader>fs", "<cmd>Telescope grep_string<cr>")
utils.map("n", "<leader>fc",
          "<cmd>Telescope commands<cr><cmd>Telescope live_grep<cr>")
utils.map("n", "<leader>fm", "<cmd>Telescope marks<cr>")
utils.map("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>")
utils.map("n", "<leader>fi", "<cmd>Telescope lsp_implementations<cr>")
utils.map("n", "<leader>fd", "<cmd>Telescope lsp_definitions<cr>")

-- rnvr
utils.map("n", "<leader>n", ":RnvimrToggle<CR>")

-- helpers
utils.map("n", "Y", "y$")

-- keeping it centered
utils.map("n", "n", "nzzzv")
utils.map("n", "N", "Nzzzv")
utils.map("n", "J", "mzJ`z")

-- undo break points
utils.map("i", ",", ",<c-g>u")
utils.map("i", ".", ".<c-g>u")
utils.map("i", "!", "!<c-g>u")
utils.map("i", "?", "?<c-g>u")
utils.map("i", "}", "}<c-g>u")
utils.map("i", ")", ")<c-g>u")
utils.map("i", "]", "]<c-g>u")

-- when indenting keep selection
utils.map("v", "<", "<gv")
utils.map("v", ">", ">gv")

-- reselect original text when pasting in visual mode
utils.map("x", "p", "pgvy")

-- neotest
utils.map("n", "<leader>tt", "<cmd> lua require('neotest').run.run()<CR>");
utils.map("n", "<leader>tf",
          "<cmd> lua require('neotest').run.run(vim.fn.expand('%'))<CR>")
utils.map("n", "<leader>ts", "<cmd> lua require('neotest').summary.open()<CR>")
utils.map("n", "<leader>td",
          "<cmd>lua require('neotest').output.open({ enter = true })<CR>")
