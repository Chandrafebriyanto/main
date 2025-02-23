import pandas as pd

# Membaca file CSV
df = pd.read_csv('file.csv')
print("Data:")
print(df)

# Menampilkan 5 baris pertama
print("\n5 baris pertama:")
print(df.head())

df.info()

df['nilai_uas'] = df['nilai_alpro'] * 0.4 
print(df)