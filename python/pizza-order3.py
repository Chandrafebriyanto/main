def pizza_order():
    """Fungsi untuk memesan pizza"""

    # Kamus harga
    prices = {
        "small": 10000,
        "medium": 15000,
        "large": 20000
    }
    toppings_price = 5000

    # Tampilkan menu pizza
    print("Selamat datang di Pizza Hut!")
    print("Menu Pizza:")
    print("1. Margherita")
    print("2. Pepperoni")
    print("3. Vegetarian")

    # Minta pengguna memilih jenis pizza
    pizza_type = int(input("Pilih jenis pizza (1, 2, atau 3): "))

    # Minta pengguna memilih ukuran pizza
    pizza_size = input("Pilih ukuran pizza (small, medium, atau large): ").lower()

    # Minta pengguna memilih tambahan topping
    add_toppings = input("Apakah Anda ingin menambahkan topping? (y/n): ").lower()

    # Hitung harga dasar
    base_price = prices[pizza_size]

    # Hitung harga tambahan topping
    if add_toppings == 'y':
        num_toppings = int(input("Berapa banyak topping yang ingin Anda tambahkan? "))
        topping_price = num_toppings * toppings_price
    else:
        topping_price = 0

    # Hitung total harga
    total_price = base_price + topping_price

    # Tampilkan rincian pesanan dan total harga
    print("\nRincian Pesanan:")
    print(f"Jenis Pizza: {pizza_type}")
    print(f"Ukuran Pizza: {pizza_size}")
    print(f"Jumlah Topping: {num_toppings}")
    print(f"Total Harga: Rp {total_price}")

# Panggil fungsi utama
pizza_order()