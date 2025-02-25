
#note: 1. Sebuah tim olahraga terdiri dari 10 pemain. Pelatih ingin memilih 5 pemain untuk pertandingan. Berapa banyak cara yang mungkin untuk memilih pemain?
n = 10
r = 5

faktorial_n = 1
for i in range(1, n+1):
    faktorial_n *= i

faktorial_r = 1
for i in range(1, r+1):
    faktorial_r *= i

faktorial_n_r = 1
for i in range(1, n-r+1):
    faktorial_n_r *= i

c = faktorial_n // (faktorial_r * faktorial_n_r)
print(f'1. cara memilih pemain adalah: {c} cara')

#note: 2. Sebuah perusahaan memiliki 8 kandidat untuk posisi manajerial dan hanya 3 posisi yang tersedia. Berapa banyak cara memilih 3 kandidat tersebut jika urutan posisi diperhitungkan?
n = 8
r = 3

faktorial_n = 1
for i in range(1, n+1):
    faktorial_n *= i

faktorial_r = 1
for i in range(1, n-r+1):
    faktorial_r *= i

p = faktorial_n // faktorial_r
print(f'2. cara memilih kandidat adalah: {p} cara')

#note: 3. Dalam sebuah lomba lari dengan 12 peserta, hanya 3 pemenang akan mendapatkan medali emas, perak, dan perunggu. Berapa banyak kemungkinan susunan pemenang?
n = 12
r = 3

faktorial_n = 1
for i in range(1, n+1):
    faktorial_n *= i

faktorial_r = 1
for i in range(1, n-r+1):
    faktorial_r *= i

p = faktorial_n // faktorial_r
print(f'3. cara memilih pemenang adalah: {p} cara')


#note: 4. Dalam suatu acara, panitia ingin menyusun 4 kursi untuk tamu kehormatan dari 6 kandidat yang tersedia. Berapa banyak cara untuk menyusun tamu tersebut jika posisi kursi diperhitungkan?
n = 6
r = 4

faktorial_n = 1
for i in range(1, n+1):
    faktorial_n *= i

faktorial_r = 1
for i in range(1, n-r+1):
    faktorial_r *= i

p = faktorial_n // faktorial_r
print(f'4. cara menyusun tamu adalah: {p} cara')

#note: 5.Sebuah kelas terdiri dari 15 siswa. Berapa banyak cara memilih ketua dan wakil ketua kelas jika urutan pemilihan diperhitungkan?
n = 15
r = 2

faktorial_n = 1
for i in range(1, n+1):
    faktorial_n *= i

faktorial_r = 1
for i in range(1, n-r+1):
    faktorial_r *= i

p = faktorial_n // faktorial_r
print(f'5. cara memilih ketua dan wakil ketua adalah: {p} cara')
