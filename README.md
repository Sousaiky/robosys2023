## robosys2023
 
* このソフトウェアパッケージは、三条項BSDライセンスの下、再配布および使用が許可されます。    
* 千葉工業大学先進工学部未来ロボティクス学科のロボットシステム学で作成したレポジトリ  
* このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）の物を、本人の許可を得て自身の著作とし,いくつかの機能を追加したものです。
* [ ryuichiueda/my_slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

## plus コマンド

![test](https://github.com/Sousaiky/robosys2023/actions/workflows/test.yml/badge.svg)

* 標準入力から与えられた数字を1から足す  
* 例：入力が5なら1から５までを足す  
* テストの結果は問題なく動作

## 導入方法

* 下記のコマンドを実行  
$ git clone https://github.com/sousaiky/robosys2023.git 

## 特徴

* seqと数字の間に空白があっても数字がちゃんと認識できる

## 使い方

```
seq 5 | ./plus   
         15  
         奇数です

seq        5 | ./plus
         15
         奇数です  
  
seq 5 | sed 's/$/.0.1' | ./plus      
         15.5  
         偶数でも奇数でもない  
```

## 必要なソフトウェア

* Python  
  * テスト済み: 3.7~3.10  

## テスト環境

* Ubuntu 20.03

* ©2023 Soshi Saiki
