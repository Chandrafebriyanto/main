CREATE DATABASE db_inventaris;

USE db_inventaris;

CREATE Table ruangan (
    kode_ruangan VARCHAR(10) PRIMARY KEY NOT NULL,
    nama_ruangan VARCHAR(50) NOT NULL,
    penanggung_jawab VARCHAR(50) NOT NULL
);

CREATE Table barang (
    kode_barang VARCHAR(10) PRIMARY KEY NOT NULL,
    nama_barang VARCHAR(50) NOT NULL,
    jenis VARCHAR(20) NOT NULL,
    jumlah INT NOT NULL,
    tanggal_masuk DATE,
    kode_ruangan VARCHAR(10),
    Foreign Key (kode_ruangan) REFERENCES ruangan(kode_ruangan)
);

INSERT INTO ruangan (kode_ruangan, nama_ruangan, penanggung_jawab) VALUES
('R001', 'Laboratorium Komputer', 'Budi Santoso'),
('R002', 'Perpustakaan', 'Siti Aminah'),
('R003', 'Ruang Guru', 'Andi Wijaya');

INSERT INTO barang (kode_barang, nama_barang, jenis, jumlah, tanggal_masuk, kode_ruangan) VALUES
('B001', 'Laptop Lenovo', 'Elektronik', 10, '2025-01-15', 'R001'),
('B002', 'Rak Buku', 'Furnitur', 5, '2025-02-10', 'R002'),
('B003', 'Papan Tulis', 'Alat Tulis', 2, '2025-03-05', 'R003');

DROP DATABASE db_inventaris;

SELECT 
    r.kode_ruangan,
    r.nama_ruangan,
    r.penanggung_jawab,
    b.nama_barang,
    b.jenis,
    b.jumlah,
    b.tanggal_masuk
FROM barang b
JOIN ruangan r ON r.kode_ruangan = b.kode_ruangan