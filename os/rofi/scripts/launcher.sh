#!/bin/bash

dir="$HOME/.dotfiles/rofi/"
theme='style'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi \
    -no-show-match -no-sort
