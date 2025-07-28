import numpy as np

# slicing array numpy adalah mengambil bagian dari array numpy
# slicing array numpy dapat dilakukan pada array 1D, 2D, dan 3D

array = np.array([[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]])

# array[start:end:step]
print(array[0])
print(array[1])
print(array[2])
print(array[3])
print("")

print(array[0:2])  # Slicing first two rows
print(array[2:4])  # Slicing last two rows
print("")

print(array[0:4:2])  # Slicing every second row
print(array[0:4:3])  # Slicing every third row
print("")

print(array[::-1])  # Reversing the array
print("")

print(array[:, 0])  # Slicing first column
print(array[:, 1])  # Slicing second column
print(array[:, 2:4])