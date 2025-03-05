def sigma_sum(a, b, f):
    total = 0
    for i in range(a, b + 1):  # Iterasi dari a sampai b
        total += f(i)  # Menambahkan hasil fungsi ke total
    return total

# Contoh penggunaan: Sigma dari i^2 untuk i = 1 sampai 4
result = sigma_sum(1, 4, lambda i: i**2)
print("Hasil:", result)  # Output: 30