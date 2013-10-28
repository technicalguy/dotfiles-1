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
Bundle 'JulesWang/css.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'RubySinatra'
Bundle 'Shougo/neocomplete.vim'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/unite-outline'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'Simple-Javascript-Indenter'
Bundle 'The-NERD-tree'
Bundle 'Wombat'
Bundle 'YankRing.vim'
Bundle 'ack.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'basyura/unite-yarm'
Bundle 'bling/vim-airline'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'chaquotay/ftl-vim-syntax'
Bundle 'css_color.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'elzr/vim-json'
Bundle 'express.vim'
Bundle 'fuenor/qfixgrep.git'
Bundle 'git://github.com/miripiruni/CSScomb-for-Vim.git'
Bundle 'glidenote/memolist.vim'
Bundle 'gregsexton/gitv'
Bundle 'groenewege/vim-less'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'hallison/vim-markdown'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'hokaccha/vim-html5validator'
Bundle 'honza/vim-snippets'
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
Bundle 'marijnh/tern_for_vim'
Bundle 'matchit.zip'
Bundle 'mattn/emmet-vim'
Bundle 'mattn/excitetranslate-vim'
Bundle 'mattn/gist-vim'
Bundle 'mattn/learn-vimscript'
Bundle 'mattn/qiita-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mfumi/ref-dicts-en'
Bundle 'mikewest/vimroom'
Bundle 'mklabs/grunt.vim'
Bundle 'mojako/ref-sources.vim'
Bundle 'moll/vim-node'
Bundle 'molokai'
Bundle 'moznion/unite-git-conflict.vim'
Bundle 'mrtazz/simplenote.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'newspaper.vim'
Bundle 'nono/vim-handlebars'
Bundle 'osyo-manga/vim-anzu'
Bundle 'othree/html5.vim'
Bundle 'pekepeke/titanium-vim'
Bundle 'proton'
Bundle 'pyte'
Bundle 'rainbow.zip'
Bundle 'rizzatti/dash.vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'ropez/jasmine.vim'
Bundle 'scrooloose/syntastic'
Bundle 'str2numchar.vim'
Bundle 'sudo.vim'
Bundle 'supermomonga/vimshell-pure.vim'
Bundle 't9md/vim-unite-ack'
Bundle 'tacahiroy/vim-logaling'
Bundle 'thinca/vim-auto_source'
Bundle 'thinca/vim-github'
Bundle 'thinca/vim-portal'
Bundle 'thinca/vim-qfreplace'
Bundle 'thinca/vim-quickrun'
Bundle 'thinca/vim-ref'
Bundle 'toritori0318/vim-redmine'
Bundle 'toyamarinyon/hatenablog-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-surround'
Bundle 'tsukkee/unite-tag'
Bundle 'tyru/caw.vim'
Bundle 'tyru/open-browser-github.vim'
Bundle 'tyru/open-browser.vim'
Bundle 'tyru/skk.vim'
Bundle 'ujihisa/neco-look'
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
" set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%{fugitive#statusline()}%=%4v(ASCII=%03.3b,HEX=%02.2B)\ %l/%L(%P)%m
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" set statusline+=%{anzu#search_status()}

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

" for scroll perfomance, set lazyredraw & ttyfast when using in terminal
if !has('gui_running')
  set lazyredraw
  set ttyfast
endif

"バックスペースでインデントや改行を削除できるようにする
set backspace=2

" for non-ascii string
if &ambiwidth !=# 'auto'
  set ambiwidth=double
endif

" 全角スペースをハイライト
if has("syntax")
  syntax on
  function! ActivateInvisibleIndicator()
    syntax match InvisibleJISX0208Space "　" display containedin=ALL
    highlight InvisibleJISX0208Space term=underline ctermbg=Cyan guibg=Cyan
    syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
    highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=Red
    syntax match InvisibleTab "\t" display containedin=ALL
    highlight InvisibleTab term=underline ctermbg=Cyan guibg=Cyan
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

" let $PERL_DLL = "/usr/local/lib/perl5/5.12.0/darwin-2level/CORE/libperl.dylib"
let $PYTHON_DLL = "/usr/local/lib/libpython2.7.dylib"
let $PYTHON3_DLL="/usr/local/Cellar/python3/3.3.0/Frameworks/Python.framework/Versions/3.3/Python"
let $RUBY_DLL = "/usr/local/lib/libruby.dylib"
" let $RUBY_DLL = "/usr/local/lib/libruby.1.8.dylib"
" let $LUA_DLL="/usr/local/Cellar/lua52/5.2.1/lib/liblua.dylib"

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

"for Markdown
autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mark*} set filetype=markdown tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" .pyでタブ幅を変更・スペースでインデントに変更
au BufNewFile,BufRead *.py setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

"javascript tab
au BufNewFile,BufRead *.js set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" for ftl syntax
au BufRead,BufNewFile *.ftl set filetype=ftl

"for skk.vim
let skk_jisyo = "~/Library/Application\ Support/AquaSKK/skk-jisyo.utf8"
let skk_large_jisyo = "~/Library/Application\ Support/AquaSKK/SKK-JISYO.L"
let g:skk_auto_save_jisyo = 1
let g:skk_remap_lang_mode = 1
let g:skk_kutouten_type = "en"

" str2numcharキーマップ設定
vmap <silent> sn :Str2NumChar<CR>
vmap <silent> sh :Str2HexLiteral<CR>

" yankring_historyのディレクトリ設定
let g:yankring_history_dir = expand('$HOME')
let g:yankring_history_file = '.yankring_history'
let g:yankring_replace_n_pkey = ',p'
let g:yankring_replace_n_nkey = ',n'
nnoremap <silent> <F8> :YRShow<CR>

" for neocomplete.vim
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions',
      \ 'scala' : $HOME.'/.vim/dict/scala.dict'
      \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php =
      \ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.c =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.cpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl =
      \ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

" For smart TAB completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
"        \ <SID>check_back_space() ? "\<TAB>" :
"        \ neocomplete#start_manual_complete()
"  function! s:check_back_space() "{{{
"    let col = col('.') - 1
"    return !col || getline('.')[col - 1]  =~ '\s'
"  endfunction"}}}

" for neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
imap <C-s>  <Plug>(neosnippet_start_unite_snippet)
xmap <C-k>     <Plug>(neosnippet_expand_target)
xmap <C-l>     <Plug>(neosnippet_start_unite_snippet_target)
let g:neosnippet#snippets_directory =
      \ $HOME.'/.vim/bundle/vim-snippets/snippets/'.', '.
      \ $HOME.'/.vim/bundle/vim-markdown/snippets/'.', '.
      \ $HOME.'/.vim/bundle/neosnippet/autoload/neosnippet/'

"for Vimshell.vim
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
" let g:vimshell_right_prompt = 'vcs#info("(%s)-[%b]", "(%s)-[%b|%a]")'
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

" Initialize execute file list.
let g:vimshell_execute_file_list = {}
call vimshell#set_execute_file('txt,vim,c,h,cpp,d,xml,java', 'vim')
let g:vimshell_execute_file_list['rb'] = 'ruby'
let g:vimshell_execute_file_list['pl'] = 'perl'
let g:vimshell_execute_file_list['py'] = 'python'
call vimshell#set_execute_file('html,xhtml', 'gexe firefox')

autocmd FileType vimshell
  \ call vimshell#altercmd#define('g', 'git')
  \| call vimshell#altercmd#define('i', 'iexe')
  \| call vimshell#altercmd#define('l', 'll')
  \| call vimshell#altercmd#define('ll', 'ls -l')
  \| call vimshell#hook#add('chpwd', 'my_chpwd', 'g:my_chpwd')

function! g:my_chpwd(args, context)
  call vimshell#execute('ls')
endfunction

autocmd FileType int-* call s:interactive_settings()
function! s:interactive_settings()
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

" for unite-git-conflict
noremap <silent>[unite]gc :<C-u>Unite git-conflict<CR>

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
let g:gist_show_privates = 1
let g:gist_detect_filetype = 1
" let g:gist_open_browser_after_post = 1
let g:gist_get_multiplefile = 1

" for ZenCoding.vim
let g:user_emmet_settings = {
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
let g:use_emmet_complete_tag = 1

" for Nerd-Tree
nmap <Space>t :NERDTreeToggle<CR>
nmap <Space>T :NERDTree<CR>
let g:NERDTreeHijackNetrw = 0
"for vim-coffee-script
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
let coffee_make_options = '--bare'

" for quickrun.vim
let g:quickrun_config = {}
let g:quickrun_config['coffee'] = {'command' : 'coffee', 'exec' : ['%c -cbp %s']}
" if executable('mark')
  let g:quickrun_config['markdown'] = {
  \ 'outputter' : 'null',
  \ 'command'   : 'open',
  \ 'cmdopt'    : '-a',
  \ 'args'      : 'Marked',
  \ 'exec'      : '%c %o %a %s',
  \ }
" else
"   let g:quickrun_config['markdown'] = {'command' : 'bluecloth', 'exec' : ['%c -f %s']}
" endif

" for simplenote.vim
if filereadable(expand('~/.simplenoterc'))
  source ~/.simplenoterc
endif

" for tagbar.vim
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/Applications/MacVim.app/Contents/MacOS/ctags'
let g:tagbar_type_markdown = {
  \ 'ctagstype' : 'markdown',
  \ 'kinds' : [
    \ 'h:Heading_L1',
    \ 'i:Heading_L2',
    \ 'k:Heading_L3'
  \ ]
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
  let g:redmine_browser = 'open -a /Applications/Google\ Chrome.app'
endif

" choice javascript linter for vim-syntastic
let g:syntastic_javascript_checkers = ['jshint', 'jslint']

" for loga-vim
let g:loga_delimiter = '(//)'

" for qfixgrep
set runtimepath+=$HOME/.vim/bundle/qfixgrep

" for ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_buftag_types = {'erlang'     : '--language-force=erlang --erlang-types=drmf' }

" for dash.vim
nmap <silent> <leader>d <Plug>DashSearch

" for vim-gitgutter
" turn off by default
let g:gitgutter_enabled = 0
noremap ,gg :GitGutterToggle<CR>
noremap ,gn :GitGutterNextHunk<CR>
noremap ,gp :GitGutterPrevHunk<CR>

" for vim-jsdoc
let g:jsdoc_additional_descriptions = 1
if !hasmapto('<Plug>(jsdoc)')
  nmap <silent> ,d <Plug>(jsdoc)
endif

" for neco-look
if !exists('g:neocomplete#text_mode_filetypes')
    let g:neocomplete#text_mode_filetypes = {}
endif
let g:neocomplete#text_mode_filetypes = {
  \ 'rst': 1,
  \ 'markdown': 1,
  \ 'gitrebase': 1,
  \ 'gitcommit': 1,
  \ 'vcs-commit': 1,
  \ 'hybrid': 1,
  \ 'text': 1,
  \ 'help': 1,
  \ 'tex': 1,
\ }

" for tern_for_vim
nnoremap ,td :TernDef<CR>
nnoremap ,tdp :TernDefPreview<CR>
nnoremap ,tr :TernRefs<CR>
nnoremap ,tdo :TernDoc<CR>
nnoremap ,tre :TernRename<CR>
nnoremap ,tt :TernType<CR>

" for tmux-powerline connect
" via: http://yonchu.hatenablog.com/entry/2013/05/05/171925
if exists('$TMUX')
  autocmd BufEnter * call <SID>set_vim_cwd_to_tmux()
  autocmd VimLeave * call <SID>del_vim_cwd_from_tmux()
endif

function! s:set_vim_cwd_to_tmux()
  if !exists('$TMUX')
    return
  endif

  let pain_id = system('tmux display -p "#D" | tr -d "%" | tr -d $"\n"')
  call system('tmux setenv ' . "TMUX_VIM_CWD_" . pain_id . ' ' . getcwd())

  let bt = &buftype
  let ft = &filetype
  " let bn = bufname('%')
  if bt ==# 'nofile'
        \ || ft ==# 'gitcommit' || ft ==# 'git-status' || ft ==# 'git-log'
        \ || ft ==# 'qf' || ft ==# 'gitcommit' || ft ==# 'quickrun'
        \ || ft ==# 'qfreplace' || ft ==# 'ref' || ft ==# 'vcs-commit'
        \ || ft ==# 'vcs-status'
    let pwd = getcwd()
  else
    let pwd = expand('%:p:h')
  endif

  let var_name = system('tmux display -p "TMUXPWD_#D" | tr -d "%" | tr -d $"\n"')
  call system('tmux setenv ' . var_name . ' ' . shellescape(pwd))
endfunction

function! s:del_vim_cwd_from_tmux()
  if !exists('$TMUX')
    return
  endif
  let var_name = system('tmux display -p "TMUX_VIM_CWD_#D" | tr -d "%" | tr -d $"\n"')
  call system('tmux setenv -u ' . var_name)
endfunction

" for vim-airline
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" old-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline#extensions#branch#symbol = '⭠'
let g:airline_readonly_symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'

" for vim-anzu
" mapping
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
nmap <Leader>j <Plug>(anzu-jump)<Plug>(anzu-echo-search-status)
" clear status
nmap <silent> <ESC><ESC> :<C-u>nohlsearch<CR><Plug>(anzu-clear-search-status)
let g:anzu_status_format = "%p(%i/%l)"
