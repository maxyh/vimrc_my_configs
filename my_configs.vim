"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Xj Maxime
"       http://maximeyeah.gicp.net - maxime@yeah.net
"
" Version: 
"       1.0 - 05/06/12 07:43:36
"
" Blog_post: 
"       http://maximeyeah.gicp.net/blog/post/The-Vim-configuration
"
" Reference:
"       http://amix.dk/blog/post/19691#The-ultimate-Vim-configuration-on-Github
"       http://spf13.com/post/ultimate-vim-config
"
" Usages:
"       Learn Vim Progressively -
"          http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/
"       简明 Vim 练级攻略 -
"          http://coolshell.cn/articles/5426.html
"       Vim 进阶教程 -
"          http://blah.blogsome.com/2006/04/04/vim_tut/
"       Vim 使用进阶 -
"          http://easwy.com/blog/archives/advanced-vim-skills-catalog/
" Vim_plugin_reference:
"       http://edyfox.codecarver.org/html/vimplugins.html
"       http://blog.csdn.net/tge7618291/article/details/4216977
"       http://blog.sina.com.cn/s/blog_46dac66f010006uo.html
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/maximeyeah/vimrc
"
" Syntax_highlighted:
"       http://maximeyeah.gicp.net/vim/vimrc.html
"
" Raw_version: 
"       http://maximeyeah.gicp.net/vim/vimrc.txt
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 人机接口:
"    -> 快捷键：单键或组合键，方便快捷，适合连续重复的操作。
"    -> 序列键：按键序列，较为快捷，适合经常重复的操作
"    -> 命令行：命令+回车，
"
" 基本功能: 
"    -> 切换到Shell环境（终端）：Ctrl+Z，fg，
"    -> 直接执行Shell命令：:sh，:!<cmd>，:!!<cmd>，
"          Conque - http://code.google.com/p/conque/
"          VIM-Shell - http://www.wana.at/vimshell/
"
" 打开文件:
"    -> 命令行Shell
"    -> 文件系统导航：NERDTree(,nn)
"    -> 文
"    -> 当前工作文件集：
"    -> 常用配置文件：,e， 
"
" 操作设计：
"    -> 移动定位操作：
"          匹配：Tx，tx，Fx，fx，,，；
"          字符：h，j，k，l
"          单词：b，ge，e，w
"          词组：B，gE，E，W
"          行页：0，^，$，H，L
"          句段：(，)，{，}
"          页面：C-b，C-u，C-d，C-f
"    -> 编辑操作：x，d，
"    -> 插入模式：a，i，O，o，r，R，<space>
"    -> 查找模式：?，/
"    -> 命令模式：:
"    -> Shell模式：
"    -> 文件操作：
"          打开文件：:e，，C-O
"          快速保存：,w，C-S
"    -> 对象操作：
"          查找单词（选择）：#，*
"          翻译单词：
"          打开文件：
"          打开网址：
"          搜索单词：
"          搜索选择：
"          跳转标记：
"         
"
"
"          
"
"
" => 最近打开文件列表
" => 最近关闭文件列表
" => 当前工作文件集合
"
"
" Unix_stream_tool:
"    -> cat, tac, rev
"    -> grep
"    -> sed
"          http://www.cnblogs.com/singleboss/archive/2012/05/08/2490861.html
"          http://www.tsnc.edu.cn/tsnc_wgrj/doc/sed.htm
"          http://unixhelp.ed.ac.uk/CGI/man-cgi?sed
"
"        - http://mingbo.itpub.net/post/4003/17495
"    -> awk 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 5 lines to the cursor - when moving vertically using j/k
set so=5

" 设置序列键超时为1000ms
set tm=1000

" 设置显示序列键命令提示
set sc



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

"try
"    "set background = "light"
"    colorscheme macvim
"    :hi! Normal       guifg=Grey50 guibg=Grey0 
"
"catch
"endtry
"
"" 设置半透明效果
"set transparency=5
"
"" 设置行间间隔
"set linespace=2

" 设置字体
"set guifont=Menlo:h14
"set guifontwide=Helvetica:h16
"set guifontwide=Arial:h16

" 设置自动换行
"set tw=78
"set fo+=Mm

" 设置自动加载文稿语法格式
set modeline 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置Tab标签格式显示Tab序号
set guitablabel=%M\ %N.%t

" set statusline for virtual column number.
let g:airline_section_z="%3p%% %{g:airline_symbols.linenr}%#__accent_bold#%4l%#__restore__#:%3v: U+%04B "


"" 设置Ctrl-Tab切换Tab
"nmap <C-Tab> :tabn<cr>
"nmap <C-S-Tab> :tabN<cr>
"
"if has("mac") || has("macunix")
"  nmap <D-1> :tabn 1<cr>
"  nmap <D-2> :tabn 2<cr>
"  nmap <D-3> :tabn 3<cr>
"  nmap <D-4> :tabn 4<cr>
"  nmap <D-5> :tabn 5<cr>
"  nmap <D-6> :tabn 6<cr>
"  nmap <D-7> :tabn 7<cr>
"  nmap <D-8> :tabn 8<cr>
"  nmap <D-9> :tabn 9<cr>
"  nmap <D-0> :tabn 10<cr>
"  vmap <D-1> :tabn 1<cr>
"  vmap <D-2> :tabn 2<cr>
"  vmap <D-3> :tabn 3<cr>
"  vmap <D-4> :tabn 4<cr>
"  vmap <D-5> :tabn 5<cr>
"  vmap <D-6> :tabn 6<cr>
"  vmap <D-7> :tabn 7<cr>
"  vmap <D-8> :tabn 8<cr>
"  vmap <D-9> :tabn 9<cr>
"  vmap <D-0> :tabn 10<cr>
"endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不禁用IM管理：切换到Normal、Command模式时，自动关闭IM，并且在回到Insert、
" Search模式时恢复IM状态。
set noimdisable
set iminsert=0 "初始化Insert模式不启用IM。
set imsearch=0 "初始化Search模式不启用IM。
"autocmd InsertEnter * set iminsert=0
"autocmd InsertLeave * set iminsert=0
"autocmd CmdwinEnter * set imcmdline
"autocmd CmdwinLeave * set iminsert=2

" 支持欧路词典取词翻译，要将欧路词典翻译选中内容的快捷键盘设置为D-S-2
nmap <F2> gew"+ye:!osascript -e 'tell application "System Events" to keystroke "@" using {command down, shift down}'<cr><cr>
vmap <F2> "+y:!osascript -e 'tell application "System Events" to keystroke "@" using {command down, shift down}'<cr><cr>
imap <F2> gew"+ye:!osascript -e 'tell application "System Events" to keystroke "@" using {command down, shift down}'<cr><cr>

" Function: 支持取词查询百度字典，要安装w3m命令Web浏览器
"
" W3m:
"    w3m - http://bc.tech.coop/blog/080110.html
"    Boehm garbage collector - http://www.hpl.hp.com/personal/Hans_Boehm/gc/
"
" W3m_compiling:
"    1. Download the latest release of the Boehm garbage collector (the one I downloaded was gc-7.0.tar.gz)
"    2. In the unpacked gc-7.0 directory, do:./configure
"         make
"         make check
"         sudo make install
"    3. Download the latest release of w3m (the one I downloaded was w3m-0.5.2.tar.gz)
"    4. In the unpacked w3m-0.5.2 directory, do:./configure
"         make
"         sudo make install
"
" Shell_command:
"    w3m -no-cookie -dump 'http://dict.baidu.com/s?wd='word'&f=3'|sed -e '1,/^.*语法标注解释[ \t]*/{/^.*语法标注解释[ \t]*/!d;h;s/^.*语法标注解释[ \t]*//p;g;}' -e '/^.*语法标注解释[ \t]*/,/译典通提供词典解释/{/译典通提供词典解释/!d;}' -e '/译典通提供词典解释/,/以下结果来自互联网网络释义/!d' -e '/译典通提供词典解释/,/./{/译典通提供词典解释/{s/.*//;h;d;};/./!d;}'  -e '/./!{x;/./!{x;H;};d;}' -e '/以下结果来自互联网网络释义/d;x;/./!p;x;p;x' -e 'd'
nmap <F3> :!w3m -no-cookie -dump 'http://dict.baidu.com/s?wd='<cword>'&f=3'\|sed -e '1,/^.*语法标注解释[ \t]*/{/^.*语法标注解释[ \t]*/\!d;h;s/^.*语法标注解释[ \t]*//p;g;}' -e '/^.*语法标注解释[ \t]*/,/译典通提供词典解释/{/译典通提供词典解释/\!d;}' -e '/译典通提供词典解释/,/以下结果来自互联网网络释义/\!d' -e '/译典通提供词典解释/,/./{/译典通提供词典解释/{s/.*//;h;d;};/./\!d;}'  -e '/./\!{x;/./\!{x;H;};d;}' -e '/以下结果来自互联网网络释义/d;x;/./\!p;x;p;x' -e 'd'<cr>

" 按键优化
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
inoremap jj  <ESC>
nnoremap ; :



"" replace text with unnamed register (in all modes)
"function! ReplaceWithUnamed(type)
"    let paste_save=&paste
"    let &paste=1
"    if a:type == 'line'
"      silent exe "normal! '[V']"
"    elseif a:type == 'block'
"      silent exe "normal! `[\<C-V>`]"
"    elseif a:type == 'char'
"      silent exe "normal! `[v`]"
"    else
"      silent exe "normal! `<" . a:type . "`>"
"    endif
"    silent exe "normal! \"_c\<C-R>\"\<ESC>"
"    let &paste=paste_save 
"endfunction
"nmap <silent> S :set opfunc=ReplaceWithUnamed<CR>g@
"vmap <silent> S :<C-U>call ReplaceWithUnamed(visualmode())<CR>

"让vim记忆上次编辑的位置
"autocmd BufReadPost *
"		\ if line("'\"")>0&&line("'\"")<=line("$") |
"		\	exe "normal g'\"" |
"		\ endif
"让vim记忆上次编辑的位置

" 信息重定向
" 有时候我们想把执行ex命令的信息保存下来，Vim提供了:redir命令用来把信息输出重定向到文件或寄存器里。例如：
"        :redir @a
"        :(some commands)
"        :redir END
" 可以定义一个命令来自动完成上述操作：
" :command! -nargs=* Mc redir @"> | try | exe "<args>" | finally | redir END | endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim配置文件

"if !empty(maparg("<leader>e"))
"    unmap <leader>e
"endif
"map <leader>erc :e ~/.vimrc<cr>
"map <leader>erb :e ~/.vim_runtime/vimrcs/basic.vim<cr>
"map <leader>erf :e ~/.vim_runtime/vimrcs/filetypes.vim<cr>
"map <leader>erp :e ~/.vim_runtime/vimrcs/plugins_config.vim<cr>
"map <leader>ere :e ~/.vim_runtime/vimrcs/extended.vim<cr>
"map <leader>erm :e! ~/.vim_runtime/my_configs.vim<cr>

" 个人信息管理体系
"    * 待办事务列表
"    * 工作日志
"    * 工作维基
"    * 工作速查
"    * IDE环境：C/C++，Pyphon，PHP，Perl，VIM Script

" 待办事务列表：
"    * 每当意识到某件事情需要处理时，就将其加入待办事务列表。
"    * 每当空闲的时候，浏览待办事务列表，选择一项来处理。
"    * 每当完成一项事务的时候，就从列表中删除这个事务。
"map <leader>ew :e ~/SVN/working-notes/waiting-task.txt<cr>

" 工作日志
" Todo：较为的理想的方式是：
"       如果工作日志的缓冲区已经打开了，就切换到该缓冲区；
"       如果工作日志文件已经存在了，就打开该文件；
"       否则，在新窗口中创建工作日志的缓冲区，并填充工作日志模板。
"function! GetWorkingNotesPath()
"    return '~/SVN/working-notes/'
"endfunction
"function! GetWorkingNotesDirectory(t)
"    let cur = a:t
"    let week = strftime('%U', cur)
"    let firstday = strftime('%m%d', cur - 3600 * 24 * strftime('%w', cur))
"    let lastday = strftime('%m%d', cur + 3600 * 24 * (6 - strftime('%w', cur)))
"    return GetWorkingNotesPath() . week . '.' . firstday . '-' . lastday
"endfunction
"function! GetWorkingNotesFilename(t)
"    let cur = a:t
"    return GetWorkingNotesDirectory(cur) . '/' . strftime('%m%d', cur) . '.txt'
"endfunction
"function! ExistFile(t)
"    let cur = a:t
"    return !(glob(cur) == "")
"endfunction
"function! EditWorkingNotesForDay(day)
"    let cur = localtime() - 3600 * 24 * a:day
"    let dir = GetWorkingNotesDirectory(cur)
"    if !isdirectory(dir)
"        exec "!mkdir " . dir
"    endif
"    let file = GetWorkingNotesFilename(cur)
"    let creating = !ExistFile(file)
"    exec "edit " . file
"    if creating
"        exec "0read!date"
"        call setline(2, "======================================")
"        call append(line('$'), "")
"        call append(line('$'), "")
"        call append(line('$'), "")
"        call append(line('$'), "")
"        call append(line('$'), "")
"        call append(line('$'), "")
"        call append(line('$'), "")
"        call append(line('$'), "")
"        call append(line('$'), "")
"        call append(line('$'), "")
"        call append(line('$'), "")
"        call append(line('$'), " vim:fo+=wmM tw=78 syntax=marktext")
"        exec "write"
"    endif
"endfunction
"map <leader>ent :call EditWorkingNotesForDay(0)<cr> 
"map <leader>eny :call EditWorkingNotesForDay(1)<cr>
"
"
"function! XJFind(...)
"    let output = call('system', a:000)
"    return output
"endfunction

" 任务管理
"map <leader>et :e ~/SVN/bluedoc/workspace/work_task<cr>

" 技术日志
"map <leader>er :e ~/SVN/bluedoc/workspace/work_record<cr>

" 技术片段
"map <leader>es :e ~/SVN/bluedoc/workspace/work_snippet<cr>

" Vim操作速查
"map <leader>evc :e ~/SVN/bluedoc/workspace/vim_command<cr>

" Unix系统管理专题
"map <leader>eiu :e ~/SVN/bluedoc/workspace/work_record<cr>

" Vim操作专题
"map <leader>eiv :e ~/SVN/bluedoc/workspace/work_record<cr>

" Vim插件专题
"map <leader>eip :e ~/SVN/bluedoc/workspace/work_record<cr>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" :!osascript -e 'tell application "System Events" to keystroke "book"' 

 "autocmd! bufwritepost vimrc source ~/.vim_runtime/my_configs.vim
"
"         call pathogen#infect('~/.vim_runtime/my_sources')
"
"
"
"cll pathogen#infect('~/.vim_runtime/my_sources')

" Note: pathogen的原理是设置&rpt选项值，所以，以下代码被执行时，实际的插件并未加载进来。
"call pathogen#infect('~/.vim_runtime/my_sources')
"call pathogen#helptags()
"
"call pathogen#infect('~/.vim_runtime/my_sources')
"call p('~/.vim_runtime/my_sources')
"call ('~/.vim_runtime/my_sources')
"capatho('~/.vim_runtime/my_sources')



" Note: 如果这个nmap映射未定义，则nunmap会引发配置脚本执行错误，使得其后的脚本都得不到执行。
"       所以直接调用nunmap是有问题的，应该先检查nmap是否已经定义过。
"       但即便检查了也没用，因为当脚本执行到此处时，这些按键尚未定义，它们是在之后的某个时刻定义的。
"       if !empty(maparg("<leader>cD","n"))
"           nunmap <leader>cD
"       endif
"       if !empty(maparg("<leader>cu","n"))
"           nunmap <leader>cu
"       endif
"       if !empty(maparg("<leader>ca","n"))
"           nunmap <leader>ca
"       endif
"
" Note: 取消,cd映射，没必要为这个很少执行的简单命令设置映射，将其设置为VCSDiff
" map <leader>cd :cd %:p:h<cr>:pwd<cr>
"nmap <leader>cd :VCSDiff<cr>

" Note: VCSCommand中定义的几个映射比较危险，因此，将其屏蔽掉。
"let g:VCSCommandMappings = [
"			\['c', 'VCSCommit'],
"			\['G', 'VCSClearAndGotoOriginal'],
"			\['g', 'VCSGotoOriginal'],
"			\['i', 'VCSInfo'],
"			\['l', 'VCSLog'],
"			\['N', 'VCSSplitAnnotate'],
"			\['n', 'VCSAnnotate'],
"			\['q', 'VCSRevert'],
"			\['r', 'VCSReview'],
"			\['s', 'VCSStatus'],
"			\['v', 'VCSVimDiff'],
"			\]
""			\['a', 'VCSAdd'],
""    		\['D', 'VCSDelete'],
""			\['d', 'VCSDiff'],
""			\['L', 'VCSLock'],
""			\['U', 'VCSUnlock'],
""			\['u', 'VCSUpdate'],

"
"    -
"
"    > 查找模式
"
"   ：

"let g:DokuVimKi_USER="admin"
"let g:DokuVimKi_PASS="xj2010"
"let g:DokuVimKi_URL="http://192.168.10.100:8080/dokuwiki"
""let g:DokuVimKi_DEFAULT_SUM


"let Tlist_Auto_Open=0 " Let the tag list open automatically
"let Tlist_Auto_Update " Update the tag list automatically
"let Tlist_Compact_Format=1 " Hide help menu
"let Tlist_Ctags_Cmd='ctags' " Location of ctags
"let Tlist_Enable_Frwerxyzumn=0 "do show folding tree
"let Tlist_Process_File_Always=1 " Always process the source file
"let Tlist_Show_One_File=1 " Only show the tag list of current file
"let Tlist_Exist_OnlyWindow=1 " If you are the last, kill yourself
"let Tlist_File_Fold_Auto_Close=0 " Fold closed other trees
"let Tlist_Sort_Type="name" " Order by name
"let Tlist_WinWidth=40 " Set the window 40 cols wide.
"let Tlist_Close_On_Select=1 " Close the list when a item is selected
"let Tlist_Use_SingleClick=1 "Go To Target By SingleClick
