winpos 150 150
set lines=999 columns=999

set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=blue ctermfg=white guibg=blue guifg=white
set cursorline
hi CursorLine cterm=NONE ctermbg=blue ctermfg=white guibg=blue guifg=white

set guifont=Monospace\ bold\ 12
colorscheme desert

set statusline=[%F]%y%r%m%*%=[Line:%l,Column:%c]
set laststatus=2
set ruler
set foldmethod=marker

"set guioptions-=R

set number
set autoindent
set showmatch
set hlsearch
set incsearch
set expandtab
set smartindent
set shiftwidth=4
set autoindent
set cindent
set encoding=utf-8 "solution of path ?
set nocp "for align
filetype on         "打开文件类型检测
"for vim
set mouse=a

"systemverilog highlight
syntax on           "确定vim打开语法高亮
filetype plugin on  "为特定的文件类型允许插件文件的载入
filetype indent on  "为特定的文件类型载入缩进文件

"au BufRead,BufNewFile *.sv filetype=systemverilog
au BufRead,BufNewFile *.v filetype=verilog

"inoremap ( ()<ESC>i
inoremap { {}<ESC>i
inoremap [ []<ESC>i
inoremap " ""<ESC>i
"inoremap ' ''<ESC>i

func Max()
	colorscheme=desert
	set guifont=Monospace\ bold\ 18
	"set guifont=Bitstream_Vera_Sans_Mono:h24:uANSI
endfunc

func Mid()
	colorscheme=desert
	set guifont=Monospace\ bold\ 15
endfunc

func Min()
	colorscheme=desert
	set guifont=Monospace\ bold\ 12
endfunc

nnoremap <C-ScrollWheelUp> :call Max()<CR>
nnoremap <C-ScrollWheelDown> :call Min()<CR>

nnoremap <S-Up> : resize -1<CR>
nnoremap <S-Down> : resize +1<CR>
nnoremap <S-Left> : vertical resize -5<CR>
nnoremap <S-Right> : vertical resize +5<CR>

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
	call setline(32, "    `uvm_info(get_type_name(),\"build_phase Enter...\",UVM_LOW)")
	call setline(33, "    super.build_phase(phase);")
	call setline(34, "    `uvm_info(get_type_name(),\"build_phase Exit ...\",UVM_LOW)")
	call setline(35, "endfunction:build_phase")
	call setline(36, "")
	call setline(37, "function void ".expand("%:r")."::connect_phase(uvm_phase phase);")
	call setline(38, "    `uvm_info(get_type_name(),\"connect_phase Enter...\",UVM_LOW)")
	call setline(39, "    super.connect_phase(phase);")
	call setline(40, "    `uvm_info(get_type_name(),\"connect_phase Exit ...\",UVM_LOW)")
	call setline(41, "endfunction:connect_phase")
	call setline(42, "")
	call setline(43, "task ".expand("%:r")."::main_phase(uvm_phase phase);")
	call setline(44, "    `uvm_info(get_type_name(),\"main_phase Enter...\",UVM_LOW)")
	call setline(45, "    super.main_phase(phase);")
	call setline(46, "    `uvm_info(get_type_name(),\"main_phase Exit ...\",UVM_LOW)")
	call setline(47, "endfunction:main_phase")
	call setline(48, "")
	call setline(49, "task ".expand("%:r")."::run_phase(uvm_phase phase);")
	call setline(50, "    `uvm_info(get_type_name(),\"run_phase Enter...\",UVM_LOW)")
	call setline(51, "    super.run_phase(phase);")
	call setline(52, "    `uvm_info(get_type_name(),\"run_phase Exit ...\",UVM_LOW)")
	call setline(53, "endfunction:run_phase")
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

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

map <F9> <leader>cc
map <F10> <leader>cu

let g:treeExplVertical=1
let g:treeExplDirSort=1
let g:treeExplWinSize=30
nmap vt :NERDTree<cr>

au BufReadPost * if line("'\"") >0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

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

