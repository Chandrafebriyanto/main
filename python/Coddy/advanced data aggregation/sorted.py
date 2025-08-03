# sorted() digunakan untuk mengurutkan data, baik dari atas kebawah (ascending) maupun dari bawah ke atas (descending)
# asecending
numbers = [3, 1, 4, 1, 5, 9, 2, 6]
sorted_numbers = sorted(numbers)
print(sorted_numbers)
# Output: [1, 1, 2, 3, 4, 5, 6, 9]

# desceding
numbers = [3, 1, 4, 1, 5, 9, 2, 6]
sorted_numbers_desc = sorted(numbers, reverse=True)
print(sorted_numbers_desc)
# Output: [9, 6, 5, 4, 3, 2, 1, 1]

# sorted() juga bisa digunakan untuk tipe data string 
words = ["apple", "banana", "cherry"]
sorted_words = sorted(words)
print(sorted_words)
# Output: ['apple', 'banana', 'cherry']

# diurutkan secara panjang karakter
words = ["watermelon", "banana", "cherry"]
sorted_words_by_length = sorted(words, key=len)
print(sorted_words_by_length)
# Output: ['apple', 'banana', 'cherry']


# Starter inputs
numbers = [5, 3, 8, 1, 2]
words = ["elephant", "cat", "dolphin", "bee"]

# Task 1: Sort numbers in ascending order
ascending_numbers = sorted(numbers)

# Task 2: Sort numbers in descending order
descending_numbers = sorted(numbers, reverse=True)

# Task 3: Sort words alphabetically
alphabetical_words = sorted(words)
# Task 4: Sort words by length

length_sorted_words = sorted(words, key=len)

# Replace 'pass' with your code for each task
ascending_numbers = ascending_numbers
descending_numbers = descending_numbers
alphabetical_words = alphabetical_words
length_sorted_words = length_sorted_words

# Print the results
print("Ascending:", ascending_numbers)
print("Descending:", descending_numbers)
print("Alphabetical:", alphabetical_words)
print("By Length:", length_sorted_words)