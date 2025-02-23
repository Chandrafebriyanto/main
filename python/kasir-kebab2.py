kebab = 12000
minuman = 5000
gokill_1 = kebab + minuman - 2000
gokill_2 = kebab*2 + minuman*2 - 3000
gokill_3 = kebab*3 + minuman*3 - 4000
total_kebab = 0
total_minuman = 0
total_paket = 0

while True:
    print("kasir")
    banyak_kebab = int(input("berapa kebab yang ingin dipesan: "))
    banyak_minuman = int(input("berapa minuman yang ingin dipesan: "))
    paket = int(input("menu paket yang dipilih: "))
    if paket == 1:
        total_paket += gokill_1
        jumlah = int(input("jumlah paket: "))
    elif paket == 2:
        total_paket += gokill_2
        jumlah = int(input("jumlah paket: "))
    elif paket == 3:
        total_paket += gokill_3
        jumlah = int(input("jumlah paket: "))
    
    total_pembayaran = kebab*banyak_kebab + minuman*banyak_minuman + total_paket*jumlah
    print("total pesanan anda: ", total_pembayaran)
    uang_pembayaran= int(input("uang pembayaran anda: "))
    print(f"kembalian anda: {uang_pembayaran-total_pembayaran}\n")
    
    print("total penjualan")
    total_kebab += banyak_kebab
    print("kebab: ",total_kebab)
    total_minuman +=banyak_minuman
    print("minuman: ", total_minuman)
    print("paket: ", paket, "dengan jumlah: ", jumlah)
    
    
    total_uang_masuk = total_kebab*kebab + total_minuman*minuman + total_paket
    print(f"total uang masuk: {total_uang_masuk}\n")
    True
    