# Mendeklarasikan Fungsi

nama() {
    echo "Masukkan nama Anda: "
    read nama
    nim                        # <-------- Memanggil fungsi di dalma fungsi (fungsi bersarang)
}

nim() {
    echo "Masukkan NIM Anda: "
    read nim
    echo -e "Hai $nama dengan nim $nim, selamat datang di Aplikasi Perpustakaan. Selamat membaca!"
}

# memanggil fungsi
nama
