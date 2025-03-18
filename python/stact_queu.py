# #tittle: stack
# class node:
#     def __init__(self, data):
#         self.data = data
#         self.next = None
#         self.prev = None
        
# class StackDoubleLinkedList:
#     def __init__(self):
#         self.top = None       
    
#     def is_empty(self):
#         return self.top is None
    
#     def push(self, item):
#         new_node = node(item)
#         if self.top:
#             new_node.prev = self.top
#         self.top = new_node
        
#     def pop(self):
#         if self.is_empty():
#             print('Stack is empty!')
#             return None
#         item = self.top.data
#         self.top = self.top.prev
#         return item
    
#     def peek(self):
#         if self.is_empty():
#             return None
#         return self.top.data
    
#     def display(self):
#         temp = self.top
#         while temp:
#             print(temp.data, end=' ')
#             temp = temp.prev
#         print()

# stack = StackDoubleLinkedList()
# print("===============PERTAMA===============")
# stack.push(100)
# stack.push(200)
# stack.push(300)
# print("array sebeleum di pop")
# stack.display()
# print( "\npop: ",stack.pop())
# print( "pop: ",stack.pop())
# print("\narray setelah di pop")
# stack.display()


# print("\n================KEDUA================")
# stack.push(50)
# stack.push(150)
# stack.push(250)
# stack.push(350)
# print("array sebeleum di pop")
# stack.display()
# print("\ntop stack: ",stack.peek())
# print( "pop: ",stack.pop())
# print("\narray setelah di pop")
# stack.display()
# print("")


# #tittle: queue Biasa dengan Array
# class QueueArray:
#     def __init__(self, size):
#         self.queue = [None] * size
#         self.front = 0
#         self.rear = -1
#         self.size = size
#         self.count = 0

#     def is_empty(self):
#         return self.count == 0

#     def is_full(self):
#         return self.count == self.size

#     def enqueue(self, item):
#         # print(f"Before Enqueue: {self.queue}")
#         if self.is_full():
#             print("Queue penuh!")
#             return
#         self.rear = (self.rear + 1) % self.size  # Wrap around
#         self.queue[self.rear] = item
#         self.count += 1
#         print(f"setelah nilai {item} masuk   --> {self.queue}")

#     def dequeue(self):
#         # print(f"Before Dequeue: {self.queue}")
#         if self.is_empty():
#             print("Queue kosong!")
#             return None
#         item = self.queue[self.front]
#         self.queue[self.front] = None
#         self.front = (self.front + 1) % self.size  # Wrap around
#         self.count -= 1
#         print(f"setelah nilai {item} keluar  --> {self.queue}")
#         return item

# # Contoh penggunaan
# print("==============Queue Biasa dengan Array #1==================")
# queue = QueueArray(5)
# queue.enqueue(10)
# queue.enqueue(20)
# queue.enqueue(30)
# queue.enqueue(40)
# queue.enqueue(50)
# queue.dequeue()
# queue.dequeue()
# print("=========================================================")

# print("\n=================Queue Biasa dengan Array #2====================")
# queue = QueueArray(6)
# queue.enqueue(5)
# queue.enqueue(15)
# queue.dequeue()
# queue.enqueue(25)
# queue.enqueue(35)
# queue.dequeue()
# queue.enqueue(45)
# queue.enqueue(50)
# queue.dequeue()
# print("==============================================================")


#tittle: Circular Queue dengan Array
class CircularQueueArray:
    def __init__(self, size):
        self.queue = [None] * size
        self.front = -1
        self.rear = -1
        self.size = size
    
    def is_empty(self):
        return self.front == -1
    
    def is_full(self):
        return (self.rear + 1) % self.size == self.front
    
    def enqueue(self, item):
        if self.is_full():
            print("Queue penuh!")
            return
        if self.is_empty():
            self.front = 0
        self.rear = (self.rear + 1) % self.size
        self.queue[self.rear] = item
        print(f"setelah nilai {item} masuk   --> {self.queue}")
        
    def dequeue(self):
        if self.is_empty():
            print("Queue kosong!")
            return None
        item = self.queue[self.front]
        self.queue[self.front] = None
        if self.front == self.rear:
            self.front = -1
            self.rear = -1
        else:
            self.front = (self.front + 1) % self.size
        print(f"setelah nilai {item} keluar  --> {self.queue}")
        return item

# Contoh penggunaan
print("==============Circular Queue dengan Array #1==================")
cq = CircularQueueArray(5)
cq.enqueue(1)
cq.enqueue(2)
cq.dequeue()
cq.enqueue(3)
cq.dequeue()
cq.enqueue(4)
cq.enqueue(5)
print("=============================================================")

print("\n==============Circular Queue dengan Array #2==================")
cq = CircularQueueArray(7)
cq.enqueue(10)
cq.enqueue(20)
cq.enqueue(30)
cq.enqueue(40)
cq.enqueue(50)
cq.enqueue(60)
cq.enqueue(70)
cq.dequeue()
cq.dequeue()
print("=============================================================")


#tittle: Double Ended Queue (Deque) dengan Array
