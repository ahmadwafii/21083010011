# import semua Sytem dari OS
from os import system, name 

import time
from datetime import datetime, timedelta

print("+---------------------------------+")
print("|Nama  : Ahmad Wafi Fathurrahman  |")
print("|NIM   : 21083010011		  |")
print("|Kelas : Sistem Operasi A         |")
print("+---------------------------------+")

# define Setting Countdown

def setcount():
	global hours
	global minutes
	global seconds
	global total_secs
	print('Setting Untuk Mengatur Countdown:')
	hours = int(input('Jam: '))
	minutes = int(input('Menit: '))
	seconds = int(input('Detik: '))
	total_secs = 3600 * hours + 60 * minutes + seconds

# defining Function untuk Countdown
def countdown():
	jalankan = str(input('Mulai? (ya/tidak) > '))
	# Akan menjalankan program apabila "ya"
	if jalankan == "ya":
		ltotalsecs = total_secs
		while ltotalsecs != 0:
			sec = timedelta(seconds=int(ltotalsecs))
			d = datetime(1, 1, 1) + sec
			print("%d Jam %d Menit %d Detik Lagi Akan Keluar" % (d.hour, d.minute, d.second))
			# delay for a second
			time.sleep(1)
			# decrement the local seconds total
			ltotalsecs -= 1
			# clearing the previous statement
			clear()
			if ltotalsecs == 0:
				print('Waktu Menghitung Mundur Telah Berakhir!')
# defining clear function
def clear(): 
  
    # Untuk Windows 
    if name == 'nt': 
        _ = system('cls') 
  
    # Untuk mac and linux(here, os.name is 'posix') 
    else: 
        _ = system('clear')

# Memanggil Function dari masing-masing yang telah didefine
setcount()
countdown()
