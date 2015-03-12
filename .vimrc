" to use Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" My Plugins
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'        "自动补全,包含clang_complete,AutoComplPop,
                                       "Supertab, neocomplcache
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'        " Snippets
"Plugin 'vim-scripts/Align'         " 表格自动对齐
Plugin 'scrooloose/syntastic'      " 语法检查
"Plugin 'Shougo/neocomplcache.vim'  " 单词自动补全
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'majutsushi/tagbar'
"Plugin 'bling/vim-airline'             "状态栏
Plugin 'kien/ctrlp.vim'                "文件搜索
Plugin 'kien/rainbow_parentheses.vim'  "彩色括号
Plugin 'scrooloose/nerdcommenter'      "快速批量加减注释
        "shift+v+方向键选中(默认当前行)   \cc 加上注释  \cu 解开注释
Plugin 'Raimondi/delimitMate'          "括号,引号自动补全


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-x>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"set YouCompleteMe trigger key, 避免与Ultisnips冲突
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

"" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'


"" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"这样两者都能使用Tab补全了

" open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree
" open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"let g:nerdtree_tabs_open_on_console_startup=1

nmap <F8> :TagbarToggle<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"" airline设置
""set laststatus=2
"" 使用powerline打过补丁的字体
"let g:airline_powerline_fonts = 1
"" 开启tabline
"let g:airline#extensions#tabline#enabled = 1
"" tabline中当前buffer两端的分隔字符
"let g:airline#extensions#tabline#left_sep = ' '
"" tabline中未激活buffer两端的分隔字符
"let g:airline#extensions#tabline#left_alt_sep = '|'
"" tabline中buffer显示编号
"let g:airline#extensions#tabline#buffer_nr_show = 1
"" 映射切换buffer的键位
"nnoremap [b :bp<CR>
"nnoremap ]b :bn<CR>


"set background=dark
set cinoptions+={2,0,p0,t0
set cindent 
"set syntax=cpp
set nu
set relativenumber
"set showmatch "在输入括号时光标会短暂地跳到与之想匹配的括号处


" 设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936,chinese,big5

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

" history文件中需要记录的行数
set history=100

" 在处理未保存或只读文件的时候，弹出确认
"set confirm

" 与windows共享剪贴板
set clipboard+=unnamed

" 侦测文件类型
"filetype on

" 载入文件类型插件
"filetype plugin on

"" 为了使用 pathogen 管理插件
"call pathogen#runtime_append_all_bundles()

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
"set iskeyword+=_,$,@,%,#,-

" 语法高亮
syntax on

" 高亮字符，让其不受100列限制
":highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
":match OverLength '\%101v.*'

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
" set nobackup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它
"setlocal noswapfile
set bufhidden=hide

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子（phrases）
set nohlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

" 输入:set list命令是应该显示些啥？
" set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 不要闪烁
set novisualbell

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}E5%h\ \ \ Line:\ %l/%L:%c

" 总是显示状态行, 默认值为 1, 无法显示状态栏
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
"set cindent

" 制表符为4统一缩进为4
set tabstop=2
set softtabstop=2
set shiftwidth=2

" 用空格代替制表符
set expandtab

"设置当前行突出显示
set cursorline
hi CursorLine cterm=NONE  ctermbg=yellow ctermfg=green guibg=yellow guifg=green
"set cursorcolumn

"补全列表颜色
hi Visual ctermfg=darkblue ctermbg=white
hi PmenuSel ctermfg=gray ctermbg=darkblue
hi Pmenu ctermfg=blue ctermbg=gray
hi PmenuSbar ctermbg=5
hi PmenuThumb ctermfg=yellow
hi CursorLine ctermbg=blue
hi CursorColumn ctermbg=blue
hi TabLine cterm=none ctermfg=0 ctermbg=7

" 不要换行
"set nowrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按照名称排序
"let Tlist_Sort_Type = "name"

" 在右侧显示窗口
"let Tlist_Use_Right_Window = 1

" 压缩方式
"let Tlist_Compart_Format = 1

" 如果只有一个buffer，kill窗口也kill掉buffer
"let Tlist_Exist_OnlyWindow = 1

" 不要关闭其他文件的tags
"let Tlist_File_Fold_Auto_Close = 0

" 不要显示折叠树
"let Tlist_Enable_Fold_Column = 0


" C的编译和运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

" C++的编译和运行
map <F6> :call CompileRunGpp()<CR
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc

" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile * setfiletype txt


" 利用系统剪贴板(+寄存器)复制粘贴
:nmap ,c "+yy
:vmap ,c "+yy
:nmap ,v "+p

:noremap   <F4>  <ESC>:wq<CR> 
:inoremap  <F4>  <ESC>:wq<CR> 

" 打开.tex文件时自动进行拼写检查
"autocmd BufNewFile,BufRead *.tex set spell
" 解决latex文件自动缩进的问题
let g:tex_indent_items=0

" 配置 vim-latex 插件
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have ' shellslash'  set so that latex
" can be called correctly.
"set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to ' plaintex'  instead of ' tex' , which results in vim-latex not being
" loaded.
" The following changes the default filetype back to ' tex' :
let g:tex_flavor='latex' 

""#######中括号 大括号 小括号 自动补全
":inoremap ( ()<ESC>i
"":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {}<ESC>i
"":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
"":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
"":inoremap > <c-r>=ClosePair('>')<CR>
"" :inoremap " ""<Esc>i  
":inoremap ' ''<Esc>i 

"function ClosePair(char)
    "if getline('.')[col('.') - 1] == a:char
        "return "\<Right>"
    "else
        "return a:char
    "endif
"endfunction
""#######中括号 大括号 小括号 自动补全

set cursorline " Highlight the cursor screen line "
"set colorcolumn=80 " Draws a vertical line at column 80 "

" String to put at the start of lines that have been wrapped "
"let &showbreak='↪ '

" Minimal number of screen lines to keep above and below the cursor "
set scrolloff=3

" If 't_vb' is cleared and 'visualbell' is set, "
" no beep and no flash will ever occur "
"set visualbell
"set t_vb=
"set guicursor+=a:blinkon0 " Disable gui cursor blinking "

" PASTE IN INSERT MODE
" Inspired by https://github.com/tpope/vim-unimpaired "
" Sets paste on and set nopaste when leaving insert mode "
" using an autocommand "
nnoremap <silent> yo  :set paste<cr>o
nnoremap <silent> yO  :set paste<cr>O
" Disables paste mode when leaving insert mode
autocmd InsertLeave *
    \ if &paste == 1 |
    \     set nopaste |
    \ endif

" save file whether in insert or normal mode "
inoremap <leader>s <c-o>:w<cr><esc>
nnoremap <leader>s :w<cr>

" 设定配色方案
" molokai, solarized, wombat, desert, evening, zenburn
" 以下这段是为了使用solarized 所需,根据git官网写的
syntax enable
set t_Co=256 
if has('gui_running')
    set background=light
else
    set background=dark
endif
let g:solarized_termcolors=256
colorscheme solarized



