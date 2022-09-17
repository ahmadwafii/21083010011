#!/bin/bash

# deklarasi array
Pick_Hero=("Alucard" "Esmeralda" "Nana" "Granger" "Balmond" "Khufra" "Clint" "X-Borg" "Franco" "Argus")


# random distro
let pick=$RANDOM%5

# eksekusi
echo "Saya akan menggunakan hero $pick, ${Pick_Hero[$pick]} !"
