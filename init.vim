" ============常规设置=================
if &compatible
	set nocompatible               " Be iMproved
endif

" disable all keymaps of plugins
let g:thinkvim_disable_mappings = 0
" disable some plugins keymap
let g:thinkvim_disable_pmaping = []

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
call utils#source_file($VIM_PATH, 'filetype.vim')
call utils#source_file($VIM_PATH, 'packman.vim')

" ==============mapping=================
inoremap <C-d> <ESC>ddi
inoremap <C-u> <ESC>vwU
inoremap jk <ESC>
nnoremap <LEADER>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <LEADER>ev :vsplit $MYVIMRC<cr>
nnoremap <LEADER>sv :source $MYVIMRC<cr>


" ===
" === load leaderkey 插件的键位映射
" ===
source $VIM_PATH/leaderkey.vim
