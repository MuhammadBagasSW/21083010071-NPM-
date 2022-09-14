#!/bin/bash

# deklarasi array
distroLinux=("Mint" "Ubuntu" "Kali" "Arch" "Debian")

# random distro
let pilih=$RANDOM%5

# ekseskusi
echo "Saya Memilih Distro $pilih, ${distroLinux[$pilih]} !"


