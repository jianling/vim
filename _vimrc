set nocompatible "��������ģʽ����������ʼ


set go= "���ý����� gui option
colo candy "������ɫ
"set encoding=utf-8 "�����ļ�����
set fileencodings=utf-8,gbk
set expandtab "ʹ�ÿո����tab
set tabstop=4 "4���ո�
set shiftwidth=4 "�Զ������Ŀ��
set number "������ʾ�к�
"set showtabline=1 "�����ǩʱ��ʾ��ǩ����2��ʾ������ʾ��0��ʾ�ܲ���ʾ
"set lines=200 columns=2000 "���ô�����ʾ������������
set guifont=Consolas:h12 "��������ʹ�С

"���ò��
call pathogen#infect()

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

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
