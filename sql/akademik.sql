use akademik;

CREATE TABLE mahasiswa(
    NIM INT PRIMARY KEY,
    nama VARCHAR(50) NOT NULL,
    jurusan VARCHAR(25) NOT NULL
);

CREATE Table matakuliah(
    kode_MK VARCHAR(5) PRIMARY KEY,
    mata_kuliah VARCHAR(20) NOT NULL,
    SKS INT NOT NULL,
    NIP VARCHAR(5) NOT NULL,
    Foreign Key (NIP) REFERENCES dosen(NIP)
);

CREATE TABLE dosen(
    NIP VARCHAR(5) PRIMARY KEY,
    nama VARCHAR(25) NOT NULL,
    fakultas VARCHAR(25) NOT NULL
);

INSERT INTO mahasiswa
VALUES  (24001, "Asep", "Informatika"),
        (24002, "Budi", "Informatika"),
        (24003, "Bagus", "Informatika");

INSERT into matakuliah
VALUES  ("MK001", "Basis Data", 3, "D001"),
        ("MK002", "Struktur Data", 3, "D002");

INSERT INTO dosen
VALUES  ("D001", "Dr. Deny Pratama", "Sistem Informasi"),
        ("D002", "Dr. Paul Walker",	"Teknik Informatika");


CREATE TABLE KRS(
    NIM INT,
    kode_MK VARCHAR(5),
    PRIMARY KEY (NIM, kode_MK),
    Foreign Key (NIM) REFERENCES mahasiswa(NIM),
    Foreign Key (kode_MK) REFERENCES matakuliah(kode_MK)
);

INSERT INTO krs
VALUES  (24001, "MK001"),
        (24002, "MK002");

SELECT * FROM dosen;
SELECT * FROM matakuliah;
SELECT * FROM mahasiswa;
SELECT * FROM krs;


SELECT
    M.NIM,
    M.nama as Nama_Mahasiswa,
    M.jurusan,
    MK.kode_MK,
    MK.mata_kuliah as Nama_MataKuliah,
    MK.SKS,
    D.NIP,
    D.nama AS Nama_Dosen,
    D.fakultas
FROM krs
JOIN mahasiswa M ON KRS.NIM = M.NIM
JOIN matakuliah MK ON KRS.kode_MK = MK.kode_MK
JOIN dosen D ON MK.NIP = D.NIP;

SHOW TABLES;

DESCRIBE mahasiswa;
DESCRIBE dosen;
DESCRIBE matakuliah;
DESCRIBE KRS;

SHOW COLUMNS FROM mahasiswa;
SHOW COLUMNS FROM dosen;
SHOW COLUMNS FROM mahasiswa;
SHOW COLUMNS FROM krs