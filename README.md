# 階乗のコマンド
[![test](https://github.com/aruitemasu/kadai01/actions/workflows/test.yml/badge.svg)](https://github.com/aruitemasu/kadai01/actions/workflows/test.yml)

このリポジトリは、階乗計算のプログラムになります。入力された整数の階乗を計算して、その結果が表示されます。異常な入力にもエラーメッセージが表示されます。その他にも動作確認のテストスクリプトtest.bashも含まれています。

# 機能

- 入力された数値を計算します。
- 負の数が入力された時、適切なエラーメッセージが表示されます。
- 整数以外を入力した時もエラーメッセージが表示します。

# 必要なソフトウェア
- python

 - テスト済みバージョン: 3.7~3.11

# 動作環境
- Ubuntu 20.04

# ファイルの構成

- ```kaijou```:階乗を計算するためのPythonスクリプト
- ```test.bash```:```kaijou```スクリプトの動作確認をするテストスクリプト

# インストールとセットアップ

- 1.このリポジトリをクローンします。

```git clone https://github.com/aruitemasu/kadai01.git```

- 2.robotkadai01のディレクトリに移動してから./kaijouを実行してください。

```cd robotkadai01```

- 3.スクリプトの実行権限

```chmod +x kaijou```

```chmod +x test.bash```

# 使用方法

プログラムの動作

- 1.適切な入力

直接実行するkaijouスクリプトを使用して階乗を計算するには、標準入力から数値を計算します。

```echo <整数> | ./kaijou```

例

```echo 5 | ./kaijou
5 の階乗は 120```

- 2.異常な入力

整数以外のものを入力をした場合、エラーメッセージが表示されます。

例

```echo -3 | ./kaijou
負の数には階乗の定義がありません。```

```echo kanji | ./kaijou
整数を入力してください。```

# 動作確認のテスト

```test.bash```を使用して、```kaijou```のスクリプトが正しく動作しているか確認します。

```./test.bash
OK```

# ライセンスと著作権

このソフトウェアパッケージは3条項BSDライセンスの下、再頒布および使用が許可されています。

© 2024 Katsumi Sunahara
