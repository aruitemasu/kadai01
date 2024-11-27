#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Katsumi Sunahara
# SPDX-License-Identifier: BSD-3-Clause

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

# 自分の手で入力する
try:
    number = int(input("階乗を計算する数を入れてください:"))
    print(f"{number} の階乗の{factorial(number)}")
except ValueError:
    print("整数を入力してください。")
