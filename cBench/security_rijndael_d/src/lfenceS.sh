#!/bin/bash
echo "Number of lfences is: "
objdump -d a.out |grep 'lfence' | wc -l

