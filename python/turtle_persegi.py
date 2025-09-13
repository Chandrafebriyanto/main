import turtle

class MyTurtle:
    def __init__(self, color, shape):
        # Membuat objek turtle
        self.t = turtle.Turtle()  # Object dari class Turtle
        self.t.color(color)  # Mengatur warna turtle
        self.t.shape(shape)  # Mengatur bentuk turtle

    def maju(self, jarak):
        # Method untuk menggerakkan turtle maju
        self.t.forward(jarak)

    def putar_kanan(self, sudut):
        # Method untuk memutar turtle ke kanan
        self.t.right(sudut)
    def buat_persegi(self, ukuran):
        # Method untuk menggambar persegi
        for _ in range(4):
            self.maju(ukuran)
            self.putar_kanan(90)  # Sudut 90 derajat untuk persegi

    def selesai(self):
        # Method untuk menyelesaikan gambar
        turtle.done()

# Membuat objek turtle dengan warna dan bentuk
turtle1 = MyTurtle("blue", "turtle")

# Menggambar persegi dengan ukuran sisi 150
turtle1.buat_persegi(150)

# Menyelesaikan gambar
turtle1.selesai()
