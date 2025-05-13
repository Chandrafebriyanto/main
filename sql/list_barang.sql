CREATE DATABASE list_barang;

USE list_barang;

CREATE TABLE jenis_barang(
    jenis_barang VARCHAR(20) PRIMARY KEY
);

INSERT INTO jenis_barang 
VALUES  ("Furniture"),
        ("ATK"),
        ("Jaringan");

SELECT * FROM jenis_barang;

CREATE TABLE barang(
    kode_barang VARCHAR(10) PRIMARY KEY,
    nama_barang VARCHAR(50) NOT NULL,
    jenis_barang VARCHAR(20) NOT NULL,
    Foreign Key (jenis_barang) REFERENCES jenis_barang(jenis_barang)
);

INSERT INTO barang (kode_barang, nama_barang, jenis_barang)
VALUES  ('BRG_01', 'Meja', 'Furniture'),
        ('BRG_02', 'Kuris', 'Furniture'),
        ('BRG_03', 'Meja Kecil', 'Furniture'),
        ('BRG_04', 'Bolpoin', 'ATK'),
        ('BRG_05', 'HVS A4', 'ATK'),
        ('BRG_06', 'Paper Clip', 'ATK'),
        ('BRG_07', 'Router', 'Jaringan'),
        ('BRG_08', 'LAN', 'Jaringan'),
        ('BRG_09', 'RJ45', 'Jaringan');

SELECT * FROM barang;

CREATE TABLE detail_barang(
    jenis_barang VARCHAR(20) NOT NULL,
    kode_barang VARCHAR(10) NOT NULL,
    qty_barang INT NOT NULL,
    tgl_input_barang DATE NOT NULL,
    desc_barang VARCHAR(100),
    FOREIGN KEY (kode_barang) REFERENCES barang(kode_barang),
    FOREIGN KEY (jenis_barang) REFERENCES jenis_barang(jenis_barang)
);

INSERT INTO detail_barang (jenis_barang, kode_barang, qty_barang, tgl_input_barang, desc_barang)
VALUES  ('Furniture', 'BRG_01', 40,  '2023-10-01', 'Meja Gedung 1'),
        ('Furniture', 'BRG_02', 80,  '2023-10-02', 'Kursi Gedung 1'),
        ('Furniture', 'BRG_03', 12,  '2023-10-03', 'Meja Ruangan'),
        ('ATK',       'BRG_04', 200, '2023-10-04', 'Alat Tulis Gedung 1'),
        ('ATK',       'BRG_05', 14,  '2023-10-05', 'Alat Tulis Gedung 1'),
        ('ATK',       'BRG_06', 1000,'2023-10-06', 'Alat Tulis Gedung 1'),
        ('Jaringan',  'BRG_07', 1,   '2023-10-07', 'Alat Jaringan Gedung 1'),
        ('Jaringan',  'BRG_08', 2,   '2023-10-08', 'Alat Jaringan Gedung 1'),
        ('Jaringan',  'BRG_09', 10,  '2023-10-09', 'Alat Jaringan Gedung 1');

SELECT * FROM detail_barang;

SELECT 
    db.kode_barang,
    b.nama_barang,
    db.jenis_barang,
    db.qty_barang,
    db.tgl_input_barang,
    db.desc_barang
FROM detail_barang db
JOIN barang b ON db.kode_barang = b.kode_barang
JOIN jenis_barang jb ON db.jenis_barang = jb.jenis_barang
