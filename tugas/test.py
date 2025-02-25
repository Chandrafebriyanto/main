#tittle: O(1)
def big0(n):
    print(f'{n}+{n}+{n}')

#tittle: O(n log n)
big0(10)
print('=====================')
def log(n):
    i = 1
    while i < n:
        print(i)
        i *= 2

log(16)
def log(n):
    i = 1
    while i < n:
        print(i)
        i *= 2

log(16)

print('=====================')
#tittle: append
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        
class LinkedList:
    def __init__(self, data):
        new_node = Node(data)
        self.head = new_node
        self.tail = new_node
        self.length = 1
    
    def display(self):
        current  = self.head
        while current != None:
            print(current.data)
            current = current.next
        print("None")
        
    def append(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
            self.tail = new_node
        else:
            self.tail.next = new_node
            self.tail = new_node
        self.length += 1
        
my_list = LinkedList(10)
my_list.append(20)
my_list.display()

print('=====================')
#tittle: pop 
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        
class LinkedList:
    def __init__(self, data):
        new_node = Node(data)
        self.head = new_node
        self.tail = new_node
        self.length = 1
    
    def display(self):
        current  = self.head
        while current != None:
            print(current.data)
            current = current.next
        print("None")
        
    def append(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
            self.tail = new_node
        else:
            self.tail.next = new_node
            self.tail = new_node
        self.length += 1
    
    def pop(self):
        if self.length == 0:
            return None
        temp = self.head
        pre = self.head
        while temp.next:
            pre = temp
            temp = temp.next
        pre.next = None
        self.tail = pre
        self.length -= 1
        if self.length == 0:
            self.head = None
            self.tail = None
        return temp.data
    
my_list = LinkedList(10)
my_list.append(20)
my_list.pop()
my_list.display() 

print('=====================')
#tittle:  Prepend
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        
class LinkedList:
    def __init__(self, data):
        new_node = Node(data)
        self.head = new_node
        self.tail = new_node
        self.length = 1
    
    def display(self):
        current  = self.head
        while current != None:
            print(current.data)
            current = current.next
        print("None")
        
    def append(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
            self.tail = new_node
        else:
            self.tail.next = new_node
            self.tail = new_node
        self.length += 1
    
    def pop(self):
        if self.length == 0:
            return None
        temp = self.head
        pre = self.head
        while temp.next:
            pre = temp
            temp = temp.next
        pre.next = None
        self.tail = pre
        self.length -= 1
        if self.length == 0:
            self.head = None
            self.tail = None
        return temp.data
    
    def prepend(self, data):
        new_node = Node(data)
        if self.length == 0:
            self.head = new_node
            self.tail = new_node
        else:
            new_node.next = self.head
            self.head = new_node
        self.length += 1
    
my_list = LinkedList(10)
my_list.prepend(5)
my_list.append(20)
my_list.pop()
my_list.display() 

print('=====================')
#tittle: remove
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        
class LinkedList:
    def __init__(self, data):
        new_node = Node(data)
        self.head = new_node
        self.tail = new_node
        self.length = 1
    
    def display(self):
        current  = self.head
        while current != None:
            print(current.data)
            current = current.next
        print("None")
        
    def append(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
            self.tail = new_node
        else:
            self.tail.next = new_node
            self.tail = new_node
        self.length += 1
    
    def pop(self):
        if self.length == 0:
            return None
        temp = self.head
        pre = self.head
        while temp.next:
            pre = temp
            temp = temp.next
        pre.next = None
        self.tail = pre
        self.length -= 1
        if self.length == 0:
            self.head = None
            self.tail = None
        return temp.data
    
    def prepend(self, data):
        new_node = Node(data)
        if self.length == 0:
            self.head = new_node
            self.tail = new_node
        else:
            new_node.next = self.head
            self.head = new_node
        self.length += 1
    
    def insert(self, index, data):
        if index < 0 or index > self.length:
            return False
        if index == 0:
            return self.prepend(data)
        if index == self.length:
            return self.append(data)
        new_node = Node(data)
        temp = self.head
        for i in range(index-1):
            temp = temp.next
        new_node.next = temp.next
        temp.next = new_node
        self.length += 1
        return True
my_list = LinkedList(10)
# my_list.prepend(5)
my_list.append(20)
my_list.insert(2, 15)
# my_list.pop()
my_list.display() 
    
print('=====================')
#tittle: remove
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        
class LinkedList:
    def __init__(self, data):
        new_node = Node(data)
        self.head = new_node
        self.tail = new_node
        self.length = 1
    
    def display(self):
        current  = self.head
        while current != None:
            print(current.data)
            current = current.next
        print("None")
        
    def append(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
            self.tail = new_node
        else:
            self.tail.next = new_node
            self.tail = new_node
        self.length += 1
    
    def pop(self):
        if self.length == 0:
            return None
        temp = self.head
        pre = self.head
        while temp.next:
            pre = temp
            temp = temp.next
        pre.next = None
        self.tail = pre
        self.length -= 1
        if self.length == 0:
            self.head = None
            self.tail = None
        return temp.data
    
    def prepend(self, data):
        new_node = Node(data)
        if self.length == 0:
            self.head = new_node
            self.tail = new_node
        else:
            new_node.next = self.head
            self.head = new_node
        self.length += 1
    
    def insert(self, index, data):
        if index < 0 or index > self.length:
            return False
        if index == 0:
            return self.prepend(data)
        if index == self.length:
            return self.append(data)
        new_node = Node(data)
        temp = self.head
        for i in range(index-1):
            temp = temp.next
        new_node.next = temp.next
        temp.next = new_node
        self.length += 1
        return True
    
    def remove(self, index):
        if index < 0 or index >= self.length:
            return None
        if index == 0:
            removed_node = self.head
            self.head = self.head.next
            self.length -= 1
            return removed_node.data
        temp = self.head
        for i in range(index-1):
            temp = temp.next
        removed_node = temp.next
        temp.next = removed_node.next
        self.length -= 1
        return removed_node.data
    
my_list = LinkedList(10)
# my_list.prepend(5)
my_list.append(20)
my_list.insert(2, 15)
my_list.remove(1)
# my_list.pop()
my_list.display() 


