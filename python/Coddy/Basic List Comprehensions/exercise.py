def elements_of_freedom(elements):
    # Your solution here
    unique_list = []
    
    # Step 1: Filter elements with length >= 5
    length = [n for n in elements if len(n) >= 5]
    
    # Step 2: Convert filtered elements to uppercase
    upper = [n.upper() for n in length]
    
    # Step 3: Remove duplicates
    duplicat = [unique_list.append(n) for n in upper if n not in unique_list]
    
    # Step 4: Return the final result
    return unique_list

Input = ["freedom", "liberty", "justice", "hope", "dreams", "hope", "peace"]
print(elements_of_freedom(Input))
# Input: ["apple", "banana", "cherry", "date", "apple", "banana", "grape", "fig"]
# Output: ['APPLE', 'BANANA', 'CHERRY', 'GRAPE']

