from os import getpid
from time import time, sleep
from multiprocessing import cpu_count, Pool, Process

#Function Declaration
i=input("Masukkan bilangan\n")
i=int(i)
def hitung(i):
  i+=1
  if (i%2) == 0:
     print(i, "Genap - ID Process", getpid())
  else:
      print(i, "Ganjil - ID Process", getpid())
  sleep(1)

#Sequential Process
print ("\nSekuensial")
sekuensial_awal = time()

for j in range(1, i+1):
    hitung(j)

sekuensial_akhir = time()

#multiprocess Class
print ("\nmultiprocessing.Process")

kumpulan_proses = []
proses_awal = time()

for k in range(1, i+1):
    p = Process(target=hitung, args=(k,))
    kumpulan_proses.append(p)
    p.start()

for k in kumpulan_proses:
    p.join()

proses_akhir = time()

#Pool
print ("\nmultiprocessing.Pool")

pool_awal = time()
pool = Pool()
pool.map(hitung, range(1, i+1))
pool.close()

pool_akhir = time()

#Time Compare
print ("\nWaktu eksekusi sekuensial :", sekuensial_akhir - sekuensial_awal, "detik")
print ("Waktu eksekusi multiprocessing.Process :", proses_akhir - proses_awal, "detik")
print ("Waktu eksekusi multiprocessing.Pool :", pool_akhir - pool_awal, "detik")

