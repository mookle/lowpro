let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|tmp|cache|log|vendor|target|report)$',
    \ 'file': '\v\.(so|swp|zip|log)$'
    \ }
let g:ctrlp_working_path_mode = 'a'   " use the directory of the current file
let g:ctrlp_clear_cache_on_exit= 1    " maintain cache between vim sessions
let g:ctrlp_open_multiple_files = 'i' " open multiple files as hidden buffers
let g:ctrlp_mruf_max = 15             " limit the number of recently-used files CtrlP should remember
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co'] " faster indexing

