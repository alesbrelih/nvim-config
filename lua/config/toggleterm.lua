require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  open_mapping = [[<c-\>]],
  persist_size = false,
  hide_numbers = true, -- hide the number column in toggleterm buffers
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  direction = 'horizontal',
  close_on_exit = true, -- close the terminal window when the process exits
}

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  -- function to run on opening the terminal
  on_open = function(term)
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
})

 -- Use this to toggle gitui in a floating terminal
function _G._lazygit_toggle()
    lazygit:toggle()
end

