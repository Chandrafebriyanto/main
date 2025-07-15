def is_valid(username, password):
    if username == "admin" or username == "user":
        if username == "user" and password == "qweasd":
            return True
        elif username == "admin":
            return True
        else:
            return False
    else:
        return False

print(is_valid("user", "123dc3"))

