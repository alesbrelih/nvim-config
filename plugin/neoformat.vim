let g:neoformat_enabled_yaml = []
let g:neoformat_enabled_json = []

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
