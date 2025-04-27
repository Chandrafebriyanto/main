#
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
        
data = [115, 18, 45, 29, 56, 1, 37]
bubbleShort(data)
print("Data setelah diurutkan dengan Bubble Short:", data)


#tittle: selection shorting
def selectionShorting(arr):
    n = len(arr)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
        
data = [115, 18, 45, 29, 56, 1, 37]
selectionShorting(data)
print("\nData setelah diurutkan dengan Selection Short:", data)


#tittle: Quick shorting
def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quick_sort(left) + middle + quick_sort(right)

data = [115, 18, 45, 29, 56, 1, 37]
sorted_data = quick_sort(data)
print("\nData setelah diurutkan dengan Quick Short", sorted_data)
