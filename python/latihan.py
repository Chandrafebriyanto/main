import pandas as pd

# Membaca file CSV
df = pd.read_csv('data (1).csv')

# Menampilkan data dan 5 baris pertama
print("Data:")
print(df)
print("\n5 baris pertama:")
print(df.head())

# Informasi tentang DataFrame
df.info()

# Menghitung nilai UAS berdasarkan nilai ALPRO
df['nilai_uas'] = df['nilai_alpro'] * 0.4

# Menghitung rata-rata nilai ALPRO
rata_rata_alpro = df['nilai_alpro'].mean()
print("Rata-rata nilai ALPRO mahasiswa:", rata_rata_alpro)

# Mengelompokkan data berdasarkan nilai ALPRO
kelompok = df.groupby('nilai_alpro').size()
print(kelompok)

# Membuat kolom status berdasarkan nilai UAS
df['status'] = ['lulus' if nilai_uas >= 80 else 'tidak lulus' for nilai_uas in df['nilai_uas']]

# Menyimpan data ke file CSV baru
df.to_csv('data_baru.csv', index=False)

print(df)