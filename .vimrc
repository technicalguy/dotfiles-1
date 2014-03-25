" Setting for NeoBunndle
filetype off
if has('vim_starting')
  set nocompatible

  " required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" required:
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" required:
NeoBundleFetch 'Shougo/neobundle.vim'

" install bundles
NeoBundle 'Align'
NeoBundle 'AndrewRadev/vim-coffee-script'
NeoBundle 'Glench/Vim-Jinja2-Syntax'
NeoBundle 'JulesWang/css.vim'
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'RubySinatra'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neomru.vim', { 'depends': [ 'Shougo/unite.vim' ] }
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite-outline', { 'depends' : [ 'Shougo/unite.vim' ] }
NeoBundle 'Shougo/unite.vim', { 'depends' : [ 'Shougo/vimproc.vim' ] }
NeoBundle 'Shougo/vimfiler.vim', { 'depends': [ 'Shougo/unite.vim' ] }
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'mingw32-make -f make_mingw32.mak',
      \     'cygwin'  : 'make -f make_cygwin.mak',
      \     'mac'     : 'make -f make_mac.mak',
      \     'unix'    : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Simple-Javascript-Indenter'
NeoBundle 'The-NERD-tree'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'Wombat'
NeoBundle 'ack.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'bling/vim-airline'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'chaquotay/ftl-vim-syntax'
NeoBundle 'css_color.vim'
NeoBundle 'csscomb/csscomb-for-vim'
NeoBundle 'daisuzu/translategoogle.vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'dyng/ctrlsf.vim'
NeoBundle 'elzr/vim-json'
NeoBundle 'express.vim'
NeoBundle 'fuenor/qfixgrep'
NeoBundle 'gcmt/wildfire.vim'
NeoBundle 'glidenote/memolist.vim', { 'depends': [ 'Shougo/unite.vim' ] }
NeoBundle 'gregsexton/gitv'
NeoBundle 'groenewege/vim-less'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'heavenshell/vim-jsdoc'
NeoBundle 'hokaccha/vim-html5validator'
NeoBundle 'honza/vim-snippets'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'jQuery'
NeoBundle 'jade.vim'
NeoBundle 'jaxbot/github-issues.vim'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'kakkyz81/evervim'
NeoBundle 'kevinw/pyflakes-vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'malclocke/vim-buster'
NeoBundle 'marijnh/tern_for_vim', {
      \   'build': {
      \     'others': 'npm install'
      \   }
      \ }
NeoBundle 'matchit.zip'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mattn/excitetranslate-vim'
NeoBundle 'mattn/gist-vim', { 'depends' : [ 'mattn/webapi-vim' ] }
NeoBundle 'mattn/learn-vimscript'
NeoBundle 'mattn/qiita-vim', { 'depends' : [ 'mattn/webapi-vim' ] }
NeoBundle 'mattn/unite-gist', { 'depends': [ 'Shougo/unite.vim', 'mattn/gist-vim' ] }
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mfumi/ref-dicts-en'
NeoBundle 'mikewest/vimroom'
NeoBundle 'mklabs/grunt.vim'
NeoBundle 'mojako/ref-sources.vim'
NeoBundle 'moll/vim-node'
NeoBundle 'molokai'
NeoBundle 'moznion/hateblo.vim', { 'depends': ['mattn/webapi-vim', 'Shougo/unite.vim'] }
NeoBundle 'moznion/unite-git-conflict.vim', { 'depends' : [ 'Shougo/unite.vim' ] }
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'newspaper.vim'
NeoBundle 'osyo-manga/vim-anzu'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'othree/html5.vim'
NeoBundle 'pekepeke/titanium-vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'proton'
NeoBundle 'pyte'
NeoBundle 'rainbow.zip'
NeoBundle 'rizzatti/dash.vim'
NeoBundle 'rizzatti/funcoo.vim'
NeoBundle 'ropez/jasmine.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'str2numchar.vim'
NeoBundle 'sudo.vim'
NeoBundle 'supermomonga/vimshell-pure.vim', { 'depends' : [ 'Shougo/vimshell.vim' ] }
NeoBundle 't9md/vim-choosewin'
NeoBundle 't9md/vim-unite-ack', { 'depends' : [ 'Shougo/vimproc.vim' ] }
NeoBundle 'tacahiroy/ctrlp-funky', { 'depends' : [ 'kien/ctrlp.vim'] }
NeoBundle 'tacahiroy/vim-logaling'
NeoBundle 'thinca/vim-auto_source'
NeoBundle 'thinca/vim-portal'
NeoBundle 'thinca/vim-qfreplace'
NeoBundle 'thinca/vim-quickrun', { 'depends' : [ 'Shougo/vimproc.vim' ] }
NeoBundle 'thinca/vim-ref'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tsukkee/unite-tag', { 'depends' : [ 'Shougo/vimproc.vim' ] }
NeoBundle 'tyru/caw.vim'
NeoBundle 'tyru/open-browser-github.vim', { 'depends' : [ 'tyru/open-browser.vim' ] }
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'tyru/skk.vim'
NeoBundle 'ujihisa/neco-look', { 'depends' : [ 'Shougo/neocomplete.vim' ] }
NeoBundle 'unicode.vim'
NeoBundle 'unite-colorscheme', { 'depends' : [ 'Shougo/vimproc.vim' ] }
NeoBundle 'unite-font', { 'depends' : [ 'Shougo/vimproc.vim' ] }
NeoBundle 'vcscommand.vim'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'yuratomo/w3m.vim'
filetype plugin indent on
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" PATHの設定
if has('gui_running')
  let $PATH = '$HOME/.cabal/bin:$HOME/.rbenv/shims/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:' . $PATH
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
if exists('&ambiwidth')
  set ambiwidth=double
endif

" 全角スペースをハイライト
" if has("syntax")
"   syntax on
"   function! ActivateInvisibleIndicator()
"     syntax match InvisibleJISX0208Space "　" display containedin=ALL
"     highlight InvisibleJISX0208Space term=underline ctermbg=Cyan guibg=Cyan
"     syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
"     highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=Red
"     syntax match InvisibleTab "\t" display containedin=ALL
"     highlight InvisibleTab term=underline ctermbg=Cyan guibg=Cyan
"   endf
"   augroup invisible
"     autocmd! invisible
"     autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
"   augroup END
" endif

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
autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mark*} set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" .pyでタブ幅を変更・スペースでインデントに変更
au BufNewFile,BufRead *.py setlocal tabstop=8 shiftwidth=4 softtabstop=4 et si cinwords=if,elif,else,for,while,try,except,finally,def,class

"javascript tab
au BufNewFile,BufRead *.js set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" for ftl syntax
au BufRead,BufNewFile *.ftl set filetype=ftl

"for skk.vim
let skk_jisyo = "~/Library/Application\ Support/AquaSKK/skk-jisyo.utf8"
let skk_large_jisyo = "~/Library/Application\ Support/AquaSKK/SKK-JISYO.L"
let g:skk_auto_save_jisyo = 1
let g:skk_remap_lang_mode = 1
" let g:skk_kutouten_type = "en"

" str2numcharキーマップ設定
vmap <silent> sn :Str2NumChar<CR>
vmap <silent> sh :Str2HexLiteral<CR>

" for yankround
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nnoremap <silent><SID>(ctrlp) :<C-u>CtrlP<CR>
nmap <expr><C-p> yankround#is_active() ? "\<Plug>(yankround-prev)" : "<SID>(ctrlp)"
nmap <C-n> <Plug>(yankround-next)

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
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal omnifunc=jedi#completions
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
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'

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
      \ $HOME.'/.vim/bundle/neosnippet-snippets/neosnippets/'

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
nmap    <Leader>f [unite]

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
nmap <Leader>t :NERDTreeToggle<CR>
nmap <Leader>T :NERDTree<CR>
let g:NERDTreeHijackNetrw = 0
"for vim-coffee-script
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
let coffee_make_options = '--bare'

" for quickrun.vim
let g:quickrun_config = {}
let g:quickrun_config['*'] =  {'runner': 'vimproc', 'runner/vimproc/updatetime' : 10}
let g:quickrun_config['coffee'] = {'command' : 'coffee', 'exec' : ['%c -cbp %s']}
" if executable('mark')
  let g:quickrun_config['mkd'] = {
  \ 'outputter' : 'null',
  \ 'command'   : 'open',
  \ 'cmdopt'    : '-a',
  \ 'args'      : 'Marked',
  \ 'exec'      : '%c %o %a %s',
  \ }
" else
"   let g:quickrun_config['markdown'] = {'command' : 'bluecloth', 'exec' : ['%c -f %s']}
" endif

" for evervim
if filereadable(expand('~/Dropbox/.evervim.vim'))
  source ~/Dropbox/.evervim.vim
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
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '--include-vars',
        \ 'kinds' : [
          \ 'f:functions',
          \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
          \ 'f' : 'object',
          \ 'o' : 'object',
        \ }
      \ }
else
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
endif

" for memolist.vim
let g:memolist_qfixgrep = 1
let g:memolist_memo_suffix = "md"
let g:memolist_template_dir_path = "~/.vim/template/memolist"
let g:memolist_path = "~/Dropbox/memo"
let g:memolist_vimfiler = 0
let g:memolist_prompt_tags = 1
let g:memolist_prompt_categories = 1
map <Leader>ml  :MemoList<CR>
map <Leader>mn  :MemoNew<CR>
map <Leader>mg  :MemoGrep<CR>
let g:memolist_unite = 1
let g:memolist_unite_source = "file_rec"
let g:memolist_unite_option = "-start-insert"

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

" for vim-syntastic
let g:syntastic_javascript_checkers = ['jshint', 'jslint']
let g:syntastic_python_checkers = ['flake8']

" for loga-vim
let g:loga_delimiter = '(//)'

" for qfixgrep
set runtimepath+=$HOME/.vim/bundle/qfixgrep

" for ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1
let g:ctrlp_mruf_exclude = '/private/.*\|/var/.*\|/tmp/.*\|/temp/.*'
let g:ctrlp_mruf_relative = 1
let g:ctrlp_prompt_mappings = { 'ToggleMRURelative()': ['<F8>'] }
let g:ctrlp_extensions = [ 'tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir',
                          \ 'yankround', 'funky' ]
let g:ctrlp_buftag_types = {'erlang'     : '--language-force=erlang --erlang-types=drmf' }

" for dash.vim
nmap <silent> <leader>d <Plug>DashSearch

" for vim-gitgutter
" turn off by default
let g:gitgutter_enabled = 0
noremap <Leader>gg :GitGutterToggle<CR>
noremap <Leader>gn :GitGutterNextHunk<CR>
noremap <Leader>gp :GitGutterPrevHunk<CR>

" for vim-jsdoc
let g:jsdoc_additional_descriptions = 1
if !hasmapto('<Plug>(jsdoc)')
  nmap <silent> <Space>jd <Plug>(jsdoc)
endif

" for neco-look
if !exists('g:neocomplete#text_mode_filetypes')
    let g:neocomplete#text_mode_filetypes = {}
endif
let g:neocomplete#text_mode_filetypes = {
  \ 'rst': 1,
  \ 'markdown': 1,
  \ 'mkd': 1,
  \ 'gitrebase': 1,
  \ 'gitcommit': 1,
  \ 'vcs-commit': 1,
  \ 'hybrid': 1,
  \ 'text': 1,
  \ 'help': 1,
  \ 'tex': 1,
\ }

" for tern_for_vim
nnoremap <Space>td :TernDef<CR>
nnoremap <Space>tdp :TernDefPreview<CR>
nnoremap <Space>tr :TernRefs<CR>
nnoremap <Space>tdo :TernDoc<CR>
nnoremap <Space>tre :TernRename<CR>
nnoremap <Space>tt :TernType<CR>

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

" for jedi-vim
let g:jedi#auto_vim_configuration = 0
let g:jedi#rename_command = '<Leader>R'

" for vim-mode(mustache/handlebars)
let g:mustache_abbreviations = 1

" for vim-choosewin
" mapping
nmap  -  <Plug>(choosewin)
" use overlay
let g:choosewin_overlay_enable = 1
" clear overlay multibyte
let g:choosewin_overlay_clear_multibyte = 1
" color looks like tmux
let g:choosewin_color_overlay = {
      \ 'gui': ['DodgerBlue3', 'DodgerBlue3' ],
      \ 'cterm': [ 25, 25 ]
      \ }
let g:choosewin_color_overlay_current = {
      \ 'gui': ['firebrick1', 'firebrick1' ],
      \ 'cterm': [ 124, 124 ]
      \ }

" for vim-markdown
let g:vim_markdown_folding_disabled=1

" for ctrlsf.vim
let g:ctrlsf_ackprg = 'ack'

" for github-issues.vim
if filereadable(expand('~/Dropbox/.github-issues.vim'))
  source ~/Dropbox/.github-issues.vim
endif

