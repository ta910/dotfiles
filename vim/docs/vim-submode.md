# kana/vim-submode

## What
連続で入力を可能にするプラグイン
etc) ウィンドウサイズなど

## 使い方

### call submodee#enter_with(1, 2, 3, 4)
enter_with) でサブモードに入るための

- 第１引数: 寒モードの名前
- 第２引数: n=Normal mode, i=Insert mode(複数指定可能)
- 第３引数: ampのオプションで, b=e=といった具合
- 第４引数: mapの {lhs} * 左辺
- 第５引数: mapの {rhs} * 右辺

- submode#map(): サブモード中に使えるキーマッピング

