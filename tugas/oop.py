
#tittle: class fibonacci
class Fibonacci:
    def __init__(self, n):
        self.n = n

    def get_fibonacci(self):
        if self.n == 0:
            return 0
        elif self.n == 1:
            return 1
        else:
            return Fibonacci(self.n - 1).get_fibonacci() + Fibonacci(self.n - 2).get_fibonacci()

fib = Fibonacci(25)
print(fib.get_fibonacci())

#tittle: class shorting
class shorting:
    def __init__(self, arr):
        self.arr = arr
    
    def bubble_short(self):
        n = len(self.arr)
        for i in range(n):
            swapped = False
            for j in range(0, n-i-1):
                if self.arr[j] > self.arr[j+1]:
                    self.arr[j], self.arr[j+1] = self.arr[j+1], self.arr[j]
                    swapped = True 
            if not swapped:
                break
        return self.arr
    
    def insertion_short(self):
        for i in range(1, len(self.arr)):
            key = self.arr[i]
            j = i - 1
            while j >= 0 and key < self.arr[j]:
                self.arr[j + 1] = self.arr[j]
                j -= 1
            self.arr[j + 1] = key
        return self.arr
    
    def selection_short(self):
        n = len(self.arr)
        for i in range(n):
            min_idx = i
            for j in range(i+1, n):
                if self.arr[j] < self.arr[min_idx]:
                    min_idx = j
            self.arr[i], self.arr[min_idx] = self.arr[min_idx], self.arr[i]
        return self.arr

data = [115, 18, 45, 29, 56, 1, 37]
bubbleShort = shorting(data).bubble_short()
insertionShort = shorting(data).insertion_short()
selectionShort = shorting(data).selection_short()
print("Data setelah diurutkan dengan Insertion Short:", insertionShort)
print("Data setelah diurutkan dengan Selection Short:", selectionShort)
print("Data setelah diurutkan dengan Bubble Short:", bubbleShort)