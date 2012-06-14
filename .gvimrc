set sessionoptions+=resize,tabpages,winsize,curdir	 " 行・列を設定する
set lines=999
set columns=115
set cmdheight=1            " コマンドラインの高さ
set previewheight=5        " プレビューウィンドウの高さ
set guioptions-=T	"ツールバーを非表示
" コマンドをステータスラインに表示する
set showcmd
set fuopt+=maxhorz
"色系の指定=======================================
"とりあえずscheme指定でザックリ指定
set background=dark
colorscheme molokai
syntax on
"透明度の設定
set transparency=25
"vi互換の動きにしない
set nocompatible
"行番号を表示
set number
"対応括弧の強調は0.3秒
set matchtime=3

" font settings for vim-powerline
set guifont=Ricty_for_Powerline:h14
set guifontwide=Ricty:h14
