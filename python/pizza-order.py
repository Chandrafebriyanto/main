print("""
SELAMAT DATANG DI KEDAI PIZZA, SILAKAN PILIH MENU DISINI
=========================MENU===========================
|  SIZE  |    TOPPING    | CRUST                       |
|--------|---------------|-----------------------------|
| KECIL  | PAPPERONI     | PAN CRUST                   |
| SEDANG | JAMUR         | CHEESY BITE CRUST           |
| BESAR  | SOSIS         | CHILLI CHEESY STUFFED CRUST |
|        | JAGUNG MANIS  | STUFFED CRUST               |
|        | KEJU MOZARELLA| CROWN CRUST CARNIVAL        |
|        | PAPRIKA       |                             |
|        | BAWANG MERAH  |                             |
========================================================
""")

#data input
konfirmasi = True
while konfirmasi: #untuk perulangan
    print("Pilih ukuran pizza yang kamu inginkan: ")
    ukuran = input().lower(); #variabel untuk size pizza
    print("pilih topping yang kamu mau: ")
    tambah_topping = input().lower(); #variabel untuk topping
    print("pilih crust:")
    crust = input().lower();
    print("apakah ingin menambah keju: (y/t)")
    tambah_keju = input().lower(); #variabel untuk tambah keju
    print("jumlah pizza yang ingin dipesan: ")
    jumlah = int(input())

#########################################################################
#########################################################################

#total bill awal jika tidak memesan
    bill = 0

#pilihan ukuran pizza yg ingin dipesan
    if ukuran == "kecil":
        bill += 15000
    elif ukuran == "sedang":
        bill += 20000
    elif ukuran == "besar":
        bill += 25000
    else:
        break

#pilihan topping yg diinginkan   
    if tambah_topping == "papperoni":
        bill += 3000
    elif tambah_topping == "jamur":
        bill += 3000
    elif tambah_topping == "sosis":
        bill += 4000
    elif tambah_topping == "jagung manis":
        bill += 4000
    elif tambah_topping == "keju mozarella":
        bill += 3000
    elif tambah_topping == "paprika":
        bill += 4000
    elif tambah_topping == "bawang merah":
        bill += 4000
    else:
        break

 #pilihan crust
    if crust == "pan crust":
        bill += 2000
    elif crust == "cheesy bite crust":
        bill += 2000
    elif crust == "chilli chessy stuffed crust":
        bill += 2000
    elif crust == "stuffed crust":
        bill += 2000
    elif crust == "crown crust carnival":
        bill += 2000
    else:
        break
    
#pilih tambah keju atau tidak    
    if tambah_keju =="y":
        bill += 2000
    else:
        print()

#konfirmasi pesanan
    print("\n========================================================");
    print("                     ULANGI PESANAN                      ");
    print("Ukuran Pizza:" , ukuran                                  );
    print("Pilihan crust:" , crust                                  );
    print("pilihan topping:" , tambah_topping                       );
    print("ekstra keju:" , tambah_keju                              );
    print(f"jumlah pemesanan:" , jumlah ,"buah"                        );
    print("========================================================\n");

    ipt = input("konfirmasi pesanan anda (y/t) ").lower()
    if ipt == 'y':
        konfirmasi = False
    else:
        konfirmasi = True
        
 #output hasil total pesanan   
print("\n=========================================================");   
print(f"=Total Pesanan Anda: Rp {bill*jumlah}                          =");
print("====TERIMA KASIH SUDAH MEMESAN, SILAKAN DATANG LAGI:)====");
print("=========================================================");