def add_contact(contact_book):
    name = input("Enter contact name: ")
    phone = input("Enter phone number: ")
    email = input("Enter email address: ")
    address = input("Enter physical address: ")
    
    if name in contact_book:
        print(f"Contact already exists!")
    else:
        contact_book[name] = {"phone": phone, "email": email, "address": address}
        print(f"Contact added successfully!")
        
add_contact({"Bob": {"phone": "234-567-8901", "email": "bob@example.com", "address": "456 Oak Ave"}})