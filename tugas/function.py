# #TUGAS 1
# def luas_persegi_panjang(panjang, lebar):
#     return panjang*lebar

# x = int(input("masukan panjang persegi: "))
# y = int(input("masukan lebar persegi: "))
# print("luas persegi panjang:", luas_persegi_panjang (x, y))


#TUGAS 2
print("Sistem Manajemen Stok Barang Toko")
print("=================================")
stock_barang = 100
def kurangi_stock(put_barang):
    global stock_barang
    if put_barang > stock_barang:
        print("stok barang tidak mencukupi")
    else: 
        stock_barang -= put_barang
        print(f"{put_barang} barang terjual.", f"stok total:{stock_barang}")
        
     
while True:
    x = int(input("masukan jumlah barang yang ingin dikurangi: "))
    if x < 0:
        print("jumlah barang tidak boleh negatif")
    else:   
        kurangi_stock(x)
        
    konfir=input("apakah anda ingin melanjutkan transaksi? (y/t): ")
    if konfir == ("y"):
        True
    else:
        print("transaksi selesai, Terima kasih")
        break

