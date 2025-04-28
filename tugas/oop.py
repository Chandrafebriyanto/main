import random
import time

# tittle: class Sorting dengan OOP
class Sorting:
    def __init__(self, arr):
        self.arr = arr
    
    def bubble_sort(self):
        n = len(self.arr)
        for i in range(n):
            swapped = False
            for j in range(0, n - i - 1):
                if self.arr[j] > self.arr[j + 1]:
                    self.arr[j], self.arr[j + 1] = self.arr[j + 1], self.arr[j]
                    swapped = True 
            if not swapped:
                break
        return self.arr
    
    def bubble_sort_desc(self):
        n = len(self.arr)
        for i in range(n):
            swapped = False
            for j in range(0, n - i - 1):
                if self.arr[j] < self.arr[j + 1]:
                    self.arr[j], self.arr[j + 1] = self.arr[j + 1], self.arr[j]
                    swapped = True 
            if not swapped:
                break
        return self.arr
    
    def insertion_sort(self):
        for i in range(1, len(self.arr)):
            key = self.arr[i]
            j = i - 1
            while j >= 0 and key < self.arr[j]:
                self.arr[j + 1] = self.arr[j]
                j -= 1
            self.arr[j + 1] = key
        return self.arr
    
    def insertion_sort_desc(self):
        for i in range(1, len(self.arr)):
            key = self.arr[i]
            j = i - 1
            while j >= 0 and key > self.arr[j]:
                self.arr[j + 1] = self.arr[j]
                j -= 1
            self.arr[j + 1] = key
        return self.arr
    
    def selection_sort(self):
        n = len(self.arr)
        for i in range(n):
            min_idx = i
            for j in range(i + 1, n):
                if self.arr[j] < self.arr[min_idx]:
                    min_idx = j
            self.arr[i], self.arr[min_idx] = self.arr[min_idx], self.arr[i]
        return self.arr
    
    def selection_sort_desc(self):
        n = len(self.arr)
        for i in range(n):
            max_idx = i
            for j in range(i + 1, n):
                if self.arr[j] > self.arr[max_idx]:
                    max_idx = j
            self.arr[i], self.arr[max_idx] = self.arr[max_idx], self.arr[i]
        return self.arr

#note: --------- TANPA OOP ---------
# tittle: bubble shorting 
def bubbleShort(arr):
    n = len(arr)
    for i in range(n):
        swapped = False
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
                swapped = True 
        if not swapped:
            break    

#tittle: selection shorting tanpa OOP
def selectionShorting(arr):
    n = len(arr)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]

#tittle: Quick shorting tanpa OOP
def insertionSort(arr):
    for i in range (1, len(arr)):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key


def measure_time(sort_func):
    start = time.time()
    sort_func()
    end = time.time()
    return round(end - start,4)

data = random.sample(range(1, 10000), 9000)
# print("Data sebelum diurutkan:", data)
sorter = Sorting(data.copy())

# bubbleSort = sorter.bubble_sort()
# selectionSort = sorter.selection_sort()
# insertionSort = sorter.insertion_sort()

# print("\nData setelah diurutkan dengan Bubble Sort:", bubbleSort)
# print("Data setelah diurutkan dengan Selection Sort:", selectionSort)
# print("Data setelah diurutkan dengan Insertion Sort:", insertionSort)

# bubbleSort_desc = sorter.bubble_sort_desc()
# selectionSort_desc = sorter.selection_sort_desc()
# insertionSort_desc = sorter.insertion_sort_desc()

# print("\nData setelah diurutkan dengan Bubble Sort Descending:", bubbleSort_desc)
# print("Data setelah diurutkan dengan Selection Sort Descending:", selectionSort_desc)
# print("Data setelah diurutkan dengan Insertion Sort Descending:", insertionSort_desc)


print("Waktu eksekusi dengan OOP:")
print(measure_time(lambda: sorter.bubble_sort()), "s")
print(measure_time(lambda: sorter.selection_sort()), "s")
print(measure_time(lambda: sorter.insertion_sort()), "s")

print("\nWaktu eksekusi tanpa OOP:")
print(measure_time(lambda: bubbleShort(data.copy())), "s")
print(measure_time(lambda: selectionShorting(data.copy())), "s")
print(measure_time(lambda: insertionSort(data.copy())), "s")