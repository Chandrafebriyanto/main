# LATIHAN BUAH (027_prakt1_buah.py)
class fruits:
    def __init__(self, name, shape, color, taste, stock):
        self.name = name
        self.shape = shape
        self.color = color
        self.taste = taste
        self.stock = stock
    
    def describe(self):
        print(f"Fruit: {self.name}")
        print(f"Shape: {self.shape}")
        print(f"Color: {self.color}")
        print(f"Taste: {self.taste}")
        print(f"Stock: {self.stock}")
        print(f"We can make salad, juice, and pudding with '{self.name}'")
        print()
    
    def make_salad(self):
     print(f"=== {self.name} Stock ===")
     print(f"Remaining stock before making salad is {self.stock} fruits")
     print("Fruit used to make salad: 2 Fruits")
     self.stock -= 2
     print(f"Remaining fruit stock now is {self.stock} fruits")
     print()

fruit_1 = fruits("Apple", "Round", "Red", "Sweet", 10)
fruit_2 = fruits("Banana", "Curved", "Yellow", "Sweet", 20)
fruit_3 = fruits("Orange", "Round", "Orange", "Sweet and Sour", 15)

# print(fruits)
# print(fruit_1)
# print(fruit_1.name)

fruit_1.describe()
fruit_2.describe()
fruit_3.describe()

fruit_1.make_salad()
fruit_2.make_salad()