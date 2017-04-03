"=== Indent
set autoindent          "改行時に前の行のインデントを計測
set smartindent         "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set cindent             "Cプログラムファイルの自動インデントを始める
set smarttab            "新しい行を作った時に高度な自動インデントを行う
set expandtab           "タブ入力を複数の空白に置き換える

"ファイルタイプの検索を有効にする
filetype plugin on
"ファイルタイプに合わせたインデントを利用
filetype indent on

augroup fileTypeIndent
  autocmd!
  autocmd BufRead,BufNewFile *.html setf html
  autocmd BufRead,BufNewFile *.css setf css
  autocmd BufRead,BufNewFile *.scss setf scss
  autocmd BufRead,BufNewFile *.zsh setf zsh
  autocmd BufRead,BufNewFile *.js setf js
  autocmd BufRead,BufNewFile *.java setf java
  autocmd BufRead,BufNewFile *.json setf json
  autocmd BufRead,BufNewFile *.vim setf vim
  autocmd BufRead,BufNewFile *.go setf go
  autocmd BufRead,BufNewFile *.py setf python
  autocmd BufRead,BufNewFile *.rb setf ruby
  autocmd BufRead,BufNewFile *.c setf c
  autocmd BufRead,BufNewFile *.sh setf sh
augroup END
