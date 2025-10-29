class Matematika:
    def tambah(self, a=None, b=None, c=None):
        if a is not None and b is not None and c is not None:
            print(f"Menjumlahkan tiga angka: {a} + {b} + {c}")
            return a + b + c
        
        elif a is not None and b is not None:
            print(f"Menjumlahkan dua angka: {a} + {b}")
            return a + b
        
        else: 
            print("Parameter tidak cukup!")
            return None

m = Matematika()

print("Hasil 1: ", m.tambah(2,3))
print("Hasil 2: ", m.tambah(1, 2,3))
print("Hasil 3: ", m.tambah(10))