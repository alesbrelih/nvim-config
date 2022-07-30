require("toggleterm").setup{
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
    on_open = function(term)
      vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
    end,
  })
  
  local k9s = Terminal:new({
    cmd = "k9s",
    direction = "float",
    -- function to run on opening the terminal
    on_open = function(term)
      vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
    end,
})

function _G._lazygit_toggle()
    lazygit:toggle()
end

function _G._k9s_toggle()
    k9s:toggle()
end