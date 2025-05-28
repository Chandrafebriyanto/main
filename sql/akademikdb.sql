CREATE DATABASE akademikdb;

USE akademikdb;

-- tittle: CREATE TABLE
CREATE TABLE Mahasiswa (
    MahasiswaID INT PRIMARY KEY,
    Nama VARCHAR(100),
    Alamat TEXT,
    TanggalLahir DATE,
    NoHP VARCHAR(15)
);

CREATE TABLE Dosen (
    DosenID INT PRIMARY KEY,
    Nama VARCHAR(100),
    Email VARCHAR(100),
    NoHP VARCHAR(15)
);

CREATE TABLE MataKuliah (
    MataKuliahID INT PRIMARY KEY,
    NamaMK VARCHAR(100),
    SKS INT,
    Semester INT
);

CREATE TABLE Kelas (
    KelasID INT PRIMARY KEY,
    MataKuliahID INT,
    DosenID INT,
    TahunAkademik VARCHAR(10),
    FOREIGN KEY (MataKuliahID) REFERENCES MataKuliah (MataKuliahID),
    FOREIGN KEY (DosenID) REFERENCES Dosen (DosenID)
);

CREATE TABLE Nilai (
    NilaiID INT PRIMARY KEY,
    MahasiswaID INT,
    KelasID INT,
    Nilai DECIMAL(5, 2),
    FOREIGN KEY (MahasiswaID) REFERENCES Mahasiswa (MahasiswaID),
    FOREIGN KEY (KelasID) REFERENCES Kelas (KelasID)
);

-- tittle: INSERT
INSERT INTO
    Mahasiswa (
        MahasiswaID,
        Nama,
        Alamat,
        TanggalLahir,
        NoHP
    )
VALUES (
        1,
        'Ali Fauzan',
        'Surabaya',
        '2000-01-15',
        '081234567890'
    ),
    (
        2,
        'Budi Santoso',
        'Malang',
        '1999-05-21',
        '082345678901'
    ),
    (
        3,
        'Citra Lestari',
        'Sidoarjo',
        '2001-03-10',
        '083456789012'
    ),
    (
        4,
        'Deni Kurniawan',
        'Gresik',
        '2000-07-25',
        '084567890123'
    ),
    (
        5,
        'Eka Putri',
        'Lamongan',
        '2001-09-18',
        '085678901234'
    );

INSERT INTO
    Dosen (DosenID, Nama, Email, NoHP)
VALUES (
        10,
        'Dr. Rina Widya',
        'rina.widya@univ.ac.id',
        '081122334455'
    ),
    (
        11,
        'Dr. Yusuf Malik',
        'yusuf.malik@univ.ac.id',
        '082233445566'
    ),
    (
        12,
        'Dr. Sinta Dewi',
        'sinta.dewi@univ.ac.id',
        '083344556677'
    ),
    (
        13,
        'Dr. Arif Hidayat',
        'arif.hidayat@univ.ac.id',
        '084455667788'
    ),
    (
        14,
        'Dr. Lestari Nur',
        'lestari.nur@univ.ac.id',
        '085566778899'
    );

INSERT INTO
    MataKuliah (
        MataKuliahID,
        NamaMK,
        SKS,
        Semester
    )
VALUES (100, 'Basis Data', 3, 4),
    (
        101,
        'Algoritma dan Pemrograman',
        3,
        2
    ),
    (
        102,
        'Matematika Diskrit',
        2,
        2
    ),
    (103, 'Sistem Operasi', 3, 3),
    (
        104,
        'Jaringan Komputer',
        2,
        4
    );

INSERT INTO
    Kelas (
        KelasID,
        MataKuliahID,
        DosenID,
        TahunAkademik
    )
VALUES (201, 100, 10, '2024/2025'),
    (202, 101, 11, '2024/2025'),
    (203, 102, 12, '2024/2025'),
    (204, 103, 13, '2024/2025'),
    (205, 104, 14, '2024/2025');

INSERT INTO
    Nilai (
        NilaiID,
        MahasiswaID,
        KelasID,
        Nilai
    )
VALUES (301, 1, 201, 85.5),
    (302, 2, 202, 90.0),
    (303, 3, 203, 78.0),
    (304, 4, 204, 88.0),
    (305, 5, 205, 92.5);

-- tittle: MANIPULASI DATA
-- tittle:INSERT
INSERT INTO
    mahasiswa (
        MahasiswaID,
        Nama,
        Alamat,
        TanggalLahir,
        NoHP
    )
VALUES (
        6,
        'Gita Pratiwi',
        'Semarang',
        '2002-12-15',
        '085755553333'
    );

INSERT INTO
    dosen (DosenID, Nama, Email, NoHP)
VALUES (
        15,
        'Dr. Rahmat Hidayah',
        'rahmat.hidaya@univ.ac.id',
        '081299988877'
    );

INSERT INTO
    matakuliah (
        MataKuliahID,
        NamaMK,
        SKS,
        Semester
    )
VALUES (
        105,
        'Kecerdasan Buatan',
        3,
        5
    );

INSERT INTO
    kelas (
        KelasID,
        MataKuliahID,
        DosenID,
        TahunAkademik
    )
VALUES (206, 105, 15, '2024/2025');

INSERT INTO
    nilai (
        NilaiID,
        MahasiswaID,
        KelasID,
        Nilai
    )
VALUES (306, 6, 206, 91.0);

-- tittle: SELECT
SELECT * FROM mahasiswa;

SELECT * FROM nilai

SELECT nama, nilai
FROM mahasiswa
    JOIN nilai ON mahasiswa.MahasiswaID = nilai.MahasiswaID;

SELECT matakuliah.NamaMK, dosen.Nama
FROM kelas
    JOIN matakuliah ON kelas.MataKuliahID = matakuliah.MataKuliahID
    JOIN dosen ON kelas.DosenID = dosen.DosenID

-- TITTLE: UPDATE
UPDATE Mahasiswa SET Alamat = 'Sidoarjo' WHERE MahasiswaID = 2;

UPDATE Mahasiswa SET Alamat = 'Jakarta' WHERE MahasiswaID = 1;

UPDATE MataKuliah SET SKS = 4 WHERE MataKuliahID = 100;

UPDATE Nilai SET Nilai = 95.0 WHERE NilaiID = 301;

-- Tittle: DELETE
DELETE FROM Mahasiswa WHERE MahasiswaID = 2;

DELETE FROM Nilai WHERE NilaiID = 302;

DELETE FROM Mahasiswa WHERE MahasiswaID = 5;

DELETE FROM Kelas WHERE KelasID = 204;

-- TITTLE: SELECT & WHERE
SELECT * FROM Mahasiswa;

SELECT * FROM Mahasiswa WHERE Alamat = 'Lamongan';

SELECT * FROM Mahasiswa ORDER BY Nama ASC;

SELECT m.Nama, n.Nilai
FROM Mahasiswa m
    JOIN Nilai n ON m.MahasiswaID = n.MahasiswaID
WHERE
    n.Nilai > 85;

-- TITTLE: JOIN
SELECT m.Nama, n.Nilai
FROM Mahasiswa m, Nilai n
WHERE
    m.MahasiswaID = n.MahasiswaID;

SELECT k.KelasID, d.Nama
FROM Kelas k, Dosen d
WHERE
    k.DosenID = d.DosenID;

SELECT m.Nama, mk.NamaMK
FROM
    Mahasiswa m,
    Nilai n,
    Kelas k,
    MataKuliah mk
WHERE
    m.MahasiswaID = n.MahasiswaID
    AND n.KelasID = k.KelasID
    AND k.MataKuliahID = mk.MataKuliahID;

-- TITTLE: INNER JOIN
SELECT m.Nama, mk.NamaMK, n.Nilai
FROM
    Mahasiswa m
    JOIN Nilai n ON m.MahasiswaID = n.MahasiswaID
    JOIN Kelas k ON n.KelasID = k.KelasID
    JOIN MataKuliah mk ON k.MataKuliahID = mk.MataKuliahID;

SELECT m.Nama AS NamaMahasiswa, mk.NamaMK AS MataKuliah, n.Nilai
FROM
    Mahasiswa m
    INNER JOIN Nilai n ON m.MahasiswaID = n.MahasiswaID
    INNER JOIN Kelas k ON n.KelasID = k.KelasID
    INNER JOIN MataKuliah mk ON k.MataKuliahID = mk.MataKuliahID;

SELECT m.Nama AS NamaMahasiswa, d.Nama AS NamaDosen
FROM
    Mahasiswa m
    INNER JOIN Nilai n ON m.MahasiswaID = n.MahasiswaID
    INNER JOIN Kelas k ON n.KelasID = k.KelasID
    INNER JOIN Dosen d ON k.DosenID = d.DosenID;

SELECT m.Nama AS NamaMahasiswa, k.KelasID, k.TahunAkademik
FROM
    Mahasiswa m
    INNER JOIN Nilai n ON m.MahasiswaID = n.MahasiswaID
    INNER JOIN Kelas k ON n.KelasID = k.KelasID;

-- TITTLE: LEFT JOIN
-- LEFT JOIN
SELECT M.Nama, N.Nilai
FROM Mahasiswa M
    LEFT JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID;

SELECT k.KelasID, mk.NamaMK, n.Nilai
FROM
    Kelas k
    LEFT JOIN MataKuliah mk ON k.MataKuliahID = mk.MataKuliahID
    LEFT JOIN Nilai n ON k.KelasID = n.KelasID;

SELECT d.Nama, k.KelasID
FROM Dosen d
    LEFT JOIN Kelas k ON d.DosenID = k.DosenID;

-- TITTLE: RIGHT JOIN
-- RIGHT JOIN
SELECT M.Nama, N.Nilai
FROM Mahasiswa M
    RIGHT JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID;

SELECT m.Nama, n.Nilai
FROM Mahasiswa m
    RIGHT JOIN Nilai n ON m.MahasiswaID = n.MahasiswaID;

SELECT k.KelasID, n.Nilai
FROM Kelas k
    RIGHT JOIN Nilai n ON k.KelasID = n.KelasID;

SELECT mk.NamaMK, n.Nilai
FROM
    MataKuliah mk
    JOIN Kelas k ON mk.MataKuliahID = k.MataKuliahID
    RIGHT JOIN Nilai n ON k.KelasID = n.KelasID;

-- TITTLE: LAPORAN AKADEMIK
-- Daftar Mahasiswa dan Mata Kuliah yang Diambil
SELECT M.Nama AS Mahasiswa, MK.NamaMK AS MataKuliah, N.Nilai
FROM
    Mahasiswa M
    JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
    JOIN Kelas K ON N.KelasID = K.KelasID
    JOIN MataKuliah MK ON K.MataKuliahID = MK.MataKuliahID;

SELECT M.Nama, COUNT(DISTINCT K.MataKuliahID) AS JumlahMK
FROM
    Mahasiswa M
    JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
    JOIN Kelas K ON N.KelasID = K.KelasID
GROUP BY
    M.Nama;

SELECT D.Nama, COUNT(K.KelasID) AS JumlahKelas
FROM Dosen D
    JOIN Kelas K ON D.DosenID = K.DosenID
GROUP BY
    D.Nama
ORDER BY JumlahKelas DESC;

-- TITTLE: STATISTIK NILAI
-- Rata-rata Nilai per Mata Kuliah
SELECT MK.NamaMK, AVG(N.Nilai) AS RataRataNilai
FROM
    MataKuliah MK
    JOIN Kelas K ON MK.MataKuliahID = K.MataKuliahID
    JOIN Nilai N ON K.KelasID = N.KelasID
GROUP BY
    MK.NamaMK;

SELECT M.Nama, AVG(N.Nilai) AS RataRataNilai
FROM Mahasiswa M
    JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
GROUP BY
    M.Nama;

-- tittle: Statistik nilai 2
-- Mahasiswa dengan Nilai Tertinggi pada Setiap Mata Kuliah
SELECT MK.NamaMK, M.Nama AS Mahasiswa, MAX(N.Nilai) AS NilaiTertinggi
FROM
    MataKuliah MK
    JOIN Kelas K ON MK.MataKuliahID = K.MataKuliahID
    JOIN Nilai N ON K.KelasID = N.KelasID
    JOIN Mahasiswa M ON N.MahasiswaID = M.MahasiswaID
GROUP BY
    MK.NamaMK,
    M.Nama
ORDER BY MK.NamaMK, NilaiTertinggi DESC;

SELECT MK.NamaMK, MAX(N.Nilai) AS NilaiTertinggi
FROM
    MataKuliah MK
    JOIN Kelas K ON MK.MataKuliahID = K.MataKuliahID
    JOIN Nilai N ON K.KelasID = N.KelasID
GROUP BY
    MK.NamaMK;

SELECT M.Nama, MAX(N.Nilai) AS NilaiTertinggi
FROM Mahasiswa M
    JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
GROUP BY
    M.Nama
ORDER BY NilaiTertinggi DESC
LIMIT 1;

-- tittle: Statistik nilai 3
-- Nilai Terendah per Mata Kuliah
SELECT mk.NamaMK, MIN(n.Nilai) AS NilaiTerendah
FROM
    MataKuliah mk
    JOIN Kelas k ON mk.MataKuliahID = k.MataKuliahID
    JOIN Nilai n ON k.KelasID = n.KelasID
GROUP BY
    mk.NamaMK;

SELECT M.Nama, MIN(N.Nilai) AS NilaiTerendah
FROM Mahasiswa M
    JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
GROUP BY
    M.Nama
ORDER BY NilaiTerendah ASC;

DROP DATABASE akademikdb;