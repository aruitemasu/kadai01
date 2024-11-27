# 階乗計算のコマンド

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

- © 2024 Katsumi Sunahara

##使用方法

1.このリポジトリをクローンします。
git clone
https://github.com/aruitemasu/kadai01.git
cd robotkadai01

2.スクリプトの実行
python3 kaijou.py

3.プログラムの動作 例:
階乗を計算する数を入れてください: 5
5 の階乗は 120 です。

##サンプルコード
以下は、このリポジトリのkaijou.pyスクリプトのサンプルコードです。

#!/usr/bin/python3


def factorial(n):
    if n < 0:
        return "負の数には階乗の定義がありません。"
    elif n == 0 or n == 1:
        return 1
    else:
        result = 1
        for i in range(2, n + 1):
            result *= i
        return result

#自分の手で入力する
try:
    number = int(input("階乗の計算する数を入れてください:"))
    print(f"{number} の階乗は{factorial(number)}")
except ValueError:
    print("整数を入力してください。")

##エラー処理

負の数を入力した場合
階乗を計算する数を入れてください: -3
-3 の階乗の負の数には階乗の定義がありません。

整数以外を入力した場合
階乗を計算する数を入力してください: abc
整数を入力してください

##ライセンス

