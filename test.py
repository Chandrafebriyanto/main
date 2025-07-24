def calculate_discount(price, discount_percentage):
    total_after_discount = price * ((100 - discount_percentage)/100)
    return total_after_discount

print (calculate_discount(75.5, 10))  # Should print 80.0