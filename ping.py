def prod(lst):
    my_list = []
    for i in range (len(lst)-1, -1, -1):
        my_list.append(lst[i])
    print(my_list)

x = [8, 4, 1, 2, 3, 5, 1]
prod(x)