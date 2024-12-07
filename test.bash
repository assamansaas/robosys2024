#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Masahiro Yasui
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# 基本的な文字の削除
out=$(echo "abcdef" | ./remove "abc")
expected="   def"
[ "${out}" = "${expected}" ] || ng "$LINENO"

# 記号の削除
out=$(echo "Hello! How@ are# you?" | ./remove '!@#?')
expected="Hello  How  are  you "
[ "${out}" = "${expected}" ] || ng "$LINENO"

# 文字を削除しない場合
out=$(echo "No characters to remove." | ./remove '')
expected="No characters to remove."
[ "${out}" = "${expected}" ] || ng "$LINENO"

# 引数が不足している場合
out=$(./remove 2>&1)
expected="Usage: python script.py <remove_chars>"
[[ "${out}" =~ ${expected} ]] || ng "$LINENO"

# 数値の場合
out=$(seq 5 | ./remove 1)
expected=" 2 3 4 5"
[ "${out}" = "${expected}" ] || ng "$LINENO"

# すべてのテストが成功した場合
[ "${res}" = 0 ] && echo "OK"

exit $res

