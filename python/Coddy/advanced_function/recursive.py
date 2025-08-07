# # Fungsi rekursif adalah fungsi yang memanggil dirinya sendiri untuk menyelesaikan kasus masalah yang lebih kecil. Setiap pemanggilan rekursif harus membawa fungsi tersebut lebih dekat ke kasus dasar, yang akan menghentikan rekursi.

# def sum_to_n(n):
#     if n == 0:  # Base case
#         return 0
#     return n + sum_to_n(n - 1)  # Recursive step

# print(sum_to_n(5))  # Output: 15

# def count_down(n):
#     if n == 0:
#         print(0)
#         return
#     print(n)
#     count_down(n - 1)

# count_down(5) #output: 5 4 3 2 1 0

# def factorial(n):
#     if n == 1:  #note: Base case :menentukan kapan recursive harus berhenti
#         return 1
#     return n * factorial(n - 1)  #note: Recursive call : Memanggil fungsi itu sendiri dengan input yang lebih kecil.

# print(factorial(5))  # Output: 120

# def recursive_reverse(s):
#     if len(s) <= 1:  # Base case: empty or single-character string
#         return s
#     else:
#         return recursive_reverse(s[1:]) + s[0]  # Recursive step

# text = "hello"
# result = recursive_reverse(text)
# print(result)
# # Output: olleh

# def fibonacci(n):
#     if n <= 1:
#         return 0
#     elif n == 2:
#         return 1
#     else:
#         return fibonacci(n - 1) + fibonacci(n - 2)

# print(fibonacci(5))  # Output: 3

def sum_nested(nested_list):
    result = []
    for lst in nested_list:
        if isinstance(lst, list):
            result.append(sum_nested(lst))
        else:
            result.append(lst)
    return sum(result)
        
nested_list = [1, [2, 3], [4, [5, 6]], 7]
print(sum_nested(nested_list))