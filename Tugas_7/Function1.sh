# mendeklarasikan fungsi
nama() {
   echo "Masukkan nama Anda : "
   read nama
}

nim() {
   echo "Masukkan NIM Anda : "
   read nim
   echo -e "Hai $nama dengan nim $nim, selamat datang di \n Aplikasi Perpustakaan. Selamat membaca!"
}

# memanggil fungsi
nama
nim
