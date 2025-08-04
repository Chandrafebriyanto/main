# list comprehension adalah cara yang ringkas dan efisien untuk membuat daftar baru dalam Python berdasarkan iterabel yang ada
# contoh 1:
def double_numbers(numbers):
    result = [n * 2 for n in numbers]
    return result
print(double_numbers([1, 2, 3, 4, 5]))
# Output: [2, 4, 6, 8, 10]

# contoh 4:
numbers = [1, 2, 3, 4, 5]
squares = [n * n for n in numbers]
print(squares)
# Output: [1, 4, 9, 16, 25]

# contoh 5:
cubes = [x**3 for x in range(1, 6)]
print(cubes)
# Output: [1, 8, 27, 64, 125]

# contoh 6:
chars = [char for char in "hello"]
print(chars)
# Output: ['h', 'e', 'l', 'l', 'o']

# contoh 7:
evens = [x for x in range(2, 11, 2)]
print(evens)
# Output: [2, 4, 6, 8, 10]