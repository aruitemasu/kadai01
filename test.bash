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
exp="5 の階乗は120"
[ "$out" = "$exp" ] || ng "$LINENO"

out=$(echo 0 | ./kaijou)
exp="0 の階乗は1"
[ "$out" = "$exp" ] || ng "$LINENO"

out=$(echo 1 | ./kaijou)
exp="1 の階乗は1"
[ "$out" = "$exp" ] || ng "$LINENO"

#異常な入力
out=$(echo -3 | ./kaijou)
exp="負の数には階乗の定義がありません。"
[ "$out" = "$exp" ] || ng "$LINENO"

out=$(echo "" | ./kaijou)
exp="整数を入力してください。"
[ "$out" = "$exp" ] || ng "$LINENO"

#テストの結果出力
[ "$res" = 0 ] && echo "OK" || echo "NG"

exit $res
