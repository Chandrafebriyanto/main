import random
from tabulate import tabulate
from itertools import permutations

# Daftar anggota kelas (nama, jenis kelamin)
anggota_kelas = [
    ("VARELERA RAHMATYAS", "P"), ("MUHAMMAD KHAIRUL ANAM", "L"),
    ("MUHAMMAD HAIKHAL AL HAKIM", "L"), ("KHABIBI AL MUNIF", "L"),
    ("AHMAD NAUFAL TIRUS", "L"), ("AGHNIA DIFFITRI NAURASYAHBANA", "P"),
    ("DANUARY BIMA HAMMAM MAY FALAH", "L"), ("SEPTIA CAHYANI RAMADHANI", "P"),
    ("NAZZALA RISKY NAFI'A", "P"), ("ZARYAN NUGRAHA ISLAH", "L"),
    ("MOHAMMAD MAULANA RIYAN WISESA", "L"), ("MARGARITA NIDIA ADININGRUM", "P"),
    ("LUTVIANA DWI JANNATI", "P"), ("DIMAS ADITYA PRATAMA", "L"),
    ("TESA DWI SASALBIIL", "P"), ("MOHAMMAD EKA FEBRYAN", "L"),
    ("MAKRUS FAHRUL MUHARROM", "L"), ("RANDY PRADANA BINTANG OKWIANDA", "L"),
    ("ARUM NISAWATI", "P"), ("CELYESTA BILQIIS PUTRI AGATA", "P"),
    ("AHNAF ZENOAJI", "L"), ("FAHREL ILHAM JAYA KUSUMA", "L"),
    ("RISKY PUTRA KUSUMA", "L"), ("GATHAN YANDINO PUTRA SUWANDIK", "L"),
    ("CANDRA FEBRIYANTO", "L"), ("MILA CAHAYA RANI", "P")
]

BANYAK = 7
MAX = 2
MIN = 2

# Aturan Khusus
opsi_e = {"VARELERA RAHMATYAS", "MUHAMMAD HAIKHAL AL HAKIM", "AHMAD NAUFAL TIRUS","MOHAMMAD MAULANA RIYAN WISESA", "GATHAN YANDINO PUTRA SUWANDIK", "CANDRA FEBRIYANTO"}
opsi_f = {"MUHAMMAD KHAIRUL ANAM", "KHABIBI AL MUNIF", "MOHAMMAD EKA FEBRYAN", "RANDY PRADANA BINTANG OKWIANDA"}
opsi_g = "MILA CAHAYA RANI"

# Cek validitas grup
def is_valid_group(group):
    names = [x[0] for x in group]
    genders = [x[1] for x in group]

    if len(group) < MIN or len(group) > MAX:
        return False
    if all(g == "L" for g in genders) or all(g == "P" for g in genders):
        return False
    if len(group) >= 4 and genders.count("P") < 2:
        return False
    if len(set(opsi_e) & set(names)) > 1:
        return False
    if len(set(opsi_f) & set(names)) > 1:
        return False
    if opsi_g in names:
        if len(group) != MAX or not (set(opsi_e) & set(names)):
            return False
    return True

# Generate semua kombinasi pembagian
def coba_pembagian():
    for _ in range(50000):
        random.shuffle(anggota_kelas)
        kelompok = []
        idx = 0
        for _ in range(BANYAK):
            if len(kelompok) < 2:
                size = MAX
            else:
                size = MIN if len(anggota_kelas) - idx <= (BANYAK - len(kelompok)) * MIN else MAX
            group = anggota_kelas[idx:idx+size]
            idx += size
            kelompok.append(group)

        if all(is_valid_group(g) for g in kelompok):
            return kelompok
    return None

# Jalankan dan tampilkan hasil
hasil = coba_pembagian()

if hasil:
    table = []
    for i, group in enumerate(hasil, 1):
        row = [f"Kelompok {i}"] + [nama for nama, _ in group]
        while len(row) < MAX + 1:
            row.append("")
        table.append(row)
    print(tabulate(table, headers=["Kelompok", "Anggota 1", "Anggota 2", "Anggota 3", "Anggota 4"], tablefmt="grid"))
else:
    print("Tidak ditemukan pembagian yang valid.")
