#
#tittle: faktorial dengan rekursi
def faktorial_r(r):
    if r == 0 or r == 1:
        return 1
    else:
        return r * faktorial_r(r - 1)

print("hasil faktorial dengan rekursif:",faktorial_r(15))

#tittle: faktorial dengan iterasi
def faktorial_i(n):
    hasil = 1
    for i in range(1, n + 1):
        hasil *= i
    return hasil

print("\nhasil faktorial dengan iterasi:", faktorial_i(15))

#tittle: menghitung fibonacci dengan rekursi
def fibonacci (i):
    if i == 0:
        return 0
    elif i == 1:
        return 1
    else:
        return fibonacci(i - 1) + fibonacci(i - 2)
    
print("\nfibonacci ke-25:", fibonacci(25))