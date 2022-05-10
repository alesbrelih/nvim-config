let g:neoformat_enabled_yaml = []
let g:neoformat_enabled_json = []
let g:neoformat_enabled_markdown = []

let ftToIgnore = ['go']
augroup fmt
  autocmd!
  autocmd BufWritePre * if index(ftToIgnore, &ft) < 0 | Neoformat
augroup END
