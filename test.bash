#!/bin/bash
# SPDX-FilecopyrightText: 2024 Katsumi Sunahara
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo "${1}行目が違うよ"
	res=1
}

res=0

# 正常な入力
out=$(echo 5 | ./kaijou)
expected="5 の階乗の120"
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(echo 0 | ./kaijou)
expected="0 の階乗の1"
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(echo 1 | ./kaijou)
expected="1 の階乗の1"
[ "$out" = "$expected" ] || ng "$LINENO"

#異常な入力
out=$(echo -3 | ./kaijou)
expected="負の数には階乗の定義がありません。"
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(echo "" | ./kaijou)
expected="整数を入力してください。"
[ "$out" = "$expected" ] || ng "$LINENO"

#テストの結果出力
[ "$res" = 0 ] && echo "OK" || echo "NG"

exit $res
