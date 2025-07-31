# 1. Baca input untuk tiga pertandingan
match1 = {"Alice", "Bob", "Charlie", "Diana"}
match2 = {"Charlie", "Diana", "Eve", "Frank"}
match3 = {"Alice", "Diana", "Frank", "George"}

# --- Perhitungan ---

# Pemain yang berpartisipasi di semua (ketiga) pertandingan
# Menggunakan irisan (intersection) dari ketiga set
all_matches = match1 & match2 & match3

# Pemain yang berpartisipasi di tepat dua pertandingan
# Cari pemain yang ada di (1&2) ATAU (1&3) ATAU (2&3), lalu kurangi yang ada di ketiganya
in_at_least_two = (match1 & match2) | (match1 & match3) | (match2 & match3)
print(in_at_least_two)
exactly_two = in_at_least_two - all_matches

# Pemain yang berpartisipasi di tepat satu pertandingan
# Cari gabungan semua pemain, lalu kurangi yang bermain di lebih dari satu pertandingan
all_players = match1 | match2 | match3
print(all_players)
only_one_match = all_players - in_at_least_two

# Total pemain unik
# Hitung jumlah elemen dari gabungan (union) semua set
total_unique_players = len(all_players)

# Pemain yang hanya berpartisipasi di Pertandingan 1
# Cari selisih (difference) antara match1 dan set lainnya
match1_only = match1 - match2 - match3


# --- Cetak Hasil ---

# Gunakan sorted(list(...)) untuk mengurutkan hasil sesuai abjad
print("")
print(f"Players in all matches: {sorted(list(all_matches))}")
print(f"Players in exactly two matches: {sorted(list(exactly_two))}")
print(f"Players in only one match: {sorted(list(only_one_match))}")
print(f"Total unique players: {total_unique_players}")
print(f"Players in Match 1 only: {sorted(list(match1_only))}")