if has('nvim') && executable('nvr')
    let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
    autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=delete
endif
