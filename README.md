# 階乗のコマンド
[![test](https://github.com/aruitemasu/kadai01/actions/workflows/test.yml/badge.svg)](https://github.com/aruitemasu/kadai01/actions/workflows/test.yml)

このリポジトリは、pathonで書かれた階乗計算のプログラムを提供します。入力された整数の階乗の計算をして、その結果が表示されます。

##機能

- 入力された数値を計算します。
- 負の数が入力された時、適切なエラーメッセージが表示されます。
- 整数以外を入力した時もエラーを表示します。

##必要なソフトウェア
- python
   -テスト済みバージョン: 3.7~3.11

##動作環境
- Ubuntu 20.04 LST

##インストールとセットアップ

1.このリポジトリをクローンします。

git clone https://github.com/aruitemasu/kadai01.git
cd robotkadai01

2.スクリプトの実行権限
chmod +x kaijou
chmod +x test.bash

##使用方法

プログラムの動作

1.直接実行するkaijouスクリプトを使用して階乗を計算するには、標準入力から数値を渡します。
echo <整数> | ./kaijou
例
echo 5 | ./kaijou
出力
5 の階乗の 120

2.異常な入力
整数以外のものを入力をした場合、エラーメッセージが表示され、終了ステータスが1になります。
例
echo -3 | ./kaijou
出力
負の数には階乗の定義がありません。

##サンプルコード



##ライセンス

このソフトウェアパッケージは3条項BSDライセンスの下、再頒布および使用が許可されています。
