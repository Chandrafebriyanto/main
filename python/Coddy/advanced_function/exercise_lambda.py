names = ["Alice", "Bob", "Charlie", "Diana"]
sorted_names = sorted(names, key=lambda x: len(x))
print(sorted_names)
# Output: ['Bob', 'Alice', 'Diana', 'Charlie']

grades = {"Alice": 85, "Charlie": 78, "Bob": 90}
sorted_grades = sorted(grades.items(), key=lambda x: x[0])
print(sorted_grades)
# Output: [('Alice', 85), ('Bob', 90), ('Charlie', 78)]

numbers = [-10, 15, -20, 25]
sorted_numbers = sorted(numbers, key=lambda x: abs(x)) #abs() digunakan untuk mengembalikan nilai absolute dari sebuah angka, contoh : abs(-5) = 5
print(sorted_numbers)
# Output: [-10, 15, -20, 25]

data = [("Alice", 25), ("Bob", 30), ("Charlie", 20)]
sorted_data = sorted(data, key=lambda x: (x[1]))
print(sorted_data)
# Output: [('Charlie', 20), ('Alice', 25), ('Bob', 30)]
