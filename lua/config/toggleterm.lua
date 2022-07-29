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

local path = require 'plenary.path'
local temp_name = vim.fn.tempname()

-- vifm
local vifm = Terminal:new {
  cmd = ('vifm --choose-files "%s"'):format(temp_name),
  direction = "float",
  close_on_exit = true,
  on_close = function()
    local data = path:new(temp_name):read()
    vim.schedule(function()
      vim.cmd('e ' .. data)
    end)
  end
}

local k9s = Terminal:new({
  cmd = "k9s",
  direction = "float",
  -- function to run on opening the terminal
  on_open = function(term)
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
})

local function toggle_vd()
    local p = vim.fn.expand('%')
    Terminal:new({
    cmd = 'sc-im "'..p..'"',
    direction = "float",
    }):toggle()
end

local path = require 'plenary.path'
local temp_name = vim.fn.tempname()

 -- Use this to toggle gitui in a floating terminal
function _G._lazygit_toggle()
    lazygit:toggle()
end

function _G._vifm()
    vifm:toggle()
end

function _G._k9s_toggle()
    k9s:toggle()
end

function _G._vd_toggle()
    toggle_vd()
end

