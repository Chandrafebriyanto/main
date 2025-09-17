# PRAKTIKUM FOOD (027_prak1_food.py)
class Menuitem:
    def __init__(self, index, name, price, details):
        self.name = name
        self.price = price
        self.details = details
        self.index = index
    
    def menu(self):
        print(f"{self.index}. {self.name} : ${self.price}, ({self.details})")
    
    def count(self, many):
        if many >= 3:
            return self.price * many * 0.9
        
        return self.price * many

menus = [
    [1, "Nasi Goreng",          10000,  "330kcal"], 
    [2, "Mie Goreng",           10000,  "180kcal"], 
    [3, "Nasi Goreng Campur",   13000,  "420kcal"],
    [4, "Es Teh",               3000,   "180mL"],
    [5, "Es Jeruk",             5000,   "180mL"],
    [6, "Kopi",                 4000,   "30mL"],
    ]

print("Menu:")
for index, name, price, details in menus:
    menu_item = Menuitem(index, name, price, details)
    menu_item.menu()
print("-"*30)

order = int(input("Masukan nomer menu yang ingin dipesan: "))
order_selected = menus[order - 1]
order_item = Menuitem(order_selected[0], order_selected[1], order_selected[2], order_selected[3])
many = int(input("Masukan jumlah pesanan: '(akan mendapatkan potongan 10% jika pembelian 3 atau lebih)' "))

result = order_item.count(many)
print("-"*30)
print("Rincian Pembelian:")
print(f"Menu : {order_item.name}")
print(f"Harga satuan: ${order_item.price}")
print(f"Jumlah: {many}")
if many >= 3:
    print("Mendapatkan diskon 10%")
print(f"Total Pembayaran: Rp{result}")
print("-"*30)