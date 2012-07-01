set nocompatible "开启兼容模式，必须放在最开始


set go= "设置界面风格 gui option
colo candy "设置配色
syntax on "打开语法高亮
set encoding=utf-8 "设置文件编码
set fileencodings=utf-8,gbk
set expandtab "使用空格代替tab
set tabstop=4 "4个空格
set shiftwidth=4 "自动缩进的宽度
set number "设置显示行号
"set showtabline=1 "多个标签时显示标签栏，2表示总是显示，0表示总不显示
"set lines=200 columns=2000 "设置窗口显示的行数和列数
set guifont=Consolas:h12 "设置字体和大小

set clipboard=unnamed "让Vim和Win共用剪贴板

set laststatus=2    "始终显示状态栏
set statusline=%F%m%r\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [pos=%l,\ %c]\ [%p%%]\ [LINE=%L]       "定制状态栏

"=====================================
"           设置自动补全
"        快捷键是<C-X>后<C-O>
"=====================================

"设置css自动补全
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"设置html自动补全
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType php set omnifunc=htmlcomplete#CompleteTags
"设置javascript自动补全
autocmd FileType html set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS


" 0 - 不记录上次的补全方式
" 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" 2 - 记住上次的补全方式,直到按ESC退出插入模式为止
let g:SuperTabRetainCompletionType=2
" 使用Tab代替默认的<C-X><C-O>补全方式
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

" 打开javascript折叠
let b:javascript_fold=1
" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为
" set foldclose=all " 设置为自动关闭折叠 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>		" 用空格键来开关折叠

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8


"调用插件
call pathogen#infect()


"设置不建立备份文件
if has("vms")
	set nobackup		" do not keep a backup file, use versions instead
"else
"	set backup		" keep a backup file
endif

"删除Windows结束符 ^M
"noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"最大化窗口
au GUIEnter * call libcallnr("vimtweak.dll", "EnableMaximize", 1) 
"自动透明
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 220) 
"更改透明度的快捷键  
map <M-8> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 180) <CR>  
map <M-9> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 230) <CR>  
map <M-0> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 255) <CR>  


"source $VIMRUNTIME/vimrc_example.vim
"开启对window的支持
source $VIMRUNTIME/mswin.vim
behave mswin

