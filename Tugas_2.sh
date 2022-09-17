#!/bin/bash

a=25
b=20

# memakai let
let penjumlahan=$a+$b
let pengurangan=$a-$b

#eksekusi aritmatika
echo "a + b = $penjumlahan"
echo "a - b = $pengurangan"

angka1=100
angka2=50

if [ $angka1 == $angka2 ]
then
echo "angka1 dan angka2 bernilai sama"
elif [ $angka1 -gt $angka2 ]
then
echo "angka1 bernilai lebih besar daripada angka2"
elif [ $angka1 -lt $angka2 ]
then
echo "angka1 bernilai lebih kecil daripada angka2"
else
echo "maaf, percabangan tidak ditemukan"
fi
