class person:
    def __init__(self, name, Class, nim, department, faculty, campus):
        self.name = name
        self.Class = Class
        self.nim = nim
        self.department = department
        self.faculty = faculty
        self.campus = campus

class student(person):
    def introduce(self):
        print(f"Hello, my name is {self.name}. I am in class {self.Class} with NIM {self.nim}. I study in the {self.department} department, faculty of {self.faculty}, at {self.campus} campus.")

student1 = student("Candra Febriyanto", "2024A", "24091397027", "Informatics Management", "Vocational", "State of Surabaya University")
student1.introduce()



import turtle

class MyTurtle:
    def __init__(self, color):
        self.t = turtle.Turtle()  
        self.t.color(color)    

    def maju(self, jarak):
        self.t.forward(jarak)

    def putar_kiri(self, sudut):
        self.t.left(sudut)
        
    def buat_segitiga(self, ukuran):
        for _ in range(3):
            self.maju(ukuran)
            self.putar_kiri(120)  

    def selesai(self):
        turtle.done()

turtle1 = MyTurtle("red")

turtle1.buat_segitiga(180)

turtle1.selesai()
