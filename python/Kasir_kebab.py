import tkinter as tk
from tkinter import messagebox

# Harga tetap
kebab = 12000
minuman = 7000

total_kebab = 0
total_minuman = 0
total_uang_masuk = 0

def update_total_pembayaran(*args):
    try:
        banyak_kebab = int(entry_kebab.get()) if entry_kebab.get() else 0
        banyak_minuman = int(entry_minuman.get()) if entry_minuman.get() else 0
    except ValueError:
        label_total_pembayaran.config(text="Total Pembayaran: Input tidak valid")
        return

    # Hitung total pembayaran
    total_pembayaran = banyak_kebab * kebab + banyak_minuman * minuman
    label_total_pembayaran.config(text=f"Total Pembayaran: {total_pembayaran}")

def proses_transaksi():
    global total_kebab, total_minuman, total_uang_masuk

    try:
        banyak_kebab = int(entry_kebab.get()) if entry_kebab.get() else 0
        banyak_minuman = int(entry_minuman.get()) if entry_minuman.get() else 0
        uang_pembayaran = int(entry_uang.get()) if entry_uang.get() else 0
    except ValueError:
        messagebox.showerror("Input Error", "Input tidak valid. Mohon masukkan angka yang benar.")
        return

    # Hitung total pembayaran
    total_pembayaran = banyak_kebab * kebab + banyak_minuman * minuman

    if uang_pembayaran >= total_pembayaran and total_pembayaran > 0:
        kembalian = uang_pembayaran - total_pembayaran

        # Update total penjualan
        total_kebab += banyak_kebab
        total_minuman += banyak_minuman
        total_uang_masuk = total_kebab * kebab + total_minuman * minuman

        # Tampilkan hasil
        messagebox.showinfo("Transaksi Berhasil", f"Total Pesanan: {total_pembayaran}\nKembalian: {kembalian}")

        # Reset input
        entry_kebab.delete(0, tk.END)
        entry_minuman.delete(0, tk.END)
        entry_uang.delete(0, tk.END)
        label_total_pembayaran.config(text="Total Pembayaran: -")
    elif uang_pembayaran < total_pembayaran:
        messagebox.showerror("Pembayaran Kurang", "Uang yang dibayarkan tidak cukup!")

def lihat_total():
    global total_kebab, total_minuman, total_uang_masuk
    messagebox.showinfo(
        "Total Penjualan",
        f"Total Kebab Terjual: {total_kebab}\nTotal Minuman Terjual: {total_minuman}\nTotal Uang Masuk: {total_uang_masuk}"
    )

# Membuat GUI
root = tk.Tk()
root.title(" Kasir Kebab")
root.geometry("500x500")

# Label judul
label_judul = tk.Label(root, text="Kasir Kebab", font=("Arial", 24))
label_judul.pack(pady=10)

# Input banyak kebab
label_kebab = tk.Label(root, text="Jumlah Kebab:")
label_kebab.pack()
entry_kebab = tk.Entry(root)
entry_kebab.pack(pady=5)
entry_kebab.bind("<KeyRelease>", update_total_pembayaran)

# Input banyak minuman
label_minuman = tk.Label(root, text="Jumlah Minuman:")
label_minuman.pack()
entry_minuman = tk.Entry(root)
entry_minuman.pack(pady=5)
entry_minuman.bind("<KeyRelease>", update_total_pembayaran)

# Input uang pembayaran
label_uang = tk.Label(root, text="Uang Pembayaran:")
label_uang.pack()
entry_uang = tk.Entry(root)
entry_uang.pack(pady=5)

# Label total pembayaran
label_total_pembayaran = tk.Label(root, text="Total Pembayaran: -", font=("Arial", 12))
label_total_pembayaran.pack(pady=10)

# Tombol proses transaksi
btn_proses = tk.Button(root, text="Proses Transaksi", command=proses_transaksi)
btn_proses.pack(pady=10)

# Tombol lihat total penjualan
btn_total = tk.Button(root, text="Lihat Total Penjualan", command=lihat_total)
btn_total.pack(pady=10)

# Tombol keluar
btn_keluar = tk.Button(root, text="Keluar", command=root.quit)
btn_keluar.pack(pady=10)

# Jalankan aplikasi
root.mainloop()
