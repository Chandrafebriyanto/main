# Min() digunakan untuk mencari nilai terendah dalam sebuah barisan
# Max() digunakan untuk mencari nilai tertinggi dalam sebuah barisan 

numbers = [3, 1, 4, 1, 5, 9, 2, 6]
smallest = min(numbers)
print(smallest)
# Output: 1

numbers = [3, 1, 4, 1, 5, 9, 2, 6]
largest = max(numbers)
print(largest)
# Output: 9

# min() max() juga bisa digunakan untuk tipe data string 
words = ["apple", "banana", "cherry"]
smallest_word = min(words)
largest_word = max(words)
print(smallest_word)
# Output: apple
print(largest_word)
# Output: cherry

# EXERCISE:
numbers = [42, 17, 23, 56, 9, 34]
words = ["kiwi", "apple", "banana", "cherry", "date"]

# Write code here
small_number = min(numbers)
large_number = max(numbers)
small_word = min(words)
large_word = max(words)

print(f'Smallest number: {small_number}')
print(f'Largest number: {large_number}')
print(f'Smallest word: {small_word}')
print(f'Largest word: {large_word}')
