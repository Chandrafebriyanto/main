all_numbers = range(1, 11)
even_numbers = [n for n in all_numbers if n % 2 == 0]
print(even_numbers)
# Output: [2, 4, 6, 8, 10]  

def filter_and_square(numbers):
    result = [n * n for n in numbers if n > 0]
    return result
print(filter_and_square([-3, -2, 0, 1, 2, 3]))
# Output: [1, 4, 9]

values = [1, 2, 3, 4, 5]
transformed_values = [n**2 if n % 2 == 0 else n*2 for n in values]
print(transformed_values)
# Output: [2, 4, 6, 8, 10] (squares for even, double for odd)