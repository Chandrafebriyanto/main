#
#tittle: Tower Of Honai
def towerOfHanoi(n, source, target, auxiliary):
    if n == 1:
        print(f"pindahkan cakram 1 dari {source} ke {target}")
        return
    towerOfHanoi(n - 1, source, auxiliary, target)
    print(f"Pindahkan cakram {n} dari {source} ke {target}")
    towerOfHanoi(n - 1, auxiliary, target, source)

n = int(input("Masukkan jumlah cakram: "))
towerOfHanoi(n, 'A', 'B', 'C')  