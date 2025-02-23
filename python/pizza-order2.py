print("""
SELAMAT DATANG DI KEDAI PIZZA, SILAKAN PILIH MENU DISINI
=========================MENU===========================
|  SIZE  |    TOPPING    |           CRUST             |
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
def pizza():
    bill = 0
    
    ukuran = input("Pilih ukuran pizza yang kamu inginkan: ").lower(); #variabel untuk size pizza
    while ukuran == (""):
        ukuran = input("pilih ukuran pizza yang kamu inginkan: ").lower()
        
    if ukuran == "kecil":
        bill += 15000
    elif ukuran == "sedang":
        bill += 20000
    elif ukuran == "besar":
        bill += 25000
    else:
        print("topping tidak tersedia")
        ukuran = input("pilih ukuran pizza yang kamu inginkan: ").lower()


    tambah_topping = input("pilih topping yang kamu mau: ").lower() #variabel untuk topping
    while tambah_topping == (""):
        tambah_topping = input("pilih topping yang kamu mau: ").lower()
    
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
        print("topping tidak tersedia")
        tambah_topping = input("pilih topping yang kamu mau: ").lower()
    
    crust = input("pilih crust:").lower()
    while crust == (""):
        crust = input("pilih crust:").lower()
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
        print("crust tidak tersedia")
        crust = input("pilih crust:").lower()
        
    tambah_keju = input("apakah ingin menambah keju: (y/t): ").lower() #variabel untuk tambah keju
    while tambah_keju == (""):
        tambah_keju = input("apakah ingin menambah keju: (y/t): ").lower()
    if tambah_keju =="y":
        bill += 2000
    else:
        bill += 0
        
    jumlah = int(input("jumlah pizza yang ingin dipesan: "))
    
    print("\n========================================================");
    print("                     ULANGI PESANAN                      ");
    print("Ukuran Pizza:" , ukuran                                  );
    print("Pilihan crust:" , crust                                  );
    print("pilihan topping:" , tambah_topping                       );
    print("ekstra keju:" , tambah_keju                              );
    print(f"jumlah pemesanan:" , jumlah ,"pizza"                        );
    print("========================================================\n");
    
    ipt = input("konfirmasi pesanan anda (y/t) ").lower()
    while ipt == 't':
        print(pizza())
    else:
        print(f"total pesanan anda adalah Rp.{bill*jumlah}")
    
      
pizza()