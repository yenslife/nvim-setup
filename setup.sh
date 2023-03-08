#!/bin/sh
# execute this shell script wth your name
echo "hello $1"
replacename=`ls lua/`
mv lua/* lua/$1
file=`cat init.lua`
echo "$file" | sed "s/$replacename/$1/g" > init.lua
