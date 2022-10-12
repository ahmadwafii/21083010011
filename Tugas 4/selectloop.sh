#!/bin/bash

select makanan in pentol sate nasgor batagor nasikocheng semua gaada
do
  case $makanan in
    pentol|sate|nasgor|semua)
         echo "maaf,pesanan yang dipilih telah habis"
         ;;
    batagor|nasikocheng)
         echo "makanan yang dipilih tersedia"
         ;;
    gaada)
	 break
    ;;
    *) echo "makanan tidak ada didalam daftar menu"
    ;;
  esac
done

