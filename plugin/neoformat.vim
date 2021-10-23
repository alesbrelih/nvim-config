let g:neoformat_enabled_yaml = []
let g:neoformat_enabled_json = []
let g:neoformat_enabled_markdown = []

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
