def view_contact(contact_book):
    name = input()
    if name in contact_book:
        print(f"Name: {name}")
        for key, Value in contact_book[name].items():
            key = key.capitalize()
            print(f"{key}: {Value}")
    else: 
        print("Contact not found!")
    
contact_book = {"Alice": {"phone": "123-456-7890", "email": "alice@example.com", "address": "123 Main St"}}
view_contact(contact_book)

