#!/bin/bash

printf "Makanan apa yang kamu suka ?\n"
printf "pentol ?\n"
printf "batagor ?\n"
printf "cireng ?\n"
printf "terserah ?\n"

read makan

case "$makan" in
"pentol")
  echo "Pentol bapake kae wenak lurr!"
  ;;
"batagor")
  echo "Batagor ibuke kae mantep lurr"
  ;;
"cireng")
  echo "Cireng mas-mas kae top lurr"
  ;;
"terserah")
  echo "---____---"
  ;;
*)
  echo "Makanan yang kamu suka gaenak hehehe ;v"
  ;;
esac
