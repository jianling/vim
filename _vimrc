set nocompatible "��������ģʽ����������ʼ


set go= "���ý����� gui option
colo candy "������ɫ
syntax on "���﷨����
set encoding=utf-8 "�����ļ�����
set fileencodings=utf-8,gbk
set expandtab "ʹ�ÿո����tab
set tabstop=4 "4���ո�
set shiftwidth=4 "�Զ������Ŀ��
set number "������ʾ�к�
"set showtabline=1 "�����ǩʱ��ʾ��ǩ����2��ʾ������ʾ��0��ʾ�ܲ���ʾ
"set lines=200 columns=2000 "���ô�����ʾ������������
set guifont=Consolas:h12 "��������ʹ�С

set clipboard=unnamed "��Vim��Win���ü�����


"vim7.1��windows�µı�������
if has("win32")
 set fileencoding=chinese
else
 set fileencoding=utf-8
endif
"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"���consle�������
language messages zh_CN.utf-8


"���ò��
call pathogen#infect()


"���ò����������ļ�
if has("vms")
	set nobackup		" do not keep a backup file, use versions instead
"else
"	set backup		" keep a backup file
endif

"ɾ��Windows������ ^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"��󻯴���
au GUIEnter * call libcallnr("vimtweak.dll", "EnableMaximize", 1) 
"�Զ�͸��
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 220) 
"����͸���ȵĿ�ݼ�  
map <M-8> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 180) <CR>  
map <M-9> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 230) <CR>  
map <M-0> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 255) <CR>  


"source $VIMRUNTIME/vimrc_example.vim
"������window��֧��
source $VIMRUNTIME/mswin.vim
behave mswin

