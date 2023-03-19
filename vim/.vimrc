set nocompatible "关闭与vi的兼容模式
set number "显示行号
set wrap "自动拆行 不自动拆行: nowrap
set showmatch "显示匹配的括号
set scrolloff=3	"距离顶部和底部3行
set encoding=utf-8 "编码
set mouse=a "启用鼠标
set hlsearch "搜索高亮
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set backspace=2
set wildmenu  " 命令模式提示
set background=light
set ruler " 显示行号
let mapleader= " " 

" IndentLine
" set list lcs=tab:\|\ 
let g:indentLine_enabled = 1

" colorscheme solarized
syntax on "语法高亮
" netrw -- Vim's built-in file expolrer
set nocp

" key maps
nnoremap <c-t> :NERDTreeToggle<cr>
nnoremap <leader>nh :nohl<cr>
nnoremap 'x' '"_x'
nnoremap 'te' ':tabedit<Return>'


" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'lilydjwg/colorizer'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


" coc.nvim configureation begin
" for tab 
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-h> coc#refresh()
else
  inoremap <silent><expr> <c-h> coc#refresh()
endif
" coc.nvim config end

" >>> airline configuration >>>
let g:airline_theme="molokai"
let g:airline_powerline_fonts = 1

" >>> html indent
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "script"

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
