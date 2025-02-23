kegiatan = input("apa yang ada inginkan:")
def tarik_uang():
    print("Selamat datang di ATM!")

    # Masukkan kartu dan pilih bahasa (dianggap sudah dilakukan)

    # Masukkan PIN
    while True:
        pin = input("Masukkan PIN (6 digit): ")
        if len(pin) == 6 and pin.isdigit():
            break
        else:
            print("PIN harus 6 digit angka.")

    # Cek PIN
    pin_benar = True  # Ganti dengan logika pengecekan PIN sebenarnya
    if not pin_benar:
        print("PIN salah. Kartu ATM diblokir.")
        return
 
    # Pilih nominal
    nominal_valid = False
    while not nominal_valid:
        nominal = input("Masukkan nominal yang diinginkan: ")
        if nominal.isdigit():
            nominal = int(nominal)
            # Cek ketersediaan nominal di sini (ganti dengan logika pengecekan saldo, dll.)
            if nominal >= 10000:
                nominal_valid = True
            else:
                print("Nominal tidak valid.")
        else:
            print("Nominal harus berupa angka.")

    # Pilih jenis rekening
    jenis_rekening = input("Pilih jenis rekening (Contoh: Tabungan): ")

    # Proses pengambilan uang
    print("Uang sedang diproses...")
    print("Ambil uang Anda.")

    # Cetak struk
    print("Struk sedang dicetak...")

    # Tanyakan transaksi lain
    lanjut = input("Apakah Anda ingin melakukan transaksi lain? (y/n): ")
    if lanjut.lower() == 'y':
        tarik_uang()

if kegiatan == ("tarik uang"):
    tarik_uang()
    
else:
    print("program eror")