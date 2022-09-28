#!/bin/bash
 echo "Perulangan bilangan ganjil"
 echo " Masukkan angka batas perulangan"
 read input
 a=2
 b=0
 c=$((input%a))
 d=$((input-1))
 if [ $c == $b ]
 then
 for ((angka=$d; angka>=$b; angka=angka-2))
 do
 echo nilai=$angka
 done
 elif [ $c != $b ]
 then
 for ((angka=$input; angka>=$b; angka=angka-2))
 do 
 echo nilai=$angka
 done 
 else
 echo "Tidak ditemukan"
 fi
