import sqlite3

def create_table():
    connection = sqlite3.connect("siswa.db")
    cursor = connection.cursor()

    cursor.execute("""
    CREATE TABLE IF NOT EXISTS siswa (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nama TEXT
    )
    """)

    connection.commit()
    connection.close()

def add_student(name):
    connection = sqlite3.connect("siswa.db")
    cursor = connection.cursor()

    cursor.execute("INSERT INTO siswa (nama) VALUES (?)", (name,))

    connection.commit()
    connection.close()

def view_students():
    connection = sqlite3.connect("siswa.db")
    cursor = connection.cursor()

    cursor.execute("SELECT * FROM siswa")
    students = cursor.fetchall()

    connection.close()

    return students

def main():
    create_table()

    while True:
        print("\nMenu:")
        print("1. Tambah Data Siswa")
        print("2. Lihat Semua Data Siswa")
        print("3. Keluar")

        choice = input("Pilih menu (1/2/3): ")

        if choice == "1":
            name = input("Masukkan nama siswa: ")
            add_student(name)
            print(f"Data siswa '{name}' berhasil ditambahkan.")
        elif choice == "2":
            students = view_students()
            print("\nDaftar Siswa:")
            for student in students:
                print(f"ID: {student[0]}, Nama: {student[1]}")
        elif choice == "3":
            print("Keluar dari program.")
            break
        else:
            print("Pilihan tidak valid. Silakan coba lagi.")

if __name__ == "__main__":
    main()
