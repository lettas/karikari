#!/bin/sh

# カレントディレクトリの変更を検知して git リポジトリに git now しまくる

inotifywait -e create,delete,modify,move,attrib -mrq `pwd` | while read line; do
  git add .
  git now
done
