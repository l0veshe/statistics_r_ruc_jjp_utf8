#!/usr/bin/env bash

# cd example  or    exercise
pwd1=$(pwd);for i in $(ls);do cd $i;for m in $(ls|grep RData);do  n=${m%%.*};echo $n; Rscript -e "load(\"$n.RData\");write.table($n, \"$n.txt\", sep=",")"; iconv -f gbk -t utf-8 $n.txt > utf8_$n.txt;done;cd $pwd1;done
