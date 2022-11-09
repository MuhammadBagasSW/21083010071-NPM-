from os import getpid
from time import time, sleep
from multiprocessing import cpu_count, Pool, Process
input = int(input("Masukkan batas: "))
def cetak(i):
  if i % 2 == 0:
    print((i+1),"Angka ganjil  - ID", getpid())
  else:
    print((i+1),"Angka genap  - ID", getpid())
  sleep(1)
    
print("Kelas sekuensial")
sekuensial_awal = time()
# PROSES BERLANGSUNG
for i in range(input):
    cetak(i)
# UNTUK MENDAPATKAN WAKTU SETELAH EKSEKUSI
sekuensial_akhir = time()
print("\n Kelas Procces")
# UNTUK MENAMPUNG PROSES-PROSES
kumpulan_proses = []
# UNTUK MENDAPATKAN WAKTU SEBELUM EKSEKUSI
process_awal = time()
# PROSES BERLANGSUNG
for i in range(input):
    p = Process(target=cetak, args=(i,))
    kumpulan_proses.append(p)
    p.start()
# UNTUK MENGGABUNGKAN PROSES-PROSES AGAR TIDAK LONCAT KE PROSES SEBELUM'NYA
for i in kumpulan_proses:
    p.join()
# UNTUK MENDAPATKAN WAKTU SETELAH EKSEKUSI
process_akhir = time()

print("\n Kelas pool")
# UNTUK MENDAPATKAN WAKTU SEBELUM EKSEKUSI
pool_awal = time()

# PROSES BERLANGSUNG
pool = Pool()
pool.map(cetak, range(0,input))
pool.close()
# UNTUK MENDAPATKAN WAKTU SEBELUM EKSEKUSI
pool_akhir = time()
 
print("\n Hasilnya")
print("Sekuensial :", sekuensial_akhir - sekuensial_awal, "detik")
print("Kelas Process :", process_akhir - process_awal, "detik")
print("Kelas Pool :", pool_akhir - pool_awal, "detik")
