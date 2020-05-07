" ============常规设置=================
set nu

" 初始化leader键
if has('vim_starting')
	let g:mapleader=' '
	let g:maplocalleader=';'
endif

" 配置文件目录
" expand('<sfile>:P'):取得当前文件路径的完整路径
" resolve():处理绝对路径，避免是链接问题
" fnamemodify()：去掉最后的尾部
let $VIM_PATH = fnamemodify(resolve(expand('<sfile>:p')),':h')
" 加载通用配置
call utils#source_file($VIM_PATH,'general.vim')


" ==============mapping=================
inoremap <C-d> <ESC>ddi
inoremap <C-u> <ESC>vwU
inoremap jk <ESC>
nnoremap <LEADER>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <LEADER>ev :vsplit $MYVIMRC<cr>
nnoremap <LEADER>sv :source $MYVIMRC<cr>

" 分屏后光标的切换                                    
"光标移至右窗口  
nnoremap <C-l> <C-w>l                                    
"光标移至上窗口                                   
nnoremap <C-k> <C-w>k                                   
"光标移至下窗口                                   
nnoremap <C-j> <C-w>j                                                  
"光标移至左窗口
nnoremap <C-h> <C-w>h    


" ===========================dein========================

"dein Scripts-----------------------------
if &compatible
	set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/pix/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/pix/.cache/dein')
	call dein#begin('/home/pix/.cache/dein')

	" Let dein manage dein
	" Required:
	call dein#add('/home/pix/.cache/dein/repos/github.com/Shougo/dein.vim')
	" Add or remove your plugins here like this:
	"call dein#add('Shougo/neosnippet.vim')
	"call dein#add('Shougo/neosnippet-snippets')
	call dein#add('hardcoreplayers/spaceline.vim')
	call dein#add('ryanoasis/vim-devicons')
	call dein#add('neoclide/coc.nvim', {'merge':0, 'rev': 'release'})
	call dein#add('liuchengxu/vim-which-key')
	call dein#add('junegunn/vim-easy-align')
	call dein#add('SirVer/ultisnips')
	call dein#add('honza/vim-snippets')
	call dein#add('kristijanhusak/defx-git')
	call dein#add('kristijanhusak/defx-icon')
	call dein#add('voldikss/vim-floaterm')
	call dein#add('liuchengxu/vim-clap')
	call dein#add('hardcoreplayers/vim-buffet')
	call dein#add('luochen1990/rainbow')

	" defx
	call dein#add('Shougo/defx.nvim')
	if !has('nvim')
		call dein#add('roxma/nvim-yarp')
		call dein#add('roxma/vim-hug-neovim-rpc')
	endif

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on
" startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
" ==========================dein end ====================

" =======================plugin config ==================

" ===
" === which key
" ===
source $HOME/.config/nvim/whichkey.vim
source $HOME/.config/nvim/module-whichkey.vim


" ===
" === vim-easy-align
" ===
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" ===
" === ultisnips
" ===
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/ultisnips']

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ===
" === defx
" ===
source $HOME/.config/nvim/defx.vim


" ===
" === defx-git
" ===
let g:defx_git#indicators = {
      \ 'Modified'  : '•',
      \ 'Staged'    : '✚',
      \ 'Untracked' : 'ᵁ',
      \ 'Renamed'   : '≫',
      \ 'Unmerged'  : '≠',
      \ 'Ignored'   : 'ⁱ',
      \ 'Deleted'   : '✖',
      \ 'Unknown'   : '⁇'
      \ }

" ===
" === defx-icons
" ===
let g:defx_icons_column_length = 1
let g:defx_icons_mark_icon = ''

" ===
" === floaterm
" ===
let g:floaterm_position = 'center'
let g:floaterm_wintype = 'floating'

" Set floaterm window's background to black
hi Floaterm guibg=black
" " Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=none guifg=cyan

" ===
" === load leaderkey
" ===
source $HOME/.config/nvim/leaderkey.vim

" ===
" === vim-clap
" ===
source $HOME/.config/nvim/module-clap.vim

" ===
" === rainbow
" ===
let g:rainbow_active = 1

" ===
" === spaceline
" ===
let g:spaceline_seperate_style='slant-cons'
let g:line_no_indicator_chars=0
