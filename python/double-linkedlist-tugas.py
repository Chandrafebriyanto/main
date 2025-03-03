#date: 05 - 02 -26
class node:
    def __init__(self, name, nim):
        self.name = name
        self.nim = nim
        self.next = None
        self.prev = None
        
class double_linkedlist:
    def __init__(self, name, nim):
        new_node = node(name, nim)
        self.head = new_node
        self.tail = new_node
        self.length = 1
    
    def append(self, name, nim):
        new_node = node(name, nim)
        if self.length == 0:
            self.head = new_node
            self.tail = new_node
        else: 
            self.tail.next = new_node
            new_node.prev = self.tail
            self.tail = new_node
        self.length += 1
    
    def pop(self):
        if self.length == 0:
            return None
        temp = self.tail
        if self.length == 1:
            self.head = None
            self.tail = None
        else:
            self.tail = self.tail.prev
            self.tail.next = None
            temp.prev = None
        self.length -= 1
        return temp.name, temp.nim
    
    def prepend(self, name, nim):
        new_node = node(name, nim)
        if self.length == 0:
            self.head = new_node
            self.tail = new_node
        else:
            new_node.next = self.head
            self.head.prev = new_node
            self.head = new_node
        self.length += 1
        
    def insert(self, index, name, nim):
        if index < 0 or index >= self.length:
            return False
        if index == 0:
            return self.prepend(name, nim)
        if index == self.length:
            return self.append(name, nim)
        
        new_node = node(name, nim)
        temp = self.head
        for i in range(index-1):
            temp = temp.next
        
        new_node.next = temp.next
        new_node.prev = temp
        temp.next.prev = new_node
        temp.next = new_node
        self.length += 1
        return True
    
    def remove(self, index):
        if index < 0 or index >= self.length:
            return False
        if index == 0:
            removed_node = self.head
            self.head = self.head.next
            if self.head:
                self.head.prev = None
            self.length -= 1
            return removed_node.data
        if index == self.length - 1:
            return self.pop()
        
        temp = self.head
        for i in range(index):
            temp = temp.next
            
        temp.prev.next = temp.next
        temp.next.prev = temp.prev
        self.length -= 1
        return temp.name, temp.nim
    
    def print_list(self):
        temp = self.head
        while temp:
            print(f'Nama: {temp.name},  NIM: {temp.nim}')
            temp = temp.next
            
#tittle: input data
#note: the input data is a double linked list 
my_list = double_linkedlist('Candra', 24091397027)
print("data awal")
my_list.print_list()

my_list.append('Rizky', 24091397025)
my_list.append('Lera', 24091397001)
my_list.append('Margarita', 24091397012)
print('\ndata setelah menjalankan fungsi append')
my_list.print_list()

my_list.prepend('Fahrel', 24091397024)
print('\ndata setelah menjalankan fungsi prepend')
my_list.print_list()

my_list.insert(1, 'Ahnaf', 24091397023)
print('\ndata setelah menjalankan fungsi insert')
my_list.print_list()

my_list.remove(3)
print('\ndata setelah menjalankan fungsi remove')
my_list.print_list()

my_list.pop()
print('\ndata setelah menjalankan fungsi pop')
my_list.print_list()

