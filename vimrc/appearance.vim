"""""""""""""""""""""""
" Appearance Setting
"""""""""""""""""""""""
"行番号を付ける
set number 

"文字に色をつける
syntax enable 

"常にステータスラインを表示
set laststatus=2 

" status line
set statusline=%F%m%r%h%w

" 以降を右寄せ
set statusline+=%=
set statusline+=%{&fileencoding}\ COL%v\ %Y
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]


" 挿入モード時、ステータスラインの色を変更
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

" 背景色をターミナルと同じ色にする(colorschemeより前に記述)
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none

if has('gui_macvim') 
  set guifont=Menlo:h12
  "背景を明るく
  " set background=dark
  "Setting ColorScheme
  " colorscheme elflord
  colorscheme solarized
  " colorscheme valloric
  " colorscheme greenblack
  colorscheme molokai
  set t_Co=256
else
  " colorscheme mine
  " colorscheme broduo
  colorscheme molokai
endif

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar', 'unite']

"""""""""""""""""""""""
" End Appearance Setting
"""""""""""""""""""""""
