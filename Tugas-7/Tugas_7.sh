#!/bin/bash
# Mendeklarasikan fungsi
identitas() {
 parameter1=$1
 parameter2=$2
 parameter3=$3
 echo "$parameter1"
 echo "$parameter2"
 echo "$parameter3"
}
echo "Masukkan panjang : "
read a
echo "Masukkan lebar : "
read b
echo "Luas Persegi: "
let c=a*b
identitas $c
