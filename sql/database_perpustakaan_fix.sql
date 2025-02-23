-- //membuat database baru// -- 
create database database_perpustakaan;


-- //mengaktifkan database// --
use database_perpustakaan;


-- //tabel buku_perpus// --
CREATE TABLE buku_perpus(
    nomer_buku BIGINT PRIMARY KEY AUTO_INCREMENT,
    nama_buku VARCHAR(255) NOT NULL,
    letak_buku VARCHAR(255) NOT NULL,
    penulis VARCHAR(255) NOT NULL,
    status VARCHAR(255) DEFAULT 'Tersedia'
);
-- import data buku_perpus dari csv ke mysql --


-- //tabel anggota_perpus// --
CREATE Table anggota_perpus(
    nomer_anggota BIGINT PRIMARY KEY AUTO_INCREMENT,
    nama_lengkap VARCHAR(255) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    nomer_telepon VARCHAR(255) NOT NULL
);
-- import data anggota_perpus dari csv ke mysql --


-- //Tabel peminjaman_buku// --
CREATE TABLE peminjaman_buku (
    nomer_pinjam INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku BIGINT NOT NULL,
    nomer_anggota BIGINT NOT NULL,
    tanggal_pinjam DATETIME DEFAULT now() NOT NULL,
    tanggal_kembali DATETIME NOT NULL,
    FOREIGN KEY (nomer_buku) REFERENCES buku_perpus(nomer_buku),
    FOREIGN KEY (nomer_anggota) REFERENCES anggota_perpus(nomer_anggota)
);
-- //program pembuatan tanggal kembali otomatis// --
CREATE TRIGGER tanggal_kembali 
BEFORE INSERT ON peminjaman_buku  
FOR EACH ROW
SET NEW.tanggal_kembali = DATE_ADD(NEW.tanggal_pinjam, INTERVAL 7 DAY);
-- program mengubah status buku ketika dipinjam --
CREATE TRIGGER update_status_buku_pinjam -- NOTE: NAMA TRIGGER
AFTER /* after = trigger aktif ketika nilai sudah di input*/ INSERT ON peminjaman_buku -- NOTE: tabel yang mau di kasih trigger
FOR EACH ROW
    UPDATE buku_perpus -- NOTE: tabel yang ingin diperbarui kolom nilainya
    SET status = 'dipinjam' -- NOTE: memperbarui tabel sesuai dengan yang dinginkan
    WHERE nomer_buku = NEW.nomer_buku;


-- //tabel pengembalian buku// -- 
CREATE Table pengembalian_buku(
    nomer_kembali INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku BIGINT,
    nomer_anggota BIGINT,
    tanggal_kembali DATETIME DEFAULT now(),
    status VARCHAR(255) DEFAULT 'dikembalikan',
    Foreign Key (nomer_buku) REFERENCES buku_perpus(nomer_buku),
    Foreign Key (nomer_anggota) REFERENCES anggota_perpus(nomer_anggota)
);
-- function status pengembalian buku otomatis -- 
DELIMITER $$
CREATE TRIGGER after_insert_pengembalian
AFTER INSERT ON pengembalian_buku
FOR EACH ROW
BEGIN
    -- Mengubah status buku kembali menjadi 'tersedia'
    UPDATE buku_perpus
    SET status = 'tersedia'
    WHERE nomer_buku = NEW.nomer_buku;
    -- Menghapus entri peminjaman buku yang sudah dikembalikan
    DELETE FROM peminjaman_buku
    WHERE nomer_buku = NEW.nomer_buku;
END$$

-- //menampilkan tabel// --
select * from anggota_perpus;
select * from buku_perpus;
select * from peminjaman_buku;
select * from pengembalian_buku;
