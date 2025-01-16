" vundle 环境设置
set nocompatible
"filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
Plugin 'file://~/.vim/bundle/Vundle.vim'
Plugin 'file://~/.vim/bundle/ack.vim'
Plugin 'file://~/.vim/bundle/auto-pairs'
Plugin 'file://~/.vim/bundle/dracula'
Plugin 'file://~/.vim/bundle/vim-airline-master'
Plugin 'file://~/.vim/bundle/vim-airline-themes-master'
Plugin 'file://~/.vim/bundle/vim-colors-solarized'
"""""" 缩进可视化1 """"""
"Plugin 'file://~/.vim/bundle/vim-indent-guides-master'
"""""" 缩进可视化2 """"""
"Plugin 'file://~/.vim/bundle/indentLine'
Plugin 'file://~/.vim/bundle/nerdcommenter'
"""""" 模板补全 """"""
"Plugin 'file://~/.vim/bundle/ultisnips'
"""""" 模板补全 """"""
"Plugin 'file://~/.vim/bundle/vim-snippets'
" 插件列表结束
call vundle#end()
filetype plugin indent on
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件

let mapleader = "'"

winpos 150 150
set lines=999 columns=999
set guifont=Monospace\ 12
syntax enable
"colorscheme desert
colorscheme dracula
"colorscheme solarized

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2
"set statusline=[%F]%y%r%m%*%=[Line:%l,Column:%c]
set ruler
set number
set cursorline
set cursorcolumn
set hlsearch

" 禁止折行
"set nowrap

syntax enable
syntax on
filetype on         "打开文件类型检测
filetype indent on

set showmatch
set incsearch
set expandtab
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set cindent
set encoding=utf-8 "solution of path ?
set nocp "for align

set mouse=a

"inoremap ( ()<ESC>i
"inoremap { {}<ESC>i
"inoremap [ []<ESC>i
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i
 
func Max()
	colorscheme=desert
	set guifont=Monospace\ 18
	"set guifont=Bitstream_Vera_Sans_Mono:h24:uANSI
endfunc

func Mid()
	colorscheme=desert
	set guifont=Monospace\ 15
endfunc

func Min()
	colorscheme=desert
	set guifont=Monospace\ 12
endfunc

nnoremap <C-ScrollWheelUp> :call Max()<CR>
nnoremap <C-ScrollWheelDown> :call Min()<CR>

nnoremap <S-Up> : resize -1<CR>
nnoremap <S-Down> : resize +1<CR>
nnoremap <S-Left> : vertical resize -5<CR>
nnoremap <S-Right> : vertical resize +5<CR>
nnoremap <Leader>p "+gp
nnoremap <Leader>p "+y
nnoremap <Leader>a :Ack -i

"""""" 缩进可视化 """"""
" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
"" 色块宽度
"let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
":nmap <silent> <Leader>i <Plug>IndentGuidesToggle
"""""" 缩进可视化 """"""

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
"set foldmethod=marker
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

imap <TAB> <C-P>
:ab m_ module ();<Enter>endmodule
:ab begin begin<Enter>end
:ab case case()<Enter>endcase
:ab a_ always @(*) begin<Enter><Enter>end
:ab al_ always @(posedge clk or negedge rst_n) begin<Enter>if(rst_n == 0)begin<Enter><Enter>end<Enter>end
:ab en_ uvm_env
:ab an_ uvm_analsis_put#();
:ab typ_ xx::type_id::create("",this);
:ab info_ `uvm_info(get_type_name(),$sformatf("%0d",num),UVM_MEDIUM)
:ab infol_ `uvm_info(get_type_name(),$sformatf("%0d",num),UVM_LOW)
:ab infoh_ `uvm_info(get_type_name(),$sformatf("%0d",num),UVM_HIGH)
:ab err_ `uvm_error(get_type_name(),$sformatf("%0d",num))
:ab fatal_ `uvm_fatal(get_type_name(),$sformatf("%0d",num))
:ab cdg_ uvm_config_db#()::get(,"","",);
:ab cds_ uvm_config_db#()::set(,"","",);

au BufReadPost * if line("'\"") >0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

cmap max set lines=999 columns=999
cmap min set lines=5 columns=999

cmap tn tabnew
map <M-1> :tabn 1<CR>
map <M-2> :tabn 2<CR>
map <M-3> :tabn 3<CR>
map <M-4> :tabn 4<CR>
map <M-5> :tabn 5<CR>
map <M-6> :tabn 6<CR>
map <M-7> :tabn 7<CR>
map <M-8> :tabn 8<CR>
map <M-9> :tabn 9<CR>
map <M-0> :tablast<CR>

runtime macros/matchit.vim
autocmd FileType systemverilog_uvm let b:match_words=
    \ '\<begin\>:\<end\>,' .
    \ '\<task\>:\<endtask\>,' .
    \ '\<module\>:\<endmodule\>,' .
    \ '\<package\>:\<endpackage\>,' .
    \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
    \ '\<if\>:\<else if\>:\<else\>,' .
    \ '\<function\>:\<endfunction\>,' .
    \ '\<program\>:\<endprogram\>,' .
    \ '\<class\>:\<endclass\>,' .
    \ '\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,' .
    \ '\<ifndef\>:`else\>:`endif\>,' .
    \ '\<ifdef\>:`else\>:`endif\>,' .
    \ '\<covergroup\>:\<endgroup\>'
let b:matchit_ignorecase=1

" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串

function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

"""""" 模板补全 """"""
"let g:UltiSnipsSnippetDirectories=["mysnippets"]
"" UltiSnips 的 tab 键与 YCM 冲突，重新设定
"let g:UltiSnipsExpandTrigger="<leader><tab>"
"let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
"let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
"""""" 模板补全 """"""

"""""" Fullscreen wmctrl """"""
"fun! ToggleFullscreen()
"    call system("wmctrl.py -ir ". v:windowid . " -b toggle,fullscreen")
"endf
"map <silent> <F11> :call ToggleFullscreen()<CR>
"autocmd VimEnter * call ToggleFullscreen()
"""""" Fullscreen wmctrl """"""

autocmd BufNewFile *.py exec "call SetTitle()"
autocmd BufNewFile *.v exec "call SetComment_v()"
autocmd BufNewFile *.sv exec "call SetComment_sv()"
autocmd BufNewFile *.c,*.cpp exec "call SetComment_c()"
autocmd BufNewFile *.h exec "call SetComment_c()"

func SetComment_c()
	call setline(1, "//=================================================================")
	call setline(2, "//Copyright (C) ".strftime("%Y")." MOMOTA Micro-electronics. All rights reserved.")
	call setline(3, "// ")
	call setline(4, "// File Name   :".expand("%:t"))
	call setline(5, "// Creater     :Dan")
	call setline(6, "// Create Date :".strftime("%Y-%m-%d %H:%M:%S"))
	call setline(7, "// Modification History:")
	call setline(8, "// ")
	call setline(9, "// Description:")
	call setline(10, "// ")
	call setline(11, "//=================================================================")
	call setline(12, "")
	call setline(13, "int main (void)")
	call setline(14, "{")
	call setline(15, "    return 0;")
	call setline(16, "}")
endfunc

func SetComment_py()
	call setline(1, "//=================================================================")
	call setline(2, "//Copyright (C) ".strftime("%Y")." MOMOTA Micro-electronics. All rights reserved.")
	call setline(3, "// ")
	call setline(4, "// File Name   :".expand("%:t"))
	call setline(5, "// Creater     :Dan")
	call setline(6, "// Create Date :".strftime("%Y-%m-%d %H:%M:%S"))
	call setline(7, "// Modification History:")
	call setline(8, "// ")
	call setline(9, "// Description:")
	call setline(10, "// ")
	call setline(11, "//=================================================================")
	call setline(12, "")
endfunc

func SetComment_v()
	call setline(1, "//=================================================================")
	call setline(2, "//Copyright (C) ".strftime("%Y")." MOMOTA Micro-electronics. All rights reserved.")
	call setline(3, "// ")
	call setline(4, "// File Name   :".expand("%:t"))
	call setline(5, "// Creater     :Dan")
	call setline(6, "// Create Date :".strftime("%Y-%m-%d %H:%M:%S"))
	call setline(7, "// Modification History:")
	call setline(8, "// ")
	call setline(9, "// Description:")
	call setline(10, "// ")
	call setline(11, "//=================================================================")
	call setline(12, "")
	if(expand("%:r") == 'top')
		call setline(13, "module ".expand("%:r")."();")
		call setline(14, "")
		call setline(15, "")
		call setline(16, "endmodule")
	else
		call setline(13, "module ".expand("%:r")."(")
		call setline(14, "	input  a,")
		call setline(15, "	input  b,")
		call setline(16, "	output c,")
		call setline(17, "	  );")
		call setline(18, "endmodule")
endfunc

func SetComment_sv()
	call setline(1, "//=================================================================")
	call setline(2, "//Copyright (C) ".strftime("%Y")." MOMOTA Micro-electronics. All rights reserved.")
	call setline(3, "// ")
	call setline(4, "// File Name   :".expand("%:t"))
	call setline(5, "// Creater     :Dan")
	call setline(6, "// Create Date :".strftime("%Y-%m-%d %H:%M:%S"))
	call setline(7, "// Modification History:")
	call setline(8, "// ")
	call setline(9, "// Description:")
	call setline(10, "// ")
	call setline(11, "//=================================================================")
	call setline(12, "")
	call setline(13, "`ifndef ".toupper(expand("%:r"))."_SV")
	call setline(14, "`define ".toupper(expand("%:r"))."_SV")
	call setline(15, "")
	call setline(16, "class ".expand("%:r")." extends uvm_;")
	call setline(17, "")
	call setline(18, "    `uvm_component_utils(".expand("%:r").")")
	call setline(19, "")
	call setline(20, "    function new (string        name   = \" \",")
	call setline(21, "                  uvm_component parent = null")
	call setline(22, "                 );")
	call setline(23, "        super.new(name,parent);")
	call setline(24, "    endfunction:new")
	call setline(25, "    extern virtual function void build_phase   (uvm_phase phase);")
	call setline(26, "    extern virtual function void connect_phase (uvm_phase phase);")
	call setline(27, "    extern virtual task          main_phase    (uvm_phase phase);")
	call setline(28, "    extern virtual task          run_phase     (uvm_phase phase);")
	call setline(29, "endclass:".expand("%:r"))
	call setline(30, "")
	call setline(31, "function void ".expand("%:r")."::build_phase(uvm_phase phase);")
	call setline(32, "    `uvm_info(get_type_name(),\"build_phase Enter...\",UVM_MEDIUM)")
	call setline(33, "    super.build_phase(phase);")
	call setline(34, "    `uvm_info(get_type_name(),\"build_phase Exit ...\",UVM_MEDIUM)")
	call setline(35, "endfunction:build_phase")
	call setline(36, "")
	call setline(37, "function void ".expand("%:r")."::connect_phase(uvm_phase phase);")
	call setline(38, "    `uvm_info(get_type_name(),\"connect_phase Enter...\",UVM_MEDIUM)")
	call setline(39, "    super.connect_phase(phase);")
	call setline(40, "    `uvm_info(get_type_name(),\"connect_phase Exit ...\",UVM_MEDIUM)")
	call setline(41, "endfunction:connect_phase")
	call setline(42, "")
	call setline(43, "task ".expand("%:r")."::main_phase(uvm_phase phase);")
	call setline(44, "    `uvm_info(get_type_name(),\"main_phase Enter...\",UVM_MEDIUM)")
	call setline(45, "    super.main_phase(phase);")
	call setline(46, "    `uvm_info(get_type_name(),\"main_phase Exit ...\",UVM_MEDIUM)")
	call setline(47, "endtask:main_phase")
	call setline(48, "")
	call setline(49, "task ".expand("%:r")."::run_phase(uvm_phase phase);")
	call setline(50, "    `uvm_info(get_type_name(),\"run_phase Enter...\",UVM_MEDIUM)")
	call setline(51, "    super.run_phase(phase);")
	call setline(52, "    `uvm_info(get_type_name(),\"run_phase Exit ...\",UVM_MEDIUM)")
	call setline(53, "endtask:run_phase")
	call setline(54, "")
	call setline(55, "`endif ")
endfunc

func SetTitle()
	if(&filetype == 'python')
		call SetComment_py()
		call setline(11,"#!/user/bin/python")
		call setline(12,"#coding:gbk")
		call setline(13,"#_*_encoding=UTF-8_*_")
	endif
endfunc

autocmd BufNewFile * normal G
