#!/bin/bash
echo " Berapa jumlah IPS yang telah anda tempuh"
read ips

declare -a sum
read -p "Masukkan nilai IPS anda " sum

for i in ${sum[@]}
do
	if [ $i -ge 0 ]
	then
	   	((tot=$tot + $i))
	fi
	((c=$c+1))
done

echo "Total nilai anda =  $tot"
echo "Jumlah IPS anda = $c"
if [ $ips == $c ]
then
((ipk=$tot/$c))
echo "IPK anda adalah : $tot : $c = $ipk"
else
echo "Total IPS anda tidak sesuai dengan jumlah semester anda"
echo "IPK anda tidak dapat dihitung"
fi
