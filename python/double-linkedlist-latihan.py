class node:
    def __init__(self, value):
        self.value = value
        self.next = None
        self.prev = None

class double_linkedlist:
    def __init__(self, value):
        new_node = node(value)
        self.head = new_node
        self.tail = new_node
        self.length = 1
    
    def append(self, value):
        new_node = node(value)
        if self.head == 0:
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
        return temp.value
    
    def prepend(self, value):
        new_node = node(value)
        if self.head == 0:
            self.head = new_node
            self.tail = new_node
        else:
            new_node.next = self.head
            self.head.prev = new_node
            self.head = new_node
        self.length += 1
    
    def insert(self, index, value):
        if index < 0 or index >= self.length:
            return False
        if index == 0:
           return self.prepend(value)
        if index == self.length:
           return self.append(value)
       
        new_node = node(value)
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
            return None
        if index == 0:
            removed_node = self.head
            self.head = self.head.next
            if self.head:
                self.head.prev = None
            self.length -= 1
            return removed_node.value
        if index == self.length - 1:
            return self.pop()
        
        temp = self.head
        for i in range(index):
            temp = temp.next
        
        temp.prev.next = temp.next
        temp.next.prev = temp.prev
        self.length -= 1
        return temp.value
    
    def print_list(self):
        temp = self.head
        while temp:
            print(temp.value,)
            temp = temp.next
        print()


my_list = double_linkedlist(10) 
my_list.print_list()

my_list.append(20)
my_list.append(30)
my_list.print_list()

my_list.prepend(5)
my_list.print_list()

my_list.insert(2, 15)
my_list.print_list()

my_list.remove(2)
my_list.print_list()

my_list.remove(0)
my_list.print_list()

my_list.pop()
my_list.print_list()    
