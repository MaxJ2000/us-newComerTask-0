#!/bin/bash
n=$1
j=1
if [ $# -eq 1 ]; then
    for((i=1;i<n+1;i++)); do
    j=$((j*i))
done
echo "${n}的阶乘是${j}"
else
     echo "无效参数!"
fi

