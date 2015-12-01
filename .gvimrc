set sessionoptions+=resize,tabpages,winsize,curdir	 " 行・列を設定する
set lines=999
set columns=115
set cmdheight=1            " コマンドラインの高さ
set previewheight=5        " プレビューウィンドウの高さ
set guioptions-=T	"ツールバーを非表示

" hide menu
source $VIMRUNTIME/delmenu.vim

" コマンドをステータスラインに表示する
set showcmd
set fuopt+=maxhorz
"色系の指定=======================================
"とりあえずscheme指定でザックリ指定
set background=light
colorscheme solarized
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
set guifont=Inconsolata_for_Powerline:h18
set guifontwide=Ricty_Regular_for_Powerline:h18
