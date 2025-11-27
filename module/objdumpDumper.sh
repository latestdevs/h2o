#!/bin/bash

read -p "ASM file: " FILE

objdump -d "$FILE" \
  | grep '^[ ]*[0-9a-f]\+:' \
  | sed -E 's/^[ ]*[0-9a-f]+:[ ]*//; s/[ ]{2,}.*$//' \
  | tr -s ' ' \
  | sed 's/ /\\x/g; s/^/\\x/' \
  | paste -sd '' -
