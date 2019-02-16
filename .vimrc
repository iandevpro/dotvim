execute pathogen#infect()
set visualbell
set noerrorbells
syntax on
" set t_Co=256
set background=dark
" let g:solarized_termcolors = 256
colorscheme solarized
" colorscheme zenburn
set ts=4
set incsearch
"so ~/MultipleSearch.vim
set hlsearch
:map <M-Esc>[62~ <MouseDown>
:map! <M-Esc>[62~ <MouseDown>
:map <M-Esc>[63~ <MouseUp>
:map! <M-Esc>[63~ <MouseUp>
:map <M-Esc>[64~ <S-MouseDown>
:map! <M-Esc>[64~ <S-MouseDown>
:map <M-Esc>[65~ <S-MouseUp>
:map! <M-Esc>[65~ <S-MouseUp>
set kp=man\ -P\ more

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" or set bs=2, or set backspace=2 - for gvim
set backspace=indent,eol,start
set shiftwidth=4
set nocompatible
set number

autocmd BufRead,BufNewFile *.pyx set filetype=python
autocmd FileType make setlocal noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python nnoremap <buffer> <Leader>9 :exec '!python3' shellescape(@%, 1)<cr>
autocmd FileType java set tabstop=4|set shiftwidth=4|set expandtab|set textwidth=79|set colorcolumn=80|set wrapmargin=79
autocmd FileType c set tabstop=4|set shiftwidth=4|set expandtab|set textwidth=79|set colorcolumn=80|set wrapmargin=79
autocmd FileType c nnoremap <buffer> <Leader>r :make run<cr>
set softtabstop=4 " makes the spaces feel like real tabs

" http://stackoverflow.com/a/2159997/7572715
set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
" http://stackoverflow.com/questions/3839454/how-to-use-pylint-in-vim
"" autocmd FileType python compiler pylint
" set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
" set errorformat=%f:%l:\ %m
" autocmd BufWritePost *.py make

" set statusline=
" set statusline +=%1*\ %n\ %*            "buffer number
" set statusline +=%5*%{&ff}%*            "file format
" set statusline +=%3*%y%*                "file type
" set statusline +=%4*\ %<%F%*            "full path
" set statusline +=%2*%m%*                "modified flag
" set statusline +=%1*%=%5l%*             "current line
" set statusline +=%2*/%L%*               "total lines
" set statusline +=%1*%4v\ %*             "virtual column number
" set statusline +=%2*0x%04B\ %*          "character under cursor

:abbr esle else

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0

" let g:showfuncctagsbin="/usr/local/bin/exctags"
" let g:showfuncctagsbin="/Users/iadichko/local/bin/ctags"
let g:showfuncctagsbin="/usr/bin/ctags"

:map <F7> :make<CR>
nmap <F8> :TagbarToggle<CR>
":map <F9> :cn<CR>
:map <F4> <Plug>ShowFunc
:map! <F4> <Plug>ShowFunc
:map <F11> :TlistToggle<CR>

" CRefVim
:map <S-F1> <Leader>cr

let g:miniBufExplModSelTarget = 1
let g:miniBufExplUseSingleClick = 1

" switch highlighting
map ,/ :set hlsearch!<CR>
" Tip #14 / comments
" The ESC is very important, or else you'll just insert
" the thing into your document.  The 'a' on the end puts
" you back into insert mode at the same place after the command.
" imap ,/ <ESC>:set hlsearch!<CR>a
" :map ,/ :let &hlsearch=!&hlsearch<CR>

" If you set it to some pleasant color,
" you don't have to turn off "hlsearch"
" all the time, or search for an empty string.
:hi Search guibg=LightBlue


" Tip #138: Getting name of the function /comments
"
map _F ma[[k"xy$`a:echo @x<CR>
" For Python, we do not need to go up with 'k'
map _P ma[["xy$`a:echo @x<CR>


let Tlist_Use_Right_Window = 1
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Close_On_Select = 1 " Close the taglist window when a file or tag is selected.

" TagListTagName  - Used for tag names
highlight MyTagListTagName gui=bold guifg=Black guibg=Orange

" TagListTagScope - Used for tag scope
highlight MyTagListTagScope gui=NONE guifg=Blue

" TagListTitle    - Used for tag titles
highlight MyTagListTitle gui=bold guifg=DarkRed guibg=LightGray

" TagListComment  - Used for comments
highlight MyTagListComment guifg=DarkGreen

" TagListFileName - Used for filenames
highlight MyTagListFileName gui=bold guifg=Black guibg=LightBlue

" vmap \em :call ExtractMethod()<CR>
" function! ExtractMethod() range
"   let name = inputdialog("Name of new method:")
"   '<
"   exe "normal! O\<BS>private " . name ."()\<CR>{\<Esc>"
"   '>
"   exe "normal! oreturn ;\<CR>}\<Esc>k"
"   s/return/\/\/ return/ge
"   normal! j%
"   normal! kf(
"   exe "normal! yyPi// = \<Esc>wdwA;\<Esc>"
"   normal! ==
"   normal! j0w
" endfunction


" Steve Losh
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
" nnoremap ; :

" This first mapping makes ,w open a new vertical split and
" switch over to it. Because really, how often do you split
" your window and not want to do something in the new split?
nnoremap <leader>w <C-w>v<C-w>l

" This next set of mappings maps <C-[h/j/k/l]> to the
" commands needed to move around your splits. If you
" remap your capslock key to Ctrl it makes for very easy navigation.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" -- Steve Losh

" http://items.sjbach.com/319/configuring-vim-right
" By default, pressing <TAB> in command mode will choose the first possible
" completion with no indication of how many others there might be.
" The following configuration lets you see what your other options are:
set wildmenu

" To have the completion behave similarly to a shell,
" i.e. complete only up to the point of ambiguity
" (while still showing you what your options are), also add the following:
set wildmode=list:longest

" The % key will switch between opening and closing brackets.
" By sourcing matchit.vim - a standard file in Vim installations
" for years - the key can also switch among e.g. if/elsif/else/end,
" between opening and closing XML tags, and more.
runtime macros/matchit.vim

" By default, Vim only remembers the last 20 commands and search patterns
" entered. Its nice to boost this up:
set history=1000

" Don't worry about the name. What this does is allow Vim
" to manage multiple buffers effectively.
" The current buffer can be put to the background without writing to disk;
" When a background buffer becomes current again, marks and undo-history are remembered.
set hidden

" These two options, when set together, will make /-style searches
" case-sensitive only if there is a capital letter in the search
" expression. *-style searches continue to be consistently case-sensitive.
set ignorecase
set smartcase

set title

" When the cursor moves outside the viewport of the current window, the buffer
" scrolls a single line to keep the cursor in view. Setting the option below
" will start the scrolling three lines before the border, keeping more context
" around where you're working.
set scrolloff=3
" Typing zz is also handy; it centers the window on the cursor without moving the cursor.

" https://github.com/scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pycodestyle']

abbr ifname def main():<CR>    return 0<CR><CR><CR>if __name__ == "__main__":<CR>    main()
abbr ifnamec int main(int argc, char *argv[]) {<CR>    return 0;<CR>}
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
let g:distractfree_width = '55%'
" autocmd FileType * :DistractFreeToggle

" http://vim.wikia.com/wiki/Remove_unwanted_spaces
map ,s :%s/\s\+$//e<CR>
