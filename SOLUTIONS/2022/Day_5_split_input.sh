#!/bin/bash

input_file="../../DATA/2022/input_day_05.txt"

# get the line where the info about stacks ends:
# (it's the only empty line)
n_lines=$(grep -n '^$' $input_file | cut -f 1 -d':')

head -n $n_lines $input_file > input_day_05_stacks.txt

tail -n +$n_lines $input_file > input_day_05_instructions.txt

mv input_day_05* ../../DATA/2022/
