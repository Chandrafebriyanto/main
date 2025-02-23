#memulai progaram dengan menampilkan daftar menu
print("""
      ======Menu Pizza=======
       SIZE           TOPPING 
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
print("\nmasukkan toping")
toping =input()
print("\npilih crust")
crust =input()
print("\napakah ingin tambahkan keju (y/t)")
cheese =input()

#proses pemilihan size pizza
bil=0
if size =="kecil":
    bil +=50000
elif size =="sedang":
    bil +=60000
elif size =="besar":
    bil +=75000
else:
    print()
    

#proses pemilihan topping pizza
if toping =="paperoni":
    bil +=10000
elif toping =="jamur":
    bil +=20000
elif toping =="sosis":
    bil +=30000
else:
    print()

#proses pemilihan crust
if crust =="pan crust":
    bil +=40000
elif crust  =="cheesy bite crust":
    bil +=45000
elif crust  =="chili cheesy stuffed crust":
    bil +=50000
else:
    print()

#proses pemilihan keju
if cheese=="y":
    bil +=10000
else:
    print()

print(f"total pesanan anda = Rp {bil}")
print("TERIMA KASIH TELAH MEMESAN, DATANG KEMBALI")