" Vundleの設定
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()
Bundle 'Shougo/neocomplcache' 
Bundle 'Shougo/vimshell' 
Bundle 'Shougo/vimproc' 
Bundle 'Shougo/vimfiler' 
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'
Bundle 'taglist.vim'
Bundle 'matchit.zip'
Bundle 'skk.vim'
Bundle 'surround.vim'
Bundle 'vcscommand.vim'
Bundle 'YankRing.vim'
Bundle 'ZenCoding.vim'
Bundle 'jQuery'
Bundle 'Simple-Javascript-Indenter'
Bundle 'css.vim--Streppone'
Bundle 'css3'
Bundle 'JSON.vim'
Bundle 'html5.vim'
Bundle 'EnhCommentify.vim'
Bundle 'unicode.vim'
Bundle 'RubySinatra'
Bundle 'Javascript-syntax-with-Ajax-Support'
Bundle 'pep8'
Bundle 'w3cvalidator'
Bundle 'basyura/jslint.vim'
Bundle 'tidy'
Bundle 'fugitive.vim'
Bundle 'motemen/hatena-vim'
Bundle 'Gist.vim'
Bundle 'vim-coffee-script'
Bundle 'AutoClose'
Bundle 'hallison/vim-markdown'
Bundle 'thinca/vim-ref'
Bundle 'pekepeke/titanium-vim'
Bundle 'SudoEdit.vim'
Bundle 'matchit.zip'
Bundle 'Solarized'
Bundle 'Wombat'
Bundle 'newspaper.vim'
Bundle 'pyte'
Bundle 'molokai'
Bundle 'unite-font'
Bundle 'unite-colorscheme'
Bundle 'Indent-Guides'
Bundle 'Align'
Bundle 'proton'
Bundle 'str2numchar.vim'
Bundle 'jade.vim'
Bundle 'express.vim'
filetype plugin indent on

set sessionoptions+=resize,tabpages " 行・列を設定する
" ステータスライン
set laststatus=2 " 常にステータスラインを表示
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%{fugitive#statusline()}%=%4v(ASCII=%03.3b,HEX=%02.2B)\ %l/%L(%P)%m
" コマンドをステータスラインに表示する
set showcmd
set cmdheight=1            " コマンドラインの高さ
"色系の指定=======================================
"とりあえずscheme指定でザックリ指定
set t_Co=256
set background=dark
colorscheme molokai
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
set listchars=tab:>-,extends:<,trail:-,eol:<
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
set clipboard+=unnamed

"バッファ関連
"編集中でもバッファを切り替えれるようにしておく
set hidden

"ルーラーを表示
set ruler
set title

" highlightサーチをEsc2回で消去
nnoremap <Esc><Esc> :nohlsearch<CR>

"バックアップの場所
set backupdir=~/Documents/vimbackup
"swpファイルの場所
set directory=~/Documents/vimbackup

"コマンドラインをtcshスタイルに
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

" let $PERL_DLL = "/opt/local/lib/perl5/5.10.0/darwin-2level/CORE/libperl.dylib"
" let $PYTHON_DLL = "/opt/local/lib/libpython2.6.dylib"
" let $RUBY_DLL = "/opt/local/lib/libruby.dylib"

augroup BufferAu
	autocmd!
	"カレントディレクトリを自動的に移動
	autocmd BufNewFile,BufRead,BufEnter * if isdirectory(expand("%:p:h")) && bufname("%") !~ "NERD_tree" | cd %:p:h | endif
augroup END

"タブ幅をリセット
au BufNewFile,BufRead * set tabstop=4 shiftwidth=4

".rhtmlと.rbと.ymlでタブ幅を変更
au BufNewFile,BufRead *.rhtml set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.rb set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.yml set tabstop=2 shiftwidth=2

"for jquery syntax
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

"for CSS3 syntax
au BufRead,BufNewFile *.css set ft=css syntax=css3 

"for JSON syntax
au! BufRead,BufNewFile *.json setfiletype json 

"for Markdown
autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mark*} set filetype=markdown

" .pyでタブ幅を変更・スペースでインデントに変更
au BufNewFile,BufRead *.py setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

"javascript tab
au BufNewFile,BufRead *.js set tabstop=4 shiftwidth=4

" HTML Tidy
autocmd FileType html :compiler tidy
autocmd FileType html :setlocal makeprg=tidy\ -raw\ -quiet\ -errors\ --gnu-emacs\ yes\ \"%\" 
autocmd FileType xhtml :compiler tidy
autocmd FileType xhtml :setlocal makeprg=tidy\ -raw\ -quiet\ -errors\ --gnu-emacs\ yes\ \"%\" 

" CSS tidy
autocmd FileType css :compiler css

"for skk.vim
let skk_jisyo = "~/Library/Application\ Support/AquaSKK/skk-jisyo.utf8"
let skk_large_jisyo = "~/Library/Application\ Support/AquaSKK/SKK-JISYO.L" 
let g:skk_auto_save_jisyo = 1
let g:skk_remap_lang_mode = 1

" str2numcharキーマップ設定
vmap <silent> sn :Str2NumChar<CR> 
vmap <silent> sh :Str2HexLiteral<CR> 

" yankring_historyのディレクトリ設定
let g:yankring_history_dir = '$VIM'

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
	\ 'scheme' : $HOME.'/.gosh_completions'
\ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
	let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

"Define snippets directory
let g:neocomplcache_snippets_dir = $HOME.'/.vim/snippets'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  (pumvisible() ? "\<C-y>":'') . "\<C-f>\<CR>X\<BS>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> pumvisible() ? neocomplcache#close_popup()."\<C-h>" : "\<C-h>"
inoremap <expr><BS> pumvisible() ? neocomplcache#close_popup()."\<C-h>" : "\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1
"inoremap <expr><CR>  (pumvisible() ? "\<C-e>":'') . (&indentexpr != '' ? "\<C-f>\<CR>X\<BS>":"\<CR>")
"inoremap <expr><C-h> pumvisible() ? neocomplcache#cancel_popup()."\<C-h>" : "\<C-h>"
"inoremap <expr><BS> pumvisible() ? neocomplcache#cancel_popup()."\<C-h>" : "\<C-h>"
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
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

"Enhancedcommentify.vim設定
let g:EnhCommentifyPretty = 'Yes'
let g:EnhCommentifyRespectIndent = 'Yes'
let g:EnhCommentifyMultiPartBlocks = 'yes'
let g:EnhCommentifyUseSyntax = 'yes'

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

"taglist.vim for javascript
let g:tlist_javascript_settings = 'javascript;c:class;m:method;f:function'

"unite.vim
" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Leader>f [unite]

nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir -buffer-name=files -prompt=%\  buffer file_mru bookmark file<CR>
nnoremap <silent> [unite]r  :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
nnoremap  [unite]f  :<C-u>Unite source<CR>

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
	" Overwrite settings.

	nmap <buffer> <ESC>      <Plug>(unite_exit)
	imap <buffer> jj      <Plug>(unite_insert_leave)
	"imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)

	" Start insert.
	"let g:unite_enable_start_insert = 1
endfunction"}}}

let g:unite_source_file_mru_limit = 200
let g:unite_cursor_line_highlight = 'TabLineSel'
let g:unite_abbr_highlight = 'TabLine'

" For optimize.
let g:unite_source_file_mru_filename_format = ''

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

" for Hatena.vim
set runtimepath+=$HOME/.vim/hatena
let g:hatena_user='Layzie'
" jslint.vim
function! s:javascript_filetype_settings()
	autocmd BufLeave     <buffer> call jslint#clear()
	autocmd BufWritePost <buffer> call jslint#check()
	autocmd CursorMoved  <buffer> call jslint#message()
endfunction
autocmd FileType javascript call s:javascript_filetype_settings()

" for indent-guideline
let g:indent_guides_enable_on_vim_startup = 1

" for Align
let g:Align_xstrlen = 3 "for Javanese String
let g:DrChipTopLvlMenu = '' "remove 'DrChip' menu
