# lambda adalah fungsi kecil dan anonim yang didefinisikan menggunakan lambdakata kunci . Fungsi lambda dapat menerima sejumlah argumen, tetapi hanya dapat memiliki satu ekspresi. Fungsi ini berguna untuk membuat fungsi satu baris yang sederhana tanpa memerlukan definisi fungsi yang lengkap menggunakan defkata kunci .

# note: example 1 Basic
# Create a lambda function that multiplies three numbers
multiply = lambda x,y,z: x * y * z
# Call the lambda function with the values 2, 3, and 4
result = multiply(2,3,4)
# Print the result
print(result)

# note: example 2 Condition 
# Format: lambda parameters: value_if_true if condition else value_if_false
is_adult = lambda age: "Adult" if age >= 18 else "Minor"
print(is_adult(20))  # Output: "Adult"
print(is_adult(15))  # Output: "Minor"

# example 3:
grade_status = lambda score: "Amazing!" if score == 100 else "Pass" if score >= 60 else "Fail"
print(grade_status(75))  # Output: "Pass"
print(grade_status(40))  # Output: "Fail"

# example 4:
# Read a number from input
number = int(input())
# Define your lambda function here
categorize_number = lambda x: "Positive" if x > 0 else "Negative" if x < 0 else "Zero"
# Call your lambda function with the input number and print the result
print(categorize_number(number))

# note: example 5 Sorting
names = ["Alice", "Bob", "Charlie", "Diana"]
sorted_names = sorted(names, key=lambda x: len(x))
print(sorted_names)
# Output: ['Bob', 'Alice', 'Diana', 'Charlie']

grades = {"Alice": 85, "Bob": 90, "Charlie": 78}
sorted_grades = sorted(grades.items(), key=lambda x: x[1])
print(sorted_grades)
# Output: [('Charlie', 78), ('Alice', 85), ('Bob', 90)]

numbers = [-10, 15, -20, 25]
sorted_numbers = sorted(numbers, key=lambda x: abs(x))
print(sorted_numbers)
# Output: [-10, 15, -20, 25]

data = [("Alice", 25), ("Bob", 30), ("Charlie", 25)]
sorted_data = sorted(data, key=lambda x: (x[1], x[0]))
print(sorted_data)
# Output: [('Alice', 25), ('Charlie', 25), ('Bob', 30)]

