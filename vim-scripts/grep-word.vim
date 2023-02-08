command! -bang -nargs=* RgExact
  \ call fzf#vim#grep(
  \   'rg -F --column --no-heading --color=always -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

nmap <Leader>w :execute 'RgExact ' . expand('<cword>') <CR>
