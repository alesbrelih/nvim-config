local utils = require('utils')

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
-- utils.map("n", "<leader>n", "<cmd>lua _G._vifm()<CR>")
utils.map("n", "<leader>s", "<cmd>:SymbolsOutline<CR>")
utils.map("n", "<leader>§", "<cmd>:Cheat<CR>")

-- debug
utils.map("n", "<leader>ds", "<cmd>:GoDebug -n<CR>")
utils.map("n", "<leader>dd", "<cmd>:GoDbgStop<CR>")
utils.map("n", "<leader>dt", "<cmd>:GoBreakToggle<CR>")
utils.map("n", "<leader>dc", "<cmd>:GoBreakCondition<CR>")

-- test
utils.map("n", "<leader>tt", "<cmd>:GoTest -f<CR>")
utils.map("n", "<leader>tf", "<cmd>:GoTest -n<CR>")
utils.map("n", "<leader>ta", "<cmd>:GoAddTest<CR>")
utils.map("n", "<leader>tc", "<cmd>:GoCoverage<CR>")
utils.map("n", "<leader>tq", "<cmd>:GoTermClose<CR>")
utils.map("n", "<leader>tv", "<cmd>:GoAltV!<CR>")
utils.map("n", "<leader>ts", "<cmd>:GoAlt!<CR>")

-- harpoon
utils.map("n", "<leader>cc", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")
utils.map("n", "<leader>cp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>")
utils.map("n", "<leader>cn", "<cmd>lua require('harpoon.ui').nav_next()<CR>")
utils.map("n", "<leader>c1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>")
utils.map("n", "<leader>c2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>")
utils.map("n", "<leader>c3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>")
utils.map("n", "<leader>c4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>")
utils.map("n", "<leader>ca", "<cmd>lua require('harpoon.mark').add_file()<CR>")

-- memento
utils.map("n", "<leader>mm", "<cmd>lua require('memento').toggle()<CR>")
