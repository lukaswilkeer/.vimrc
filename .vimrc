if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Plugins
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('dag/vim2hs')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-scripts/haskell.vim')
  call dein#add('msanders/snipmate.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('mattn/emmet-vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('NLKNguyen/papercolor-theme')
  call dein#add('wakatime/vim-wakatime')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('ycm-core/YouCompleteMe')
  " call dein#add('airodactyl/neovim-ranger')

  " Themes
  call dein#add('tomasr/molokai')
  call dein#add('jdkanani/vim-material-theme')
  call dein#add('acarapetis/vim-colors-github')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Configs
  " nnoremap <f9> :tabe %:p:h<cr>

  "NerdTree
  map <F3> :NERDTreeToggle<CR>
  let NERDTreeShowHidden=1
  let g:nerdtree_tabs_focus_on_files=1
  let g:nerdtree_tabs_open_on_console_startup=1

  "ctrlp
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip " Ignore this extensions
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "ignore .gitignore files

  "syntastic
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" General configs
  colorscheme PaperColor
  set background=light "background
  set t_Co=256   " color type
  set mouse=a " mouse support
  set nu " line numbers
  set colorcolumn=120 " Line length marker
  ca w!! w !sudo tee "%" " save as sudo
  map <F1> :tabp "tab map
  map <F2> :tabn "tab map
  map <F3> :NERDTreeToggle
 
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
