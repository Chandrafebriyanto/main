numbers = [1, 2, 3, 4, 5]
sum_of_squares = sum([n * n for n in numbers])
print(sum_of_squares)
# Output: 55

numbers = [-3, -1, 0, 1, 3]
min_absolute = min([abs(n) for n in numbers])
print(min_absolute)
# Output: 0

numbers = [1, 2, 3, 4, 5, 6]
max_even = max([n for n in numbers if n % 2 == 0])
print(max_even)
# Output: 6

def sum_positive_evens(numbers):
    result = sum([n for n in numbers if n > 0 and n % 2 == 0])
    return result
numbers = [1, 3, 5, 7]
print(sum_positive_evens(numbers))
# Output: 20

def house_of_lists(list_of_lists):
    # Filter lists with a sum <= 50
    filtered_lists = [lst for lst in list_of_lists if sum(lst) <= 50]
    # print(filtered_lists)
    # Extract numbers < 5 from the filtered lists
    extracted_numbers = [num for lst in filtered_lists for num in lst if num < 5]
    # Return the combined list of numbers
    return extracted_numbers

array =[[5, 5, 5, 5, 5], [1, 1, 1, 1], [2, 2, 2, 2], [50, 1]]
print(house_of_lists(array))
# Output: [1, 1, 1, 1, 2, 2, 2, 2]
