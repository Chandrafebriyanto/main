import math

sisi = int(input("masukan nilai sisi kubus: ")) 

luas = 6*math.pow(sisi, 2)
volume = math.pow(sisi, 3)

print("\nluas permukaan kubus adalah:", luas)
print("Volume kubus adalah:", volume)