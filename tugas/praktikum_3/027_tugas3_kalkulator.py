class Kalkulator:
    def hitung(self, num1=None, num2=None, num3=None):
        if num1 is not None and num2 is not None and num3 is not None:
            print(f"Menjumlahkan tiga angka: {num1} + {num2} + {num3}")
            return num1 + num2 + num3
        
        elif num1 is not None and num2 is not None:
            print(f"Menjumlahkan dua angka: {num1} + {num2}")
            return num1 + num2
        
        else: 
            print("Parameter tidak cukup!")
            return None

k = Kalkulator()
number1 = (input("masukan angka pertama: "))
number2 = (input("masukan angka kedua: "))
number3 = (input("masukan angka ketiga: "))

print("Hasil 1: ", k.hitung(int(number1), int(number2)))
print("")
print("Hasil 2: ", k.hitung(int(number1), int(number2), int(number3)))
print("")
print("Hasil 3: ", k.hitung(int(number1)))