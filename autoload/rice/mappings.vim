" Rice keymaps
" Modified by peromage on 2021/02/05

" Splitting
nnoremap <silent> <Plug>(rice_vsplit) :vs<CR>
nnoremap <silent> <Plug>(rice_hsplit) :sp<CR>
" Pane movement
nnoremap <silent> <Plug>(rice_pane_move_left) <C-w>h
nnoremap <silent> <Plug>(rice_pane_move_down) <C-w>j
nnoremap <silent> <Plug>(rice_pane_move_up) <C-w>k
nnoremap <silent> <Plug>(rice_pane_move_right) <C-w>l
" Move cursor in Insert mode
inoremap <silent> <Plug>(rice_cursor_move_left) <left>
inoremap <silent> <Plug>(rice_cursor_move_down) <down>
inoremap <silent> <Plug>(rice_cursor_move_up) <up>
inoremap <silent> <Plug>(rice_cursor_move_right) <right>
" Pane size adjustment
nnoremap <silent> <Plug>(rice_pane_vdecrease) <C-w>-
nnoremap <silent> <Plug>(rice_pane_vincrease) <C-w>+
nnoremap <silent> <Plug>(rice_pane_hdecrease) <C-w><
nnoremap <silent> <Plug>(rice_pane_hincrease) <C-w>>
" Tabs
nnoremap <silent> <Plug>(rice_tab_previous) gT
nnoremap <silent> <Plug>(rice_tab_next) gt
nnoremap <silent> <Plug>(rice_tab_jump) :tabs<CR>:tabn<Space>
nnoremap <silent> <Plug>(rice_tab_new) :tabnew<CR>
" Buffers
nnoremap <silent> <Plug>(rice_buffer_next) :bn<CR>
nnoremap <silent> <Plug>(rice_buffer_previous) :bp<CR>
nnoremap <silent> <Plug>(rice_buffer_jump) :buffers<CR>:buffer<Space>
nnoremap <silent> <Plug>(rice_buffer_new) :enew<CR>
nnoremap <silent> <Plug>(rice_buffer_close) :bd<CR>
nnoremap <silent> <Plug>(rice_buffer_close_other) :%bd\|e#<CR>
" Misc
nnoremap <silent> <Plug>(rice_quit) :q<CR>
nnoremap <silent> <Plug>(rice_quit_all) :qa<CR>
nnoremap <silent> <Plug>(rice_register) :reg<CR>
nnoremap <silent> <Plug>(rice_message) :messages<CR>
nnoremap <silent> <Plug>(rice_highlight_off) :noh<CR>
" GUI clipboard
nnoremap <silent> <Plug>(rice_clipboard_paste) "*p
vnoremap <silent> <Plug>(rice_clipboard_paste) "*p
nnoremap <silent> <Plug>(rice_clipboard_copy) "*y
vnoremap <silent> <Plug>(rice_clipboard_copy) "*y
" Terminal
tnoremap <Plug>(rice_terminal_escape) <C-\><C-n>

function! rice#mappings#init() abort
    " My leader key
    let g:mapleader="\<Space>"

    nmap <silent> <leader><Bar> <Plug>(rice_vsplit)
    nmap <silent> <leader><Bslash> <Plug>(rice_hsplit)

    nmap <silent> <leader>h <Plug>(rice_pane_move_left)
    nmap <silent> <leader>j <Plug>(rice_pane_move_down)
    nmap <silent> <leader>k <Plug>(rice_pane_move_up)
    nmap <silent> <leader>l <Plug>(rice_pane_move_right)

    imap <silent> <C-h> <Plug>(rice_cursor_move_left)
    imap <silent> <C-j> <Plug>(rice_cursor_move_down)
    imap <silent> <C-k> <Plug>(rice_cursor_move_up)
    imap <silent> <C-l> <Plug>(rice_cursor_move_right)

    nmap <silent> _ <Plug>(rice_pane_vdecrease)
    nmap <silent> + <Plug>(rice_pane_vincrease)
    nmap <silent> - <Plug>(rice_pane_hdecrease)
    nmap <silent> = <Plug>(rice_pane_hincrease)

    nmap <silent> <leader>H <Plug>(rice_tab_previous)
    nmap <silent> <leader>L <Plug>(rice_tab_next)
    nmap <silent> <leader>bt <Plug>(rice_tab_jump)
    nmap <silent> <leader>n <Plug>(rice_tab_new)

    nmap <silent> <leader>J <Plug>(rice_buffer_next)
    nmap <silent> <leader>K <Plug>(rice_buffer_previous)
    nmap <silent> <leader>bb <Plug>(rice_buffer_jump)
    nmap <silent> <leader>N <Plug>(rice_buffer_new)
    nmap <silent> <leader>x <Plug>(rice_buffer_close)
    nmap <silent> <leader>X <Plug>(rice_buffer_close_other)

    nmap <silent> <leader>q <Plug>(rice_quit)
    nmap <silent> <leader>Q <Plug>(rice_quit_all)

    nmap <silent> <leader># <Plug>(rice_highlight_off)
    nmap <silent> <leader>* <Plug>(rice_highlight_off)

    nmap <silent> <leader>b: <Plug>(rice_message)
    nmap <silent> <leader>b" <Plug>(rice_register)

    nmap <silent> <leader>gp <Plug>(rice_clipboard_paste)
    vmap <silent> <leader>gp <Plug>(rice_clipboard_paste)
    nmap <silent> <leader>gy <Plug>(rice_clipboard_copy)
    vmap <silent> <leader>gy <Plug>(rice_clipboard_copy)

    tmap <Esc><Esc> <Plug>(rice_terminal_escape)

endfunction