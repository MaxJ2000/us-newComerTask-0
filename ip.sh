#!/bin/bash
if [ $# -eq 0 ]; then
    ip addr show
    exit
fi
if [ $1 == '-ip' ]; then
    ip addr add $2 dev $3
fi
