#membuat dictionary harga
size_harga = {
    "kecil": 50000,
    "sedang": 60000,
    "besar":75000
}

toping_harga = {
    "paperoni": 10000,
    "jamur": 20000,
    "sosis": 30000
}

crust_harga = {
    "pan crust": 40000,
    "cheesy bite crust": 45000,
    "chili cheesy stuffed crust": 50000
}

cheese_harga = {
    "y": 10000,
    "t": 0
}

#memulai progaram dengan menampilkan daftar menu
print("""
      ======Menu Pizza=======
      SIZE            TOPPING 
      *kecil         *paperoni
      *sedang        *jamur
      *besar         *sosis

      CRUST
      *pan crust
      *cheesy bite crust
      *chili cheesy stuffed crust
""")

#input memasukan pilihan sesuai menu
print("pilih ukuran pizza")
size =input()
print("size yang dipilih: ", size)
print("\nmasukkan toping")
toping =input()
print("topping yang dipilih: ", toping)
print("\npilih crust")
crust =input()
print("crust yang dipilih: ", crust)
print("\napakah ingin tambahkan keju (y/t)")
cheese =input()

    
total_harga = size_harga[size] + toping_harga[toping] + crust_harga[crust] + cheese_harga[cheese]

print(f"total pesanan anda = Rp {total_harga}")
print("TERIMA KASIH TELAH MEMESAN, DATANG KEMBALI")
# #proses pemilihan size pizza
# bil=0
# if size =="kecil":
#     size_harga[size]
# elif size =="sedang":
#     size_harga[size]
# elif size =="besar":
#     size_harga[size]
# else:
#     print()

# #proses pemilihan topping pizza
# if toping =="paperoni":
#     toping_harga[toping]
# elif toping =="jamur":
#     toping_harga[toping]
# elif toping =="sosis":
#     toping_harga[toping]
# else:
#     print()

# #proses pemilihan crust
# if crust =="pan crust":
#     crust_harga[crust]
# elif crust  =="cheesy bite crust":
#     crust_harga[crust]
# elif crust  =="chili cheesy stuffed crust":
#     crust_harga[crust]
# else:
#     print()
    
# #proses pemilihan keju
# if cheese=="y":
#     cheese_harga[cheese]
# else:
#     print()