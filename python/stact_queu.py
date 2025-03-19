# #tittle: STACK DOUBLE LINKED LIST
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

#contoh penggunaan
stack = StackDoubleLinkedList()
print("===============STACK DOUBLE LINKED LIST #1===============")
stack.push(100)
stack.push(200)
stack.push(300)
print("array sebeleum di pop")
stack.display()
print( "\npop: ",stack.pop())
print( "pop: ",stack.pop())
print("\narray setelah di pop")
stack.display()
print("=========================================================")


print("\n===============STACK DOUBLE LINKED LIST #2===============")
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
print("=========================================================")


#tittle: QUEUE DENGAN ARRAY
class QueueArray:
    def __init__(self, size):
        self.queue = [None] * size
        self.front = 0
        self.rear = -1
        self.size = size
        self.count = 0

    def is_empty(self):
        return self.count == 0

    def is_full(self):
        return self.count == self.size

    def enqueue(self, item):
        if self.is_full():
            print("Queue penuh!")
            return
        self.rear = (self.rear + 1) % self.size
        self.queue[self.rear] = item
        self.count += 1
        print(f"\nsetelah nilai {item} masuk   --> {self.queue}")

    def dequeue(self):
        if self.is_empty():
            print("Queue kosong!")
            return None
        item = self.queue[self.front]
        self.queue[self.front] = None
        self.front = (self.front + 1) % self.size  # Wrap around
        self.count -= 1
        print(f"\nsetelah nilai {item} keluar  --> {self.queue}")
        return item

# Contoh penggunaan
print("\n\n==============Queue Biasa dengan Array #1==================")
queue = QueueArray(5)
queue.enqueue(10)
queue.enqueue(20)
queue.enqueue(30)
queue.enqueue(40)
queue.enqueue(50)
queue.dequeue()
queue.dequeue()
print("=========================================================")

print("\n=================Queue Biasa dengan Array #2====================")
queue = QueueArray(6)
queue.enqueue(5)
queue.enqueue(15)
queue.dequeue()
queue.enqueue(25)
queue.enqueue(35)
queue.dequeue()
queue.enqueue(45)
queue.enqueue(50)
queue.dequeue()
print("==============================================================")


#tittle: CIRCULAR QUEUE DENGAN ARRAY
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
        print(f"/nsetelah nilai {item} masuk   --> {self.queue}")
        
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
        print(f"/nsetelah nilai {item} keluar  --> {self.queue}")
        return item

# Contoh penggunaan
print("\n\n==============Circular Queue dengan Array #1==================")
cq = CircularQueueArray(5)
cq.dequeue()
cq.enqueue(1)
cq.enqueue(2)
cq.enqueue(3)
cq.dequeue()
cq.enqueue(4)
cq.enqueue(5)
print("=============================================================")

print("\n====================Circular Queue dengan Array #2====================")
cq = CircularQueueArray(7)
cq.enqueue(10)
cq.enqueue(20)
cq.enqueue(30)
cq.enqueue(40)
cq.enqueue(50)
cq.enqueue(60)
cq.enqueue(70)
cq.enqueue(80)
cq.dequeue()
cq.dequeue()
print("=====================================================================")


#tittle: DOUBLE ENDED QUEUE (DEQUE) DENGAN ARRAY
from collections import deque

class Deque:
    def __init__(self):
        self.deque = deque()
    
    def add_front(self, item):
        print(f"\nsebelum menambahkan nilai       --> {self.deque}")
        self.deque.appendleft(item)
        print(f"setelah nilai {item} ditambahkan    --> {self.deque}")
    
    def add_rear(self, item):
        print(f"\nsebelum menambahkan nilai       --> {self.deque}")
        self.deque.append(item)
        print(f"setelah nilai {item} ditambahkan    --> {self.deque}")
        
    def remove_front(self):
        print(f"\nsebelum menghapus nilai     --> {self.deque}")
        item = self.deque.popleft()
        print(f"setelah nilai {item} dihapus    --> {self.deque}")
        return item
    
    def remove_rear(self):
        print(f"\nsebelum menghapus nilai     --> {self.deque}")
        item = self.deque.pop()
        print(f"setelah nilai {item} dihapus    --> {self.deque}")
        return item

# Contoh penggunaan
print("\n\n==============Double Ended Queue (Deque) dengan Array #1==================")
my_deque = Deque()  # Renamed variable to avoid conflict
my_deque.add_front(100)
my_deque.add_front(200)
my_deque.add_front(300)
my_deque.add_rear(400)
my_deque.add_rear(500)
my_deque.remove_front()
my_deque.remove_rear()
print("==========================================================================")

print("\n=============Double Ended Queue (Deque) dengan Array #2=================")
my_deque = Deque()  # Renamed variable to avoid conflict
my_deque.add_rear(10)
my_deque.add_rear(20)
my_deque.add_rear(30)
my_deque.add_front(40)
my_deque.add_front(50)
my_deque.remove_front()
my_deque.remove_rear()
print("==========================================================================")

#tittle: PRIORITAS QUEUE
import heapq
class PriorityQueue:
    def __init__(self):
        self.queue = []
    
    def enqueue(self, priority, item):
        print(f"\nsebelum menambahkan nilai                         --> {self.queue}")
        heapq.heappush(self.queue, (priority, item))
        print(f"setelah nilai {item} dengan prioritas {priority} ditambahkan   --> {self.queue}")
    
    def dequeue(self):
        print(f"\nsebelum menghapus nilai     --> {self.queue}")
        item = heapq.heappop(self.queue)[1]
        print(f"setelah nilai {item} dihapus    --> {self.queue}")
        return item
    
#contoh penggunaan
print("\n\n================================Priority Queue #1====================================")
pq = PriorityQueue()
pq.enqueue(2, 100)
pq.enqueue(1, 200)
pq.enqueue(3, 50)
pq.dequeue()
pq.dequeue()
print("======================================================================================")

print("\n==================================Priority Queue #2======================================")
pq = PriorityQueue()
pq.enqueue(5, 10)
pq.enqueue(3, 30)
pq.enqueue(4, 20)
pq.enqueue(2, 50)
pq.dequeue()
print("==========================================================================================")


#tittle: QUEUE DENGAN LINKED LIST
class node:
    def __init__(self, data):
        self.data = data
        self.next = None

class QueueLinkedList:
    def __init__(self):
        self.front = None
        self.rear = None
    
    def is_empty(self):
        return self.front is None
    
    def enqueue(self, item):
        print(f"\nsebelum menambahkan nilai       --> ", end=' ')
        self.display()
        new_node = node(item)
        if self.rear is None:
            self.front = self.rear = new_node
        else:
            self.rear.next = new_node
            self.rear = new_node
        print(f"setelah nilai {item} ditambahkan    --> ", end=' ')
        self.display()
    
    def dequeue(self):
        print(f"\nsebelum menghapus nilai         --> ", end=' ')
        self.display()
        if self.is_empty():
            print("Queue kosong!")
            return None
        item = self.front.data
        self.front = self.front.next
        if self.front is None:
            self.rear = None
        print(f"setelah nilai {item} dihapus        --> ", end=' ')
        self.display()
        return item
    
    def display(self):
        temp = self.front
        while temp:
            print(temp.data, end=' ')
            temp = temp.next
        print("None")

# Contoh penggunaan
print("\n\n==============Queue dengan Linked List #1==================")
queue = QueueLinkedList()
queue.enqueue(8)
queue.enqueue(16)
queue.enqueue(24)
queue.dequeue()
queue.enqueue(32)
queue.enqueue(40)
queue.dequeue()
print("=========================================================")

print("\n==============Queue dengan Linked List #2==================")
queue = QueueLinkedList()
queue.dequeue()
queue.enqueue(11)
queue.enqueue(22)
queue.enqueue(33)
queue.dequeue()
queue.enqueue(44)
queue.enqueue(55)
queue.dequeue()
print("=============================================================")