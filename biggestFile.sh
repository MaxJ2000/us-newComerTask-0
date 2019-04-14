#!/bin/bash
if [ $# == 0 ]; then
    du -h --max-depth=1 2>/dev/null
    exit
fi
n=0
dir=0
while getopts "n:d:" opt
do
    case $opt in
    n)
        paraN=$OPTARG
        n=1
        ;;
    d)
        paraDir=$OPTARG
        dir=1
        ;;
    ?)
        echo '未知参数'
        exit 1
        ;;
    esac
done
if [ $n -eq 1 ]; then
     if [ $dir -eq 1 ]; then
        du $paraDir -h --max-depth=1 2>/dev/null | head -n $paraN
        exit
     else
        du -h --max-depth=1 2>/dev/null | head -n $paraN
     fi
elif [ $dir -eq 1 ]; then
        du $paraDir -h --max-depth=1 2>/dev/null    
else
     du -h --max-depth=1 2>/dev/null
fi


