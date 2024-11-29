#!/usr/bin/python3
import sys
import re

text = input("英語の文字列を入力してください: ")
remove = input("削除したい文字を入力してください: ")

def removeAlphabet(string, remove_chars):
    pattern = f"[{re.escape(remove_chars)}]"
    return re.sub(pattern, " ", string)


print(removeAlphabet(text, remove))
