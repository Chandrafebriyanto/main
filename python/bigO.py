#date: 2025-02-26
#tittle: Big O(2n)
print("Big O(2n)")
def print_items(n):
    for i in range(1, n+1):
        print(f'O(n) --> pertama sebanyak: {i}')
    for i in range(1, n+1):
        print(f'O(n) --> kedua sebanyak: {i}')
        
print_items(10)


#tittle: Big O(n + n^2)
print("\nBig O(n + n^2)")
def print_items(n):
    for i in range(1, n+1):
        print(f'ini adalah buku ke {i}')
        
    for i in range(1, n+1):
        for j in range(1, n+1):
            print(f'buku ke {i} dan halaman ke {j}')
    
print_items(4)


