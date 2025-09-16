# PRAKTIKUM FOOD (027_prak1_food.py)
class Menuitem:
    def __init__(self, name, price, details):
        self.name = name
        self.price = price
        self.details = details
    
    def menu(self):
        print("Menu")
        print(f"{self.name} : {self.price} ({self.details})")
    
    def count(self):
        if self.details >= 3:
            return self.price * self.details * 0.9
        
        return self.price * self.details

menus = []