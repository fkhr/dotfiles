set number		"display row number
set showmatch		"display correspond parenthesis
set clipboard=unnamed 	"enable copy to clipboard
set softtabstop=4  	"the number of space  when press tab
set tabstop=4		"the number of space when open file include tab
set shiftwidth=4	"the number of space used for autoindent
set autoindent		"enable autoindent
set smartindent		"make autoindent like C
set expandtab		"translate tab into space
set splitbelow		"display new window below

" ---- start dein.vim base setting ---- 
if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundles')
 call dein#begin('~/.vim/bundles')

 call dein#add('~/.vim/bundles')
 call dein#add('Shougo/deoplete.nvim')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#load_toml('~/.vim/rc/dein.toml',      {'lazy': 0})
 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
" ---- end dein.vim base setting ---- 

" set quickrun config
nnoremap <F2> :QuickRun<Enter>
nnoremap <F3> :QuickRun
let g:quickrun_config = {'*':{'hook/time/enable':'1'},}

" indent guid
let g:indent_guides_enable_on_vim_startup = 1

" nerdtree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowHidden = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"deoplete
let g:deoplete#enable_at_startup = 1

" my keymap
noremap <CR> o<ESC>
noremap <S-CR> O <ESC>

" other settings
set t_Co=256
colorscheme gruvbox 
set background=dark
