def merge(lst1, lst2):
    my_list = lst1
    my_list.extend(lst2)
    my_list.sort()
    print(my_list)

x = [1,2,3]
y = [4,5,6]
merge(x,y)