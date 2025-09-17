# PRAKTIKUM FOOD (027_prak1_food.py)
class Menuitem:
    def __init__(self, index, name, price, details):
        self.name = name
        self.price = price
        self.details = details
        self.index = index
    
    def menu(self):
        print(f"{self.index}. {self.name} : ${self.price} ({self.details})")
    
    def count(self, many):
        if many >= 3:
            return self.price * many * 0.9
        
        return self.price * many

menus = [
    [1, "Sandwich", 5, "330kcal"], 
    [2, "Chocolate", 4, "420kcal"], 
    [3, "Cream Puff", 2, "180kcal"],
    [4, "Coffee", 3, "180mL"],
    [5, "Orange Juice", 2, "350mL"],
    [6, "Expresso", 3, "30mL"],
    ]

print("Menu:")
for index, name, price, details in menus:
    menu_item = Menuitem(index, name, price, details)
    menu_item.menu()
print("-"*30)

order = int(input("Enter menu number to order: "))
order_selected = menus[order - 1]
order_item = Menuitem(order_selected[0], order_selected[1], order_selected[2], order_selected[3])
many = int(input("How many meals would you like to purchase? (10% off for 3 or more): "))

result = order_item.count(many)
print(f"Total cost: ${result}")