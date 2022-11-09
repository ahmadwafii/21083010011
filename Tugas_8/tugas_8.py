# Membuat built-in library yang akan digunakan
from os import getpid
from time import time, sleep
from multiprocessing import Pool, Process

# Menginisiasi Function yang nantinya akan digunakan
def cetak(i):
    a = i %2
    if a == 0:
      print(i, "Angka Genap", "- ID Proses", getpid())
    else:
      print(i, "Angka Ganjil", "- ID Proses", getpid())
      sleep(1)

# Membuat inputan untuk batasan
angka = int(input("Masukkan batasan perulangan: "))

# Sekuensial
print("\nPemrosesan Sekuensial")
sekuensial_awal = time()

for i in range(1, angka + 1):
    cetak(i)

sekuensial_akhir = time()

# Kelas Process
print("\nMultiprocessing dengan kelas Process")

kumpulan_proses = []
process_awal = time()

for i in range(1, angka + 1):
    p = Process(target=cetak, args=(i,))
    kumpulan_proses.append(p)
    p.start()

for i in kumpulan_proses:
    p.join()

process_akhir = time()

# Kelas Pool
print("\nMultiprocessing dengan Kelas Pool")
pool_awal = time()

pool = Pool()
pool.map(cetak, range(1, angka + 1))
pool.close()

pool_akhir = time()

# Perbandingan Waktu pada saat Eksekusi
print("\nSekuensial 	:", sekuensial_akhir - sekuensial_awal, "detik")
print("Kelas Process 	:", process_akhir - process_awal, "detik")
print("Kelas Pool 	:", pool_akhir - pool_awal, "detik")
