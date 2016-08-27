# ctrlpvim/ctrlp

## What
名前の通り ctrl+p でディレクトリ内のファイルを検索するplugin

## 使い方

### 全般
|キーバインド|内容|
|:--|:--|
|Ctrl + p|CtrlPを起動|
|Ctrl + c, ESCp|CtrlPを終了|
|Ctrl + d|フルパス検索モードとファイル名のみの検索モードを切り替え|
|Ctrl + r|正規表現検索モードと通常の検索モードの切り替え|
|Ctrl + f, Ctrl + b|検索対象を切り替え|

### コマンドラインでの操作 

|キーバインド|内容|
|:--|:--|
|Ctrl + u|コマンドラインをクリア|
|Ctrl + n, Ctrl + p|コマンド入力履歴をたどる|

### ファイル操作

|キーバインド|内容|
|:--|:--|
|Enter|現在のウィンドウで開く|
|Ctrl + v|垂直分割して開く|
|Ctrl + s|水平分割して開く|
|Ctrl + y|新しいファイルを現在のディレクトリに作成|


### 拡張

|キーバインド|コマンド|内容|
|:--|:--|:--|
|sa|CtrlP|ファイル検索|
|sb|CtrlPBuffer|バッファセレクたとして使える|
|sd|CtrlPDir|ディレクトリを検索してカレントディレクトリを切り替える|
|sl|CtrlPLine|現在のファイル内の各行を対象に絞り込める|
|sm|CtrlPMRUFiles|これまで開いたファイル履歴から絞り込みます。|
|ss|CtrlPMixed|バッファセレクタとして使える|
|st|CtrlPTag|タグ一覧を表示|
|sq|CtrlPQuickfix|タvimのquickfixと連携|

