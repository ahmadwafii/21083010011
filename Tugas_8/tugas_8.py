# Membuat built-in library yang akan digunakan
from os import getpid
from time import time, sleep
from multiprocessing import cpu_count, Pool, Process

# Menginisiasi Function yang nantinya akan digunakan
def cetak(i):
    if i % 2 == 0:
      print(f"{i+1} Angka Ganjil", "- ID Proses", getpid())
    elif i % 2 !=0:
      print(f"{i+1} Angka Genap", "-ID Proses", getpid())
    else:
      print("Maaf, program tidak dapat dijalankan")
      sleep(1)

# Membuat inputan untuk batasan
angka = int(input("Masukkan batasan perulangan: "))

# Sekuensial
print("\nPemrosesan Sekuensial")
sekuensial_awal = time()

for i in range(angka):
    cetak(i)

sekuensial_akhir = time()

# Kelas Process
print("\nMultiprocessing dengan kelas Process")

kumpulan_proses = []
process_awal = time()

for i in range(angka):
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
pool.map(cetak, range(angka))
pool.close()

pool_akhir = time()

# Perbandingan Waktu pada saat Eksekusi
print("\nSekuensial 	:", sekuensial_akhir - sekuensial_awal, "detik")
print("Kelas Process 	:", process_akhir - process_awal, "detik")
print("Kelas Pool 	:", pool_akhir - pool_awal, "detik")
