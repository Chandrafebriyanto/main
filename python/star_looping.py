n = int(input("masukan jumlah bintang: "))

for i in range(1, n):
    # Print spaces
    for j in range(i, n+1):
        print(" ", end="")
    # Print stars
    for j in range(1, 2*i):
        print("*", end="")
    print()