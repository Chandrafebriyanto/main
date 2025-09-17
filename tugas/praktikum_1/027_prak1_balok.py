class Balok:
    def __init__(self, panjang, lebar, tinggi):
        self.panjang = panjang
        self.lebar = lebar
        self.tinggi = tinggi

    def volume(self):
        return self.panjang * self.lebar * self.tinggi

    def luas_permukaan(self):
        return 2 * (self.panjang * self.lebar + self.panjang * self.tinggi + self.lebar * self.tinggi)

balok1 = Balok(5, 3, 4)
balok2 = Balok(7, 4, 6)

print("=== Balok 1 ===")
print(f"Panjang       : {balok1.panjang} cm")
print(f"Lebar         : {balok1.lebar} cm")
print(f"Tinggi        : {balok1.tinggi} cm")
print(f"Volume        : {balok1.volume()} cm³")
print(f"Luas Permukaan: {balok1.luas_permukaan()} cm²")
print()

print("=== Balok 2 ===")
print(f"Panjang       : {balok2.panjang} cm")
print(f"Lebar         : {balok2.lebar} cm")
print(f"Tinggi        : {balok2.tinggi} cm")
print(f"Volume        : {balok2.volume()} cm³")
print(f"Luas Permukaan: {balok2.luas_permukaan()} cm²")
print()