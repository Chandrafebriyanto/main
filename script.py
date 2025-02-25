n = int(input('Masukkan nilai n yang ingin difaktorial: '))
hasil = 1
for i in range(1, n+1):
    hasil *= i
print(hasil)