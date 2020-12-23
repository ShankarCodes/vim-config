" Shankar VIM config 2020
" 2020-12-21
" This is mostly for single line cpp files for learning.
" Use leader key + c to compile.
" Use leader key + e to execute.
" This is the file specific to cpp language.
" % gives the current file name and %< gives the name without the file
" extension.
" use =i{ when on a { to indent all the lines
if has('win32')
    " If windows is found, then add the .exe extension
    setlocal makeprg=g++\ -Wall\ -Wextra\ %\ -o\ %<.exe
    nnoremap <buffer> <leader>e :term %<.exe<CR>
else
    " Else do not add any extension
    setlocal makeprg=g++\ -Wall\ -Wextra\ %\ -o\ %
    nnoremap <buffer> <leader>e :term %<<CR>
endif

nnoremap <buffer> <leader>c :make
