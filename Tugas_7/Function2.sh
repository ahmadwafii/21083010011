# Mendeklarasikan Fungsi
function nama {
    echo "Masukkan nama Anda: "
    read nama
}

function nim {
    echo "Masukkan NIM Anda: "
    read nim
    echo -e "Hai $nama dengan nim $nim, selamat datang \n di Aplikasi Perpuustakaan. Selamat membaca!"
}

# memanggil fungsi
nama
nim
