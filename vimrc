set tabstop=4
set shiftwidth=4
set expandtab
vnoremap s "_s
vnoremap d "_d
nnoremap d "_d
vmap p <Ctrl-Shift-F11>gvy
vmap P <Ctrl-Shift-F12>gvy
nmap p <Ctrl-Shift-F11>
nmap P <Ctrl-Shift-F12>

" copied from https://stackoverflow.com/a/61864749/2717206
autocmd TextYankPost * call system('win32yank.exe -i --crlf', @")

function! Paste(mode)
    let @" = system('win32yank.exe -o --lf')
    return a:mode
endfunction
noremap <expr> <Ctrl-Shift-F11> Paste('p')
noremap <expr> <Ctrl-Shift-F12> Paste('P')
