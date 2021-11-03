nnoremap <silent> <leader>dbu :DBUIToggle<CR>
nnoremap <silent> <leader>dbf :DBUIFindBuffer<CR>
nnoremap <silent> <leader>dbr :DBUIRenameBuffer<CR>
nnoremap <silent> <leader>dbl :DBUILastQueryInfo<CR>
let g:db_ui_save_location = '~/.config/db_ui'
let g:db_ui_use_nerd_fonts = 1
let g:ftplugin_sql_omni_key = '<C-j>'

" autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni

let g:dbs = {'wrm-dev': 'postgres://localhost:5432/wrm?user=postgres&password=passwd123&sslmode=disable','wrm-wow': 'postgresql://postgres:passwd123@localhost/wrm'}
