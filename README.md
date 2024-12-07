# robosys2024
授業ファイル
# 概要
入力した文字や文章などから自ら指定した文字を削除し，空白に置換するプログラムである．
# インストール方法
以下のコマンドを入力し，クローンを行う．
```
$ git clone https://github.com/assamansaas/robosys2024.git
```
# 使用方法
まず，以下のコマンドを入力し，ディレクトリを移動する．
```
$ cd robosys2024
```
次に，実行権限付与するために以下のコードを入力する．
```
$ chmod +x remove
```
最後に以下の方法の内どちらかを選んで実行する
### 使用方法1
```
$ ./remove "lo"
hello world

```
CtrlDで入力を終了する
### 使用方法2
```
$ echo "hello world" | ./remove "lo" 
```
# 実行例
- 一種類の文字を削除する場合の実行例
```
$ echo "hello world" | ./remove "l"
```
- 実行結果
```
he  o wor d
```
- 二種類以上の文字を削除する場合の実行例
```
$ echo "hello world" | ./remove "lod"
```
- 実行結果
```
he    w r
```
- 記号が与えられた場合の実行例
```
$ echo '!\(^@^)/!' | ./remove '!@()'
```
- 実行結果
```
 \ ^ ^ / 
```
- 文字を何も削除しない場合
```
$ echo "hello world" | ./remove ""
```
- 実行結果
```
hello world
```
# 必要なソフトウェア
- Python
    - テスト済みバージョン: 3.7~3.10 
# テスト環境
- GitHub Actions
	- Ubuntu 20.04 LTS
# 参考文献
- https://python.19633.com/ja/Python/1010008164.html
- https://docs.python.org/3/library/re.html
- https://docs.python.org/3/library/sys.html
- https://docs.python.org/3/tutorial/
- https://machinelearningtutorials.org/python-re-sub-function-performing-string-replacement-with-regular-expressions-with-examples/
- https://qiita.com/Canard_engineer_c_cpp/items/81ce4e53881138dbf37f
# ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda) のものを，本人の許可を得て自身の著作としたものです．
	- https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024
- © 2024 Masahiro Yasui
