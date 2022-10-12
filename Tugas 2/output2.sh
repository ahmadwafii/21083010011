#!/bin/bash

# inisialisasi variable
a=20;
b=5;
distroLinux="Ubuntu 19.0 LTS";
let c=a%b;

# Output Printf
printf "OS : $distroLinux \n";
printf "$c \n";
printf "%.2f float \n" $a;
printf "%.1f float \n" $a;
