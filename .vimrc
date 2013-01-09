" Vundleの設定
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'Align'
Bundle 'AndrewRadev/vim-coffee-script'
Bundle 'AutoClose'
Bundle 'Indent-Guides'
Bundle 'JSON.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'RubySinatra'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'Simple-Javascript-Indenter'
Bundle 'The-NERD-tree'
Bundle 'Wombat'
Bundle 'YankRing.vim'
Bundle 'ZenCoding.vim'
Bundle 'ack.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'basyura/unite-yarm'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'chaquotay/ftl-vim-syntax'
Bundle 'css_color.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'express.vim'
Bundle 'fuenor/qfixgrep.git'
Bundle 'fugitive.vim'
Bundle 'glidenote/memolist.vim'
Bundle 'gregsexton/gitv'
Bundle 'groenewege/vim-less'
Bundle 'hail2u/vim-css-syntax'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'hallison/vim-markdown'
Bundle 'hokaccha/vim-html5validator'
Bundle 'honza/snipmate-snippets'
Bundle 'jQuery'
Bundle 'jade.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'juvenn/mustache.vim'
Bundle 'kakkyz81/evervim'
Bundle 'kien/ctrlp.vim'
Bundle 'leafgarland/typescript-vim'
Bundle 'majutsushi/tagbar'
Bundle 'malclocke/vim-buster'
Bundle 'matchit.zip'
Bundle 'mattn/gist-vim'
Bundle 'mattn/learn-vimscript'
Bundle 'mattn/webapi-vim'
Bundle 'mikewest/vimroom'
Bundle 'mklabs/grunt.vim'
Bundle 'molokai'
Bundle 'mrtazz/simplenote.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'newspaper.vim'
Bundle 'nono/vim-handlebars'
Bundle 'othree/html5.vim'
Bundle 'pekepeke/titanium-vim'
Bundle 'proton'
Bundle 'pyte'
Bundle 'rainbow.zip'
Bundle 'scrooloose/syntastic'
Bundle 'str2numchar.vim'
Bundle 'sudo.vim'
Bundle 't9md/vim-unite-ack'
Bundle 'tacahiroy/vim-logaling'
Bundle 'teramako/jscomplete-vim'
Bundle 'thinca/vim-auto_source'
Bundle 'thinca/vim-github'
Bundle 'thinca/vim-quickrun'
Bundle 'thinca/vim-ref'
Bundle 'toritori0318/vim-redmine'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-surround'
Bundle 'tyru/caw.vim'
Bundle 'tyru/open-browser.vim'
Bundle 'tyru/skk.vim'
Bundle 'unicode.vim'
Bundle 'unite-colorscheme'
Bundle 'unite-font'
Bundle 'vcscommand.vim'
Bundle 'wavded/vim-stylus'
Bundle 'yuratomo/w3m.vim'
filetype plugin indent on

" PATHの設定
if has('gui_running')
  let $PATH = '/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/usr/local/share/python:' . $PATH
endif
set sessionoptions+=resize,tabpages " 行・列を設定する
" ステータスライン
set laststatus=2 " 常にステータスラインを表示
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%{fugitive#statusline()}%=%4v(ASCII=%03.3b,HEX=%02.2B)\ %l/%L(%P)%m
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" コマンドをステータスラインに表示する
set showcmd
set cmdheight=1            " コマンドラインの高さ
"色系の指定=======================================
"とりあえずscheme指定でザックリ指定
set t_Co=256
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized

" for solarized colorscheme
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
call togglebg#map("<F5>")

syntax on
"vi互換の動きにしない
set nocompatible
"行番号を表示
set number
"対応括弧の強調は0.3秒
set matchtime=3

"折り返しあり
set wrap
"水平タブ系の設定==============================================
"デフォルト設定。結局runtime/indentの設定のほうで、ファイルごとに切り替える

"タブとか改行を表示する
set list
"タブとか改行を示す文字列
set listchars=eol:¬,tab:▸\ ,extends:>,precedes:<,trail:-
"タブを空白で入力する
"set expandtab
"標準タブは4
set tabstop=4
set softtabstop=4

"自動的にインデントする
set autoindent
set smartindent

"バックスペースでインデントや改行を削除できるようにする
set backspace=2

" 全角スペースをハイライト
if has("syntax")
  syntax on
  function! ActivateInvisibleIndicator()
    syntax match InvisibleJISX0208Space "　" display containedin=ALL
    highlight InvisibleJISX0208Space term=underline ctermbg=Cyan guibg=Cyan
    "syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
    "highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=Red
    "syntax match InvisibleTab "\t" display containedin=ALL
    "highlight InvisibleTab term=underline ctermbg=Cyan guibg=Cyan
  endf
  augroup invisible
    autocmd! invisible
    autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
  augroup END
endif

" やんくをクリップボードへ送り込む
set clipboard=unnamed

"バッファ関連
"編集中でもバッファを切り替えれるようにしておく
set hidden

"ルーラーを表示
set ruler
set title

" highlightサーチをEsc2回で消去
nnoremap <Esc><Esc> :nohlsearch<CR>

" macvimでoptionを使用
if has("gui_macvim")
    set macmeta
endif

"バックアップの場所
set backupdir=~/Documents/vimbackup
"swpファイルの場所
set directory=~/Documents/vimbackup

" tagファイル検索
set tags+=tags;

"コマンドラインをtcshスタイルに
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

" コーディングスタイル切り替え
let s:coding_styles = {}
let s:coding_styles['DefaultTab'] = 'setl tabstop=4 shiftwidth=4 shiftwidth=4 softtabstop=4 noexpandtab'
let s:coding_styles['Default'] = 'setl tabstop=4 shiftwidth=4 shiftwidth=4 softtabstop=4 expandtab'
let s:coding_styles['ShortExpandStyle'] = 'setl tabstop=2 shiftwidth=2 shiftwidth=2 softtabstop=2 expandtab'
let s:coding_styles['ShortExpandStyleTab'] = 'setl tabstop=2 shiftwidth=2 shiftwidth=2 softtabstop=2 noexpandtab'

command!
      \ -bar -nargs=1 -complete=customlist,s:coding_style_complete
      \ CodingStyle
      \ execute get(s:coding_styles, <f-args>, '')

function! s:coding_style_complete(...) "{{{
  return keys(s:coding_styles)
endfunction "}}}

" let $PERL_DLL = "/opt/local/lib/perl5/5.10.0/darwin-2level/CORE/libperl.dylib"
" let $PYTHON_DLL = "/opt/local/lib/libpython2.6.dylib"
" let $RUBY_DLL = "/opt/local/lib/libruby.dylib"

augroup BufferAu
  autocmd!
  "カレントディレクトリを自動的に移動
  autocmd BufNewFile,BufRead,BufEnter * if isdirectory(expand("%:p:h")) && bufname("%") !~ "NERD_tree" | cd %:p:h | endif
augroup END

"タブ幅をリセット
au BufNewFile,BufRead * set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

".rhtmlと.rbと.ymlでタブ幅を変更
au BufNewFile,BufRead *.rhtml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
au BufNewFile,BufRead *.rb set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
au BufNewFile,BufRead *.yml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"for jquery syntax
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" JSON beautifier
map <Leader>jb !python -m json.tool<CR>

"for JSON syntax
au! BufRead,BufNewFile *.json set filetype=json 
augroup json_autocmd 
  autocmd! 
  autocmd FileType json setlocal autoindent 
  autocmd FileType json setlocal formatoptions=tcq2l 
  autocmd FileType json setlocal textwidth=78 shiftwidth=2 
  autocmd FileType json setlocal softtabstop=2 tabstop=8 
  autocmd FileType json setlocal expandtab 
  autocmd FileType json setlocal foldmethod=syntax 
augroup END

"for Markdown
autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mark*} set filetype=markdown

" .pyでタブ幅を変更・スペースでインデントに変更
au BufNewFile,BufRead *.py setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

"javascript tab
au BufNewFile,BufRead *.js set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" for ftl syntax
au BufRead,BufNewFile *.ftl set filetype=ftl

"for skk.vim
let skk_jisyo = "~/Library/Application\ Support/AquaSKK/skk-jisyo.utf8"
let skk_large_jisyo = "~/Library/Application\ Support/AquaSKK/SKK-JISYO.L" 
let g:skk_auto_save_jisyo = 1
let g:skk_remap_lang_mode = 1

" str2numcharキーマップ設定
vmap <silent> sn :Str2NumChar<CR> 
vmap <silent> sh :Str2HexLiteral<CR> 

" yankring_historyのディレクトリ設定
let g:yankring_history_dir = expand('$HOME')
let g:yankring_history_file = '.yankring_history'
let g:yankring_replace_n_pkey = '<M-p>'
let g:yankring_replace_n_nkey = '<M-n>'
nnoremap <silent> <F8> :YRShow<CR>

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions',
  \ 'scala' : $HOME.'/.vim/dict/scala.dict'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
imap <C-s>  <Plug>(neosnippet_start_unite_snippet)
xmap <C-k>     <Plug>(neosnippet_expand_target)
xmap <C-l>     <Plug>(neosnippet_start_unite_snippet_target)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" For cursor moving in insert mode(Not recommended)
inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
"Define snippets directory
let g:neocomplcache_snippets_dir = $HOME.'/.vim/bundle/snipmate-snippets/snippets/'.', '.$HOME.'/.vim/bundle/vim-markdown/snippets/'

"for Vimshell.vim
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_right_prompt = 'vimshell#vcs#info("(%s)-[%b]", "(%s)-[%b|%a]")'
let g:vimshell_enable_smart_case = 1

if has('win32') || has('win64') 
  " Display user name on Windows.
  let g:vimshell_prompt = $USERNAME."% "
else
  " Display user name on Linux.
  let g:vimshell_prompt = $USER."% "

  call vimshell#set_execute_file('bmp,jpg,png,gif', 'gexe eog')
  call vimshell#set_execute_file('mp3,m4a,ogg', 'gexe amarok')
  let g:vimshell_execute_file_list['zip'] = 'zipinfo'
  call vimshell#set_execute_file('tgz,gz', 'gzcat')
  call vimshell#set_execute_file('tbz,bz2', 'bzcat')
endif

autocmd FileType vimshell
\ call vimshell#altercmd#define('g', 'git')
\| call vimshell#altercmd#define('i', 'iexe')
\| call vimshell#altercmd#define('l', 'll')
\| call vimshell#altercmd#define('ll', 'ls -l')
\| call vimshell#hook#set('chpwd', ['g:my_chpwd'])
\| call vimshell#hook#set('emptycmd', ['g:my_emptycmd'])
" \| call vimshell#hook#set('preprompt', ['g:my_preprompt('])
\| call vimshell#hook#set('preexec', ['g:my_preexec'])

function! g:my_chpwd(args, context)
  call vimshell#execute('echo "chpwd"')
endfunction
function! g:my_emptycmd(cmdline, context)
  call vimshell#execute('echo "emptycmd"')
  return a:cmdline
endfunction
" function! g:my_preprompt(args, context)
  " call vimshell#execute('echo "preprompt"')
" endfunction
function! g:my_preexec(cmdline, context)
  call vimshell#execute('echo "preexec"')
  return a:cmdline
endfunction

"unite.vim
" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Space>f [unite]

nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir
      \ -buffer-name=files buffer file_mru bookmark file file/new<CR>
nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir
      \ -buffer-name=files -prompt=%\  buffer file_mru bookmark file file/new<CR>
nnoremap <silent> [unite]r  :<C-u>Unite
      \ -buffer-name=register register<CR>
nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
nnoremap <silent> [unite]f
      \ :<C-u>Unite -buffer-name=resume resume<CR>
nnoremap <silent> [unite]d
      \ :<C-u>Unite -buffer-name=files -default-action=lcd directory_mru<CR>
nnoremap <silent> [unite]ma
      \ :<C-u>Unite mapping<CR>
nnoremap <silent> [unite]me
      \ :<C-u>Unite output:message<CR>
nnoremap  [unite]f  :<C-u>Unite source<CR>

nnoremap <silent> [unite]s
      \ :<C-u>Unite -buffer-name=files -no-split
      \ jump_point file_point buffer_tab
      \ file_rec:! file file/new file_mru<CR>

" Start insert.
let g:unite_enable_start_insert = 1
" let g:unite_enable_short_source_names = 1

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  " Overwrite settings.

  nmap <buffer> <ESC>      <Plug>(unite_exit)
  imap <buffer> jj      <Plug>(unite_insert_leave)
  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)

  imap <buffer><expr> j unite#smart_map('j', '')
  " imap <buffer> <TAB>   <Plug>(unite_select_next_line)
  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
  imap <buffer> '     <Plug>(unite_quick_match_default_action)
  nmap <buffer> '     <Plug>(unite_quick_match_default_action)
  imap <buffer><expr> x
        \ unite#smart_map('x', "\<Plug>(unite_quick_match_choose_action)")
  nmap <buffer> x     <Plug>(unite_quick_match_choose_action)
  nmap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
  imap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
  imap <buffer> <C-y>     <Plug>(unite_narrowing_path)
  nmap <buffer> <C-y>     <Plug>(unite_narrowing_path)
  nmap <buffer> <C-j>     <Plug>(unite_toggle_auto_preview)
  nmap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
  imap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
  nnoremap <silent><buffer><expr> l
        \ unite#smart_map('l', unite#do_action('default'))

  let unite = unite#get_current_unite()
  if unite.buffer_name =~# '^search'
    nnoremap <silent><buffer><expr> r     unite#do_action('replace')
  else
    nnoremap <silent><buffer><expr> r     unite#do_action('rename')
  endif

  nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')
  nnoremap <buffer><expr> S      unite#mappings#set_current_filters(
        \ empty(unite#mappings#get_current_filters()) ? ['sorter_reverse'] : [])
endfunction"}}}

let g:unite_source_file_mru_limit = 200
let g:unite_cursor_line_highlight = 'TabLineSel'
let g:unite_abbr_highlight = 'TabLine'
let g:unite_source_history_yank_enable = 1

" For optimize.
let g:unite_source_file_mru_filename_format = ''

if executable('jvgrep')
  " For jvgrep.
  let g:unite_source_grep_command = 'jvgrep'
  let g:unite_source_grep_default_opts = '--exclude ''\.(git|svn|hg|bzr)'''
  let g:unite_source_grep_recursive_opt = '-R'
endif

" For ack.
if executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a'
  let g:unite_source_grep_recursive_opt = ''
endif

" for unite-ack
let g:unite_source_ack_command = 'ack --nocolor --nogroup'
let g:unite_source_ack_ignore_case = 1
" for vimfiler
call vimfiler#set_execute_file('vim', 'vim')
call vimfiler#set_execute_file('txt', 'notepad')

" Edit file by tabedit.
let g:vimfiler_edit_action = 'tabopen'

let g:vimfiler_as_default_explorer = 1

" Enable file operation commands.
"let g:vimfiler_safe_mode_by_default = 0

" Javascript indent
let g:SimpleJsIndenter_BriefMode = 1
let g:SimpleJsIndenter_CaseIndentLevel = -1

" for indent-guideline
let g:indent_guides_enable_on_vim_startup = 1

" for Align
let g:Align_xstrlen = 3 "for Javanese String
let g:DrChipTopLvlMenu = '' "remove 'DrChip' menu

" for Gist.vim
let g:gist_clip_command = 'pbcopy'
let gist_show_privates = 1
let gist_detect_filetype = 1
let g:gist_browser_command = 'opera %URL% &'
let g:gist_get_multiplefile = 1

" for ZenCoding.vim
let g:user_zen_settings = {
\ 'lang': 'ja',
\ 'html': {
\       'indentation' : '  ',
\   'snippets': {
\   'flash': "<object data=\"${cursor}\""
\        ." type=\"application/x-shockwave-flash\""
\        ." id=\"\" width=\"\" height=\"\">"
\        ." <param name=\"movie\" value=\"\" />\n</object>",
\   },
\ },
\ 'css': {
\   'filters': 'fc',
\ },
\ 'php': {
\   'extends': 'html',
\   'filters': 'html,c',
\ },
\}
let g:use_zen_complete_tag = 1

" for Nerd-Tree
nmap <Space>t :NERDTreeToggle<CR>
nmap <Space>T :NERDTree<CR>
let g:NERDTreeHijackNetrw = 0
"for vim-coffee-script
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufWritePost *.coffee silent CoffeeMake!
let coffee_make_options = '--bare'

" for quickrun.vim
let g:quickrun_config = {}
let g:quickrun_config['coffee'] = {'command' : 'coffee', 'exec' : ['%c -cbp %s']}
let g:quickrun_config['markdown'] = {'command' : 'bluecloth', 'exec' : ['%c -f %s']}

" for simplenote.vim
if filereadable(expand('~/.simplenoterc'))
  source ~/.simplenoterc
endif

" for tagbar.vim
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/Applications/MacVim.app/Contents/MacOS/ctags'
let g:tagbar_type_javascript = {
    \ 'ctagsbin' : '/usr/local/share/npm/bin/jsctags'
\ }
let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }

" Posix regular expressions for matching interesting items. Since this will
" be passed as an environment variable, no whitespace can exist in the options
" so [:space:] is used instead of normal whitespaces.
" Adapted from: https://gist.github.com/2901844
let s:ctags_opts = '
  \ --langdef=coffee
  \ --langmap=coffee:.coffee
  \ --regex-coffee=/(^|=[[:space:]])*class[[:space:]]([A-Za-z]+\.)*([A-Za-z]+)([[:space:]]extends[[:space:]][A-Za-z.]+)?$/\3/c,class/
  \ --regex-coffee=/^[[:space:]]*(module\.)?(exports\.)?@?([A-Za-z.]+):.*[-=]>.*$/\3/m,method/
  \ --regex-coffee=/^[[:space:]]*(module\.)?(exports\.)?([A-Za-z.]+)[[:space:]]+=.*[-=]>.*$/\3/f,function/
  \ --regex-coffee=/^[[:space:]]*([A-Za-z.]+)[[:space:]]+=[^->\n]*$/\1/v,variable/
  \ --regex-coffee=/^[[:space:]]*@([A-Za-z.]+)[[:space:]]+=[^->\n]*$/\1/f,field/
  \ --regex-coffee=/^[[:space:]]*@([A-Za-z.]+):[^->\n]*$/\1/f,staticField/
  \ --regex-coffee=/^[[:space:]]*([A-Za-z.]+):[^->\n]*$/\1/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@([A-Za-z.]+)/\2/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@[A-Za-z.]+(,[[:space:]]@([A-Za-z.]+)){0}/\3/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@[A-Za-z.]+(,[[:space:]]@([A-Za-z.]+)){1}/\3/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@[A-Za-z.]+(,[[:space:]]@([A-Za-z.]+)){2}/\3/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@[A-Za-z.]+(,[[:space:]]@([A-Za-z.]+)){3}/\3/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@[A-Za-z.]+(,[[:space:]]@([A-Za-z.]+)){4}/\3/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@[A-Za-z.]+(,[[:space:]]@([A-Za-z.]+)){5}/\3/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@[A-Za-z.]+(,[[:space:]]@([A-Za-z.]+)){6}/\3/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@[A-Za-z.]+(,[[:space:]]@([A-Za-z.]+)){7}/\3/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@[A-Za-z.]+(,[[:space:]]@([A-Za-z.]+)){8}/\3/f,field/
  \ --regex-coffee=/(constructor:[[:space:]]\()@[A-Za-z.]+(,[[:space:]]@([A-Za-z.]+)){9}/\3/f,field/'

let $CTAGS = substitute(s:ctags_opts, '\v\([nst]\)', '\\', 'g')

" for vim-powerline
let g:Powerline_symbols = 'fancy'
if has('gui_running')
  let g:Powerline_colorscheme = 'solarized'
else
  let g:Powerline_colorscheme = 'solarized256'
endif

" map to <F6> toggle powerline colorscheme
function! TogglePowerlineColorscheme()
  if exists(':ToggleBG') && exists(':PowerlineReloadColorscheme')
    let g:Powerline_colorscheme = &background == 'light' ? 'solarized' : 'solarized256'
    PowerlineReloadColorscheme
  endif
endfunction
nnoremap <F6> :call TogglePowerlineColorscheme()<CR>
inoremap <F6> :call TogglePowerlineColorscheme()<CR>
vnoremap <F6> :call TogglePowerlineColorscheme()<CR>

" for memolist.vim
let g:memolist_qfixgrep = 1
let g:memolist_memo_suffix = "md"
let g:memolist_template_dir_path = "~/.vim/template/memolist"
let g:memolist_path = "~/Documents/memo"
let g:memolist_vimfiler = 1
let g:memolist_prompt_tags = 1
let g:memolist_prompt_categories = 1
map <Leader>ml  :MemoList<CR>
map <Leader>mn  :MemoNew<CR>
map <Leader>mg  :MemoGrep<CR>

" for jscomplete-vim
let g:jscomplete_use = ['dom', 'moz', 'es6th']

" for Gitv
autocmd FileType git :setlocal foldlevel=99

" for vim-ref
let g:ref_source_webdict_sites = {
\   'alc': {
\     'url': 'http://eow.alc.co.jp/%s',
\     'keyword_encoding': 'utf-8',
\     'cache': 1,
\   },
\   'weblio': {
\     'url': 'http://ejje.weblio.jp/content/%s',
\     'keyword_encoding': 'utf-8',
\     'cache': 1,
\   },
\ }
let g:ref_source_webdict_sites.default = 'alc'
function! g:ref_source_webdict_sites.alc.filter(output)
  return join(split(a:output, "\n")[29 :], "\n")
endfunction
function! g:ref_source_webdict_sites.weblio.filter(output)
  return join(split(a:output, "\n")[53 :], "\n")
endfunction

" for vim-redmine
if filereadable(expand('~/.redminerc'))
  source ~/.redminerc
  let g:redmine_browser = 'open -a /Applications/Opera.app'
endif

" choice javascript linter for vim-syntastic
let g:syntastic_javascript_checker = "jshint"

" for loga-vim
let g:loga_delimiter = '(//)'

" for qfixgrep
set runtimepath+=$HOME/.vim/bundle/qfixgrep

" for ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_buftag_types = {
  \ 'erlang'     : '--language-force=erlang --erlang-types=drmf',
  \ 'javascript' : {
    \ 'bin': 'jsctags',
    \ 'args': '-f -',
    \ },
\ }
