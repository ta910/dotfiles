"=== Basic Setting
" disable default plugins
let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1
let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_LogiPat           = 1
let g:loaded_logipat           = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_man               = 1

" encoding
set encoding=utf-8
scriptencoding utf-8

let mapleader = ","     " キーマップリーダー
set number              " 行番号を表示
set title               " 編集中のファイル名を表示
set mouse=a             " 全てのモードで有効
set ttymouse=xterm2     " ターミナルエミュレータ
set ambiwidth=double
set showmatch           " 括弧入力時の対応する括弧を表示
set matchtime=1         " カーソルが飛ぶ時間 0.1秒
set ruler               " カーソルの位置表示
set clipboard=unnamed,autoselect
set backspace=indent,eol,start "バックスペース使用可能
set nowrap              "折り返ししない
set virtualedit=block
set noswapfile          "スワップファイル作らない

set expandtab           "タブ入力を複数の空hバク入力に置き換える
set smarttab            "新しい行を作った時に高度な自動インデントを行う
"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent          "改行時に前の行のインデントを計測
set smartindent         "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

set hlsearch            "検索結果ハイライト
set pumheight=10        "補完ポップアップの高さ

set re=0                "軽くなるらしい
set statusline=2        "ステータルラインの表示
set synmaxcol=1200       "一行でハイライトする文字数
" yank use system clipboard
set clipboard=unnamed
set tags=./tags;

set imdisable
" スワップファイルファイルの設定(Readonly)
augroup swapchoice-readonly
  autocmd!
  autocmd SwapExists * let v:swapchoice = 'o'
augroup END
" 行末の余分なスペース削除
autocmd BufWritePre * :%s/\s\+$//ge
autocmd BufEnter * if &ft !~ '^nerdtree$' | silent! cd %:p:h | endif

"カレンドディレクトリ設定(自動的に開いたファイルのディレクトリに移動)
if exists('+autochdir')
  set autochdir
endif
set visualbell
set visualbell t_vb=
set noerrorbells
