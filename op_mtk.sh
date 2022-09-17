#!/bin/bash
a=30
b=10

#pakai let
let penjumlahan=$a+$b
let pengurangan=$a-$b
let perkalian=$a*$b

#pakai expr untuk pembagian
pembagian=`expr $a / $b`

#pakai perintah substitusi $((ekspresi))
mod=$(($a % $b))

echo "a + b = $penjumlahan"
echo "a - b = $pengurangan"
echo "a * b = $pembagian"
echo "a / b = $mod"

b=$a

echo "a = $a"
echo "b = $b"
