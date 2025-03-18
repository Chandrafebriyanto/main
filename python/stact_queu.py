class node:
    def __init__(self, data):
        self.data = data
        self.next = None
        self.prev = None
        
class StackDoubleLinkedList:
    def __init__(self):
        self.top = None       
    
    def is_empty(self):
        return self.top is None
    
    def push(self, item):
        new_node = node(item)
        if self.top:
            new_node.prev = self.top
        self.top = new_node
        
    def pop(self):
        if self.is_empty():
            print('Stack is empty!')
            return None
        item = self.top.data
        self.top = self.top.prev
        return item
    
    def peek(self):
        if self.is_empty():
            return None
        return self.top.data
    
    def display(self):
        temp = self.top
        while temp:
            print(temp.data, end=' ')
            temp = temp.prev
        print()

stack = StackDoubleLinkedList()
print("===============PERTAMA===============")
stack.push(100)
stack.push(200)
stack.push(300)
print("array sebeleum di pop")
stack.display()
print( "\npop: ",stack.pop())
print( "pop: ",stack.pop())
print("\narray setelah di pop")
stack.display()


print("\n================KEDUA================")
stack.push(50)
stack.push(150)
stack.push(250)
stack.push(350)
print("array sebeleum di pop")
stack.display()
print("\ntop stack: ",stack.peek())
print( "pop: ",stack.pop())
print("\narray setelah di pop")
stack.display()