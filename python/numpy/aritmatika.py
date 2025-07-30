import numpy as np

# aritmatika skalar

array = np.array([1,2,3])

print(array + 1)
print(array - 2)
print(array * 3)
print(array / 4)
print(array ** 5)
print("")

# fungsi matematika vektorisasi

array_float = np.array([1.1, 2.2, 3.3])

print(np.sqrt(array))
print(np.round(array_float))
print(np.pi)
print(np.round(np.pi, 2))
print("")

# EXERCISE
print(np.pi * array ** 2)
print("")

# Aritmatika per-Elemen
array1 = np.array([1,2,3])
array2 = np.array([4,5,6])

print(array1 + array2)
print(array1 - array2)
print(array1 * array2)
print(array1 / array2)
print(array1 ** array2)
print("")

# operasi perbandingan
scores = np.array([20,10,30,40,60,50,90,70])
print(scores >= 50)
print(scores <= 50)
scores[scores >= 50] = 1
print(scores)
print("")


