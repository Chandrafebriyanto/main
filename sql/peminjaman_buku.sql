CREATE DATABASE peminjaman_buku;

USE peminjaman_buku;

-- note: membuat tabel mahasiswa
CREATE TABLE mahasiswa (
    NIM int PRIMARY KEY NOT NULL,
    nama_mhs VARCHAR(20) NOT NULL,
    prodi VARCHAR(10) NOT NULL
);

INSERT into mahasiswa
VALUES  (20230101, 'Andi R', 'Informatika'),
        (20230102, 'Rina Lestari', 'SI');

SELECT * FROM mahasiswa;

-- note: membuat tabel buku
CREATE TABLE buku (
    kode_buku VARCHAR(5) PRIMARY KEY NOT NULL,
    judul_buku VARCHAR(10) NOT NULL,
    penulis VARCHAR(10) NOT NULL
);

INSERT INTO buku 
VALUES  ('BK01', 'Alpro', 'Rudi H'),
        ('BK02', 'Basdat', 'Tono W');

SELECT * FROM buku

-- note: membuat tabel peminjaman
CREATE TABLE peminjaman (
    kode_peminjaman VARCHAR(5) PRIMARY KEY NOT NULL,
    tgl_pinjam DATE NOT NULL,
    tgl_kembali DATE NOT NULL,
    NIM INT NOT NULL,
    kode_buku VARCHAR(5) NOT NULL,
    Foreign Key (NIM) REFERENCES mahasiswa(NIM),
    Foreign Key (kode_buku) REFERENCES buku(kode_buku)
);

INSERT INTO peminjaman
VALUES  ('P001', '2025-03-01', '2025-03-10', 20230101, 'BK01'),
        ('P002', '2025-03-03', '2025-03-9', 20230101, 'BK02'),
        ('P003', '2025-03-02', '2025-03-12', 20230102, 'BK01');

SELECT * FROM peminjaman;

-- note: query untuk menampilkan data lengkap peminjaman buku
SELECT 
    p.kode_peminjaman,
    m.nama_mhs,
    m.NIM,
    m.prodi,
    b.kode_buku,
    b.judul_buku,
    b.penulis,
    p.tgl_pinjam,
    p.tgl_kembali
FROM peminjaman p 
JOIN mahasiswa m on p.NIM = m.NIM
JOIN buku b on p.kode_buku = b.kode_buku;