"=== Basic Setting

" encoding
set encoding=utf-8
scriptencoding utf-8

let mapleader = ","     " キーマップリーダー
set number              " 行番号を表示
set title               " 編集中のファイル名を表示
set mouse=a             " 全てのモードで有効
set ttymouse=xterm2     " ターミナルエミュレータ
set nocompatible        " vi互換をオフにする
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
set tabstop=2           "tabでの半角スペース
set shiftwidth=2        "自動インデントでずれる幅
set softtabstop=2
set smarttab            "新しい行を作った時に高度な自動インデントを行う
"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent          "改行時に前の行のインデントを計測
set smartindent         "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

set hlsearch            "検索結果ハイライト
set pumheight=10        "補完ポップアップの高さ

set vb t_vb=            "ビープ音消す
set re=0                "軽くなるらしい
set statusline=2        "ステータルラインの表示
set synmaxcol=150       "一行でハイライトする文字数


" スワップファイルファイルの設定(Readonly)
augroup swapchoice-readonly
  autocmd!
  autocmd SwapExists * let v:swapchoice = 'o'
augroup END
" 行末の余分なスペース削除
autocmd BufWritePre * :%s/\s\+$//ge
