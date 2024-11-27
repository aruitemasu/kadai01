#!/bin/bash -xv

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###
out=$(seq 5 | ./kaijou.py)
[ "${out}" = 15 ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo あ | ./kaijou.py)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./kaijou.py)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
