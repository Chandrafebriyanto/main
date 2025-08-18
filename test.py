# Tugas 1 menyimpan data dan menampilkan data
produk_pertama = "Kopi Pagi"
harga_produk_pertama = 18000.5
nama_produk_kedua = "Roti Cokelat"
harga_produk_kedua = 10000
status= True

print(f"Nama produk 1: {produk_pertama}")
print(f"Harga produk 1: {harga_produk_pertama}")
print(f"Nama produk 2: {nama_produk_kedua}")
print(f"Harga produk 2: {harga_produk_kedua}")
print(f"Status ketersediaan roti: {status}")

# Tugas 2 konversi tipe data dan input data
jumlah_kopi_str = input("\nMasukkan Jumlah Pesanan Kopi: ")
jumlah_roti_str = input("Masukkan Jumlah Pesanan Roti: ")
print(f"type data awal jumlah kopi: {type(jumlah_kopi_str)}")
print(f"type data awal jumlah rot: {type(jumlah_roti_str)}")
jumlah_kopi_int = int(jumlah_kopi_str)
jumlah_roti_int = int(jumlah_roti_str)
print(f"Tipe data setelah konversi: {type(jumlah_kopi_int) and type(jumlah_roti_int)}")

# Tugas 3 operasi pada angka
total_kopi = harga_produk_pertama * jumlah_kopi_int
total_roti = harga_produk_kedua * jumlah_roti_int
total_belanja = total_kopi + total_roti
uang_bayar = 50000
print(f"\nTotal harga kopi: {total_kopi}")
print(f"Total harga roti: {total_roti}")
print(f"Total belanja keseluruhan: {total_belanja}")
print(f"Uang yang dibayarkan: {uang_bayar}")
print(f"Kembalian: {uang_bayar - total_belanja}")

# tugas 4 operasi string
nama_pelanggan = input("\nMasukkan nama anda: ")
pesan_terima_kasih = f"Terima kasih,{nama_pelanggan} sudah berbelanja di Coffee Shop Bahagia!"
garis = "*" * 25
print(garis)
print(pesan_terima_kasih)
print(garis)
print(f"Total harga Kopi Pagi adalah Rp{total_kopi}")