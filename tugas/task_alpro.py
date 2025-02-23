###############TUGAS PERTAMA#############
print("=====PROGRAM CALCULATOR=====")
bil_1 = int(input("masukan bilangan: "))
bil_2 = int(input("masukan bilangan: "))
aritmatika = input("masukan operasi bilangan (+/-/x/:)")

if aritmatika == "+":
    print("nilai penjumlahan kedua nilai tersebut:", bil_1+bil_2)
elif aritmatika == "-":
    print("nilai penjumlahan kedua nilai tersebut:", bil_1-bil_2)
elif aritmatika == "x":
    print("nilai penjumlahan kedua nilai tersebut:", bil_1*bil_2)
elif aritmatika == ":":
    print("nilai penjumlahan kedua nilai tersebut:", bil_1/bil_2)
else:
    print("program eror")

###########TUGAS KEDUA################
import math
pi = math.pi

r = int(input("\nmasukan jari jari: "))
luas = pi*r**2
keliling= 2*pi*r

print("nilai dari luas lingkaran:", (luas))
print("nilai dari volume lingkaran:", (keliling))

###########TUGAS KETIGA########
import math

bil_1 = int(input("\nmasukan nilai sisi kubus: "))
luas = 6*math.pow(bil_1, 2)
volum = math.pow(bil_1, 3)

print("hasil luas: ", (luas))
print("hasil volume: ", (volum))

print("\n=====PROGRAM TELAH SELESAI=====")
