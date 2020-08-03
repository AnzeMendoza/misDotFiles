set nocompatible
syntax on
set nowrap
set encoding=UTF-8

"""" START Vundle Configuration
" Disable filetypefor vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'BufOnly.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'SirVer/ultisnips'
Plugin 'junegunn/fzf'
Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'benmills/vimux'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-dispatch'

" Generic Programming Support
Plugin 'jakedouglas/exuberant-ctags'
Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'tobyS/vmustache'
Plugin 'janko-m/vim-test'
Plugin 'maksimr/vim-jsbeautify'
"Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'

" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'
Plugin 'jaxbot/github-issues.vim'

" Theme / Interface
Plugin 'AnsiEsc.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasr/molokai'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'mkarmona/colorsbox'
Plugin 'chriskempson/base16-vim'
Plugin 'AlessandroYorba/Sierra'
Plugin 'effkay/argonaut.vim'
Plugin 'atelierbram/Base2Tone-vim'

" Theme / Interface
Plugin 'ryanoasis/vim-devicons'
Plugin 'sjl/badwolf'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/limelight.vim'
Plugin 'romainl/Apprentice'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'w0ng/vim-hybrid'
Plugin 'daylerees/colour-schemes'
Plugin 'ajh17/Spacegray.vim'
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

"sucho
Plugin 'vim-python/python-syntax'
Plugin 'davidhalter/jedi-vim'


call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration 

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
"sucho
autocmd FileType python setlocal completeopt-=preview


" Show linenumbers
set number
set ruler

" Dictionary
set nospell
"set spelllang=es,en

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Enable highlighting of the current line
set cursorline

" Theme and Styling 
set t_Co=256
set background=dark

if (has("termguicolors"))
  set termguicolors
endif

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme spacegray
" colorscheme spacemacs-theme

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Nerdtree
" Initialize with :NERDTree .
" Iniciar NerdTree al abrir VIM
autocmd vimenter * NERDTree

" Instrucciones básicas de NerdTree
" Abrir directorio del archivo :NERDTreeFind
" Abrir el directorio del terminal :NERDTree .
" Podemos ocultar la vista abol y quedarnos con el archivo actual con :NERDTreeToggle , si queremos revertir volvemos usar el mismo comando.
" Para intercambiar entre la vista lista o árbol y la vista del archivo se debe usar: ctrl-ww
" Con t abrimos un archivo dela vista lista en un nuevo tab, vim nos ubica en el archivo listo para poder editarlo. Podemos recorrer por todos los tabs hasta llegar a la vista lista con gt. Si usamo T abre el archivo en un nuevo tab con la diferencia que vim nos mantiene enfocados enla vista lista.
" También podemos abrir un archivo en una nueva ventana vertical con s, horizontal con i. Para intercambiar el enfoque del cursor entre las ventanas existentes (vista lista, ventana vertical de archivo 1, ventana vertical de archivo 2, etc) podemos usar: ctrl-ww (recorre todas las ventanas), ctrl-wh (toma la ventana izquierda), ctrl-wj (toma la venta de abajo), ctrl-wk (toma la ventana de arriba), ctrl-wl (toma la ventana derecha)