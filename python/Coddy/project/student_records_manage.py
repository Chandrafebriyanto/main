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

def list_students_by_course(course:str):
    course_students = []
    for name, details in student_records.items():
        if course in details["courses"]:
            course_students.append(name)
    return course_students

def filter_top_students (threshold: float):
    top_student = []
    for name in student_records:
        if calculate_average_grade(name) >= threshold:
            top_student.append(name)
    return top_student

add_student("Alice", 20, ["Math", "Physics"])
add_student("Bob", 22, ["Math", "Biology"])
add_student("Diana", 23, ["Chemistry", "Physics"])
print("")

add_grade("Alice", 90)
add_grade("Alice", 85)
add_grade("Bob", 75)
add_grade("Diana", 95)
print("")

print(filter_top_students(80))  
print(filter_top_students(90))  
print(filter_top_students(100)) 
print("")

print(calculate_average_grade("Alice"))  
print(calculate_average_grade("Bob"))  
print(calculate_average_grade("Charlie"))  
print(calculate_average_grade("Alice"))
print("")

print(is_enrolled("Alice", "Math"))  
print(is_enrolled("Alice", "Biology"))  
print(is_enrolled("Bob", "Biology"))  
print(is_enrolled("Charlie", "Math")) 