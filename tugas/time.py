import time
import random
import matplotlib.pyplot as plt

class Sorting:
    def __init__(self, arr):
        self.arr = arr
        
    #note: bubble_short
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

    #note: insertion_sort
    def insertion_sort(self):
        for i in range(1, len(self.arr)):
            key = self.arr[i]
            j = i - 1
            while j >= 0 and self.arr[j] > key:
                self.arr[j + 1] = self.arr[j]
                j -= 1
            self.arr[j + 1] = key
        return self.arr

    #note: selection_sort
    def selection_sort(self):
        n = len(self.arr)
        for i in range(n):
            min_idx = i
            for j in range(i+1, n):
                if self.arr[j] < self.arr[min_idx]:
                    min_idx = j
            self.arr[i], self.arr[min_idx] = self.arr[min_idx], self.arr[i]
        return self.arr
    
    #note: merge_sort
    def merge_sort(self, arr):
        if arr is None:
            arr = self.arr
        
        if len(arr) > 1:
            mid = len(arr) // 2
            L = arr[:mid]
            R = arr[mid:]

            self.merge_sort(L)
            self.merge_sort(R)

            i = j = k = 0

            while i < len(L) and j < len(R):
                if L[i] < R[j]:
                    arr[k] = L[i]
                    i += 1
                else:
                    arr[k] = R[j]
                    j += 1
                k += 1

            while i < len(L):
                arr[k] = L[i]
                i += 1
                k += 1

            while j < len(R):
                arr[k] = R[j]
                j += 1
                k += 1

        return arr
    
    #note: quick_sort
    def quick_sort(self, arr):
        if arr is None:
            arr = self.arr
        
        if len(arr) <= 1:
            return arr
        pivot = arr[len(arr) // 2]
        left = [x for x in arr if x < pivot]
        middle = [x for x in arr if x == pivot]
        right = [x for x in arr if x > pivot]
        return self.quick_sort(left) + middle + self.quick_sort(right)

# Fungsi untuk mengukur waktu eksekusi
def measure_time(sort_func):
    start = time.time()
    sort_func()
    end = time.time()
    return (end - start) * 1000  # dalam milidetik

# Dataset random
data = random.sample(range(1000), 500)  # 500 elemen acak

# Instansiasi dan pengukuran
sorter = Sorting(data)
times = {
    "Bubble Sort": measure_time(lambda: Sorting(data.copy()).bubble_sort()),
    "Insertion Sort": measure_time(lambda: Sorting(data.copy()).insertion_sort()),
    "Selection Sort": measure_time(lambda: Sorting(data.copy()).selection_sort()),
    "Merge Sort": measure_time(lambda: Sorting(data.copy()).merge_sort(data.copy())),
    "Quick Sort": measure_time(lambda: Sorting(data.copy()).quick_sort(data.copy())),
}

# Visualisasi hasil
plt.figure(figsize=(10, 6))
plt.bar(times.keys(), times.values(), color='skyblue')
plt.ylabel("Waktu Eksekusi (ms)")
plt.title("Perbandingan Efisiensi Algoritma Sorting")
plt.grid(True, linestyle="--", alpha=0.5)
plt.tight_layout()
plt.show()