class Node:
    def __init__(self, value):
        self.value = value
        self.next = None
        
class LinkedList:
    def __init__(self, value):
        new_node = Node(value)
        self.head = new_node
        self.tail = new_node
        self.length = 1
    
    def display(self):
        temp  = self.head
        while temp:
            print(temp.value)
            temp= temp.next
        print("None")
        
    def append(self, value):
        new_node = Node(value)
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
        return temp.value
    
    # def pop(self):
    #     if self.length == 0:
    #         return None
    #     temp = self.head
    #     pre = self.head
    #     while temp.next:
    #         pre = temp
    #         temp = temp.next
    #     if self.length == 1:
    #         self.head = None
    #         self.tail = None
    #     else:
    #         pre.next = None
    #         self.tail = pre
    #     self.length -= 1
    #     return temp.data
        
my_list = LinkedList(10)
my_list.append(20)
my_list.pop()
my_list.display() 