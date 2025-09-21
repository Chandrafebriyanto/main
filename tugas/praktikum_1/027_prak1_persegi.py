# LATIHAN PERSEGI (027_prak1_persegi.py)
class Square:
    def __init__(self, sisi):
        self.sisi = sisi
    
    def luas(self):
        return self.sisi * self.sisi
    
    def keliling(self):
        return 4 * self.sisi

persegi_1 = Square(5)
persegi_2 = Square(7)
persegi_3 = Square(10)

print("=== Persegi 1 ===")
print(f"Panjang Sisi : {persegi_1.sisi}")
print(f"Luas         : {persegi_1.luas()}")
print(f"Keliling     : {persegi_1.keliling()}")
print()

print("=== Persegi 2 ===")
print(f"Panjang Sisi : {persegi_2.sisi}")
print(f"Luas         : {persegi_2.luas()}")
print(f"Keliling     : {persegi_2.keliling()}")
print()

print("=== Persegi 3 ===")
print(f"Panjang Sisi : {persegi_3.sisi}")
print(f"Luas         : {persegi_3.luas()}")
print(f"Keliling     : {persegi_3.keliling()}")
print()