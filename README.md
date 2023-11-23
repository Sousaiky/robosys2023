# robosys2023
ロボットシステム学
与えられた数字を1から足す

# cit1 コマンド
![test](https://github.com/Sousaiky/robosys2023/actions/workflows/test.yml/badge.svg)

#特徴
seqと数字の間に空白があっても数字がちゃんと認識できる

## 使い方
seq 好きな整数 | ./cit1
1から好きな整数までを足す
小数点も含みたいときはseq 好きな整数 | sed 's/$/.それぞれの整数に足したい小数点以下の数字' | ./cit1
計算結果が偶数か奇数かを計算して表示する

## 必要なソフトウェア
* Python
  * テスト済み: 3.7~3.10

## テスト環境
* Ubuntu

#著者
齋木壯心
千葉工業大学先進工学部未来ロボティクス学科22C1050
sousaiky@yahoo.com

*このソフトウェアパッケージは、三条項BSDライセンスの下、再頒布および使用が許可されます。
*このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）の者を、本人の許可を得て自信の著作とし,いくつかの機能を追加したものです。
　*[ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys2022)
*©2023 Soshi Saiki
