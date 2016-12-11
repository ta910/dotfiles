# Vim Surround

## 使い方


### Normalモード


#### 文字列を囲む


ex) hoge hoge hoge

```vim
# yss)
=>( hoge hoge hoge )

```

#### 囲んでいる文字を置換する

ex) "hoge hoge hoge"

```vim
ds"
=> hoge hoge hoge

```

#### 囲んでいるタグを削除

ex) <div>Hello World</div>

```vim
dst
=> Hello World
```


#### 囲んでいるタグを置換

ex) <div>Hello World</div>


```vim
cst<span>
=> <span>Hello World</span>
```


### Visualモード

#### 選択部分を囲む
ex) hoge hoge hoge

```vim
S'
=> 'hoge h'oge hoge
```

#### 選択部分をタグで囲んでインデントする

ex) <h1>title</h1>

```html
V(visual block) + S<p class="important"> 
<p class="important">

  <div>Hello World</div>
</p>
```

```html 

```
