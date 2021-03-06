#!/usr/bin/env zsh

clang_new () {
  file=$1.c
  touch $file
  printf "#include <stdio.h>\n\nint main() { \n  \n}\n">> $file
  subl $file
}

clang_run () {
  clang-format -i $1.c
  gcc $1.c -o $1
  ./$1
}

clang_for () {
  clang-format -i $1.c
}

clang_assembly () {
 clang-format -i $1.c
 gcc -S -o $1.s $1.c
 subl $1.s
}
