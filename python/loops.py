# name = input("apa makanan favoritmu (ketik sudah jika selesai): ")

# while not name == "sudah":
#     print(f"makanan favoritmu {name}")
#     name = input("ada lagi: ")

# print(f"Terima kasih")



# age = int(input("masukan umurmu: "))

# while age < 0 or age >65:
#     print("umurmu tidak valid")
#     # age = int(input("masukan umurmu: "))

# print(f"umurmu sekarang {age} tahun")



# name = input("apakah kamu andi: ")

# while name == "y" or name == "andi":
#     print("halo andi")
#     name = input("masukan nama anda: ")

# print(f"maaf kamu bukan andi")

# n = int(input("berapa banyak bintang: "))
# for x in range(1, n):
#     #spasi
#     for j in range(x, n+1):
#         print(" ", end="")
#     #stars
#     for j in range(1, 2*x):
#         print("*", end="")
#     print()
    
# for i in range(1, n):
#     # Print spaces
#     for j in range(i, n+1):
#         print(" ", end="")
#     # Print stars
#     for j in range(1, 2*i):
#         print("*", end="")
#     print()


# n = int(input("masukan banyak mahasiswa: "))
# for i in range (1, n+1):
#     print(f"mahasiswa ke {i}")
#     int(input("masukan nilai anda: "))
    
x = int(input("masukan nilai:"))
y = int(input("masukan nilai:"))

while x < y:
    if x % 2:
        print(x)
    x+=1