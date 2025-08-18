inventory = {}

def add_item(item:str, price:float, stock:int):
    if item in inventory:
        print(f"Error: Item '{item}' already exists.")
        return
    inventory[item] = {"price": price, "stock": stock}
    print(f"Item '{item}' added successfully.")
    
def update_stock(item:str, quantity:int):
    if item not in inventory:
        print(f"Error: Item '{item}' not found.")
        return
    if inventory[item]["stock"] + quantity < 0:
        print(f"Error: Insufficient stock for '{item}'.")
        return
    
    inventory[item]["stock"] += quantity
    print(f"Stock for '{item}' updated successfully.")

def check_availability(item:str):
    if item not in inventory:
        return "Item not found"
    stock = inventory[item]["stock"]
    return stock

def sales_report(sales):
    total_revenue = 0
    for item, quantity in sales.items():
        print(f"Item: {item}, Quantity: {quantity}")


add_item("Apple", 0.5, 50)
add_item("Banana", 0.2, 60)
sales = {"Apple": 30, "Banana": 20, "Orange": 10}  # Orange should print an error
print(sales_report(sales))  # Should output: 19.0
print(inventory)