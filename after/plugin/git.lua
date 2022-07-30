-- fix meant to open vim inside of neovim for git commits
vim.cmd [[
  if has('nvim') && executable('nvr')
    let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
    autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=delete
  endif
]]
