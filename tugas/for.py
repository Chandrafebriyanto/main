x = int(input("banyak mahasiswa: "))

for i in range (1, x+1):
    print(f"mahasiswa ke {i}")
    y = int(input("banyak mata kuliah yang diambil: "))
    
    total_nilai = 0
    
    for j in range (1, y+1):
        nilai = float(input(f"input nilai matkul ke {j}: "))
        total_nilai += nilai
        
    rata_rata = total_nilai/y
    print(f"rata-rata: {rata_rata}")
    print("______________________________________________\n")
