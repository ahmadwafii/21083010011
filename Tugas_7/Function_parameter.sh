# Mendeklarasikan Fungsi

identitas() {
	parameter1=$1
	parameter2=$2
	parameter3=$3
	echo "$parameter1"
	echo "$parameter2"
	echo "$parameter3"
}

echo "Masukkan nama Anda: "
read a
echo "Masukkan NIM Anda: "
read b
echo "Masukkan hobi Anda: "
read c

printf "\n"
identitas $a $b $c

