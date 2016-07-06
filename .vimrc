set nocompatible " Fixes old Vi bugs
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" General 
Plugin 'scrooloose/nerdtree' 
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

" Python
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

" Typescript
Plugin 'leafgarland/typescript-vim'

" Jade/Pug
Plugin 'digitaltoad/vim-pug'

call vundle#end()

filetype plugin indent on

syntax on
set laststatus=2
set number
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized 
set ruler
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set encoding=utf-8
set splitright

" Python
set foldmethod=indent
set foldlevel=99
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab |
	\ set fileformat=unix |

" Python and C
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+%/

" Typescript and Javascript
au BufNewFile,BufRead *.ts,*.js,*.jade,*.scss,*.css,*.html
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |

" YouCompleteMe Space+G go-to-definition
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Python Highlighting
let python_highlight_all=1

let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__']
let g:typescript_indent_disable = 1

" FrontEnd work
au BufNewFile,BufRead *.js,*.html,*.css,*.jade,*.scss
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |

" Nerdtree configuration
augroup appearance
	au!
	let g:nerdtree_tabs_open_on_console_startup=1
	:map <Leader>n <plug>NERDTreeTabsToggle<CR>
	:map <S-F5> :vertical resize +10<CR>
	:map <F5> :vertical resize +5<CR>
	:map <S-F6> :resize -10<CR>
	:map <F6> :resize -5<CR>
	:map <S-F7> :resize +10<CR>
	:map <F7> :resize +5<CR>
	:map <S-F8> :vertical resize -10<CR>
	:map <F8> :vertical resize -5<CR>
augroup END
