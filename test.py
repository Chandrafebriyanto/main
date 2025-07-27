def view_contact(contact_book):
    name = input()
    print(f"Name: {name}")
    if name in contact_book:
        for key, Value in contact_book[name].items():
            print(f"{key}: {Value}")
    else: 
        print("Contact not found!")
    
contact_book = {"Alice": {"phone": "123-456-7890", "email": "alice@example.com", "address": "123 Main St"}}
view_contact(contact_book)

