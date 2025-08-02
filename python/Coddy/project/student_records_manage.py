student_records = {}

def add_student(name: str, age: int, courses: str):
    if name in student_records:
        print(f"Student '{name}' already exists.")
        return
    student_records[name] = {"age": age, "grades": set(), "courses": set(courses)}
    print(f"Student '{name}' added successfully.")

def add_grade(name: str, grade: int):
    if name not in student_records:
        print(f"Student '{name}' not found.")
        return
    student_records[name]["grades"].add(grade)
    print(f"Grade {grade} added for student '{name}'.")

def is_enrolled(name: str, course: str):
    if name not in student_records:
        print(f"Student '{name}' not found.")
        return False
    if course in student_records[name]["courses"]:
        return True
    else:
        return False

def calculate_average_grade(name:str):
    if name not in student_records:
        print(f"Student '{name}' not found.")
        return
    grade = student_records[name]["grades"]
    count = 0
    for value in grade:
        count += value
    return count / len(grade)

add_student("Alice", 20, ["Math", "Physics"])
add_student("Bob", 22, ["Biology", "Chemistry"])
add_grade("Alice", 90)
add_grade("Alice", 85)
add_grade("Bob", 75)
print(calculate_average_grade("Alice"))  # Should return 87.5
print(calculate_average_grade("Bob"))  # Should return 75.0
print(calculate_average_grade("Charlie"))  # Non-existent student, should print message and return None
print(calculate_average_grade("Alice"))  # Should return 87.5 again
# print(is_enrolled("Alice", "Math"))  # Should return True
# print(is_enrolled("Alice", "Biology"))  # Should return False
# print(is_enrolled("Bob", "Biology"))  # Should return True
# print(is_enrolled("Charlie", "Math"))  # Non-existent student, should print message and return False