#!/bin/bash
a=15
b=7
c=6
e=2
let ab=$a*$b
let ce=$c*$e
if [ $ab == $ce ]
then
echo "ab sama dengan ce"
elif [ $ab -gt $ce ]
then
echo "ab lebih besar dari ce"
elif [ $ab -lt $ce ]
then
echo "ab lebih kecil dari ce"
else
echo "Tidak ada kondisi yang memenuhi"
fi



