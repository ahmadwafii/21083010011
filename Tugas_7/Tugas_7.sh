# Mendeklarasikan Fungsi

panjang() {
	echo "Masukkan Panjang: "
	read panjang
}

lebar() {
	echo "Masukkan Lebar: "
	read lebar
}

# Memanggil Fungsi
panjang
lebar

# Operasi Perhitungan Luas
let luas=$panjang*$lebar

# Luas
echo "Luas Persegi Panjang: $luas"
