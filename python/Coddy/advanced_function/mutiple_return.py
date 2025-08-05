# di pyhton bisa mengembalikan nilai lebih dari satu 
# contoh:
def get_name_and_age():
    name = "Alice"
    age = 30
    return name, age

person_name, person_age = get_name_and_age()
print(person_name)
# Output: Alice
print(person_age)
# Output: 30

# contoh 2:
def get_student_info():
    name = "Bob"
    age = 20
    major = "Computer Science"
    return name, age, major

student_name, student_age, student_major = get_student_info()
print(student_name)
print(student_age)
print(student_major)
# Output: Bob
# Output: 20
# Output: Computer Science