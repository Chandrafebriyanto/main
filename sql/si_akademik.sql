CREATE DATABASE si_akademik;

USE si_akademik;

-- tittle: membuat tabel
CREATE TABLE mahasiswa (
    MahasiswaID VARCHAR(4) PRIMARY KEY,
    Nama VARCHAR(50),
    NIM VARCHAR(20) UNIQUE,
    TanggalLahir DATE,
    JenisKelamin VARCHAR(10),
    Alamat VARCHAR(50),
    NoTelepon VARCHAR(15),
    Email VARCHAR(50) UNIQUE,
    ProgramStudi VARCHAR(50)
);

CREATE TABLE dosen (
    DosenID VARCHAR(4) PRIMARY KEY,
    Nama VARCHAR(50),
    NIDN VARCHAR(20) UNIQUE,
    Email VARCHAR(50) UNIQUE,
    NoTelepon VARCHAR(15),
    Alamat VARCHAR(50),
    JabatanAkademik VARCHAR(50)
);

CREATE TABLE mata_kuliah (
    MataKuliahID VARCHAR(4) PRIMARY KEY,
    NamaMataKuliah VARCHAR(50),
    SKS INT,
    Semester INT,
    DosenID VARCHAR(4),
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);

CREATE TABLE kelas (
    KelasID VARCHAR(4) PRIMARY KEY,
    NamaKelas VARCHAR(50),
    tahun_ajaran VARCHAR(10),
    Semester INT,
    DosenID VARCHAR(4),
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);

CREATE TABLE nilai (
    NilaiID VARCHAR(4) PRIMARY KEY,
    MahasiswaID VARCHAR(4),
    MataKuliahID VARCHAR(4),
    KelasID VARCHAR(4),
    Nilai_akhir DECIMAL(5, 2),
    FOREIGN KEY (MahasiswaID) REFERENCES mahasiswa (MahasiswaID),
    FOREIGN KEY (MataKuliahID) REFERENCES mata_kuliah (MataKuliahID),
    FOREIGN KEY (KelasID) REFERENCES kelas (KelasID)
);

-- tittle: menambahkan data
INSERT INTO
    mahasiswa (
        MahasiswaID,
        Nama,
        NIM,
        TanggalLahir,
        JenisKelamin,
        Alamat,
        NoTelepon,
        Email,
        ProgramStudi
    )
VALUES (
        'M001',
        'Andi Setiawan',
        '1234567890',
        '2005-01-01',
        'Laki-laki',
        'Jl. Merdeka No. 1',
        '08123456789',
        '1234567890@mhs.univ.ac.id',
        'Teknik Informatika'
    ),
    (
        'M002',
        'Budi Santoso',
        '1234567891',
        '2005-02-02',
        'Laki-laki',
        'Jl. Merdeka No. 2',
        '08123456790',
        '1234567891@mhs.univ.ac.id',
        'Sistem Informasi'
    ),
    (
        'M003',
        'Citra Dewi',
        '1234567892',
        '2004-03-03',
        'Perempuan',
        'Jl. Merdeka No. 3',
        '08123456791',
        '1234567892@mhs.univ.ac.id',
        'Manajemen Informatika'
    ),
    (
        'M004',
        'Dewi Lestari',
        '1234567893',
        '2004-04-04',
        'Perempuan',
        'Jl. Merdeka No. 4',
        '08123456792',
        '1234567893@mhs.univ.ac.id',
        'Teknik Elektro'
    ),
    (
        'M005',
        'Eko Prabowo',
        '1234567894',
        '2003-05-05',
        'Laki-laki',
        'Jl. Merdeka No. 5',
        '08123456793',
        '1234567894@mhs.univ.ac.id',
        'Teknik Sipil'
    ),
    (
        'M006',
        'Fani Wulandari',
        '1234567895',
        '2003-06-06',
        'Perempuan',
        'Jl. Merdeka No. 6',
        '08123456794',
        '1234567895@mhs.univ.ac.id',
        'Teknik Mesin'
    );

INSERT INTO
    dosen (
        DosenID,
        Nama,
        NIDN,
        Email,
        NoTelepon,
        Alamat,
        JabatanAkademik
    )
VALUES (
        'D001',
        'Dr. Ahmad Fauzi',
        '123456789',
        'ahmadfauzi@dosen.univ.ac.id',
        '0812345678',
        'Jl. Pendidikan No. 1',
        'Lektor Kepala'
    ),
    (
        'D002',
        'Dr. Siti Aminah',
        '123456790',
        'sitiaminah@dosen.univ.ac.id',
        '0812345679',
        'Jl. Pendidikan No. 2',
        'Lektor'
    ),
    (
        'D003',
        'Ir. Budi Hartono',
        '123456791',
        'budihartono@dosen.univ.ac.id',
        '0812345680',
        'Jl. Pendidikan No. 3',
        'Asisten Ahli'
    ),
    (
        'D004',
        'Dr. Citra Lestari',
        '123456792',
        'citra@dosen.univ.ac.id',
        '0812345681',
        'Jl. Pendidikan No. 4',
        'Lektor Kepala'
    ),
    (
        'D005',
        'Dr. Eko Prasetyo',
        '123456793',
        'eko@dosen.univ.ac.id',
        '0812345682',
        'Jl. Pendidikan No. 5',
        'Lektor'
    ),
    (
        'D006',
        'Ir. Dewi Lestari',
        '123456794',
        'dewil@dosen.univ.ac.id',
        '0812345683',
        'Jl. Pendidikan No. 6',
        'Asisten Ahli'
    );

INSERT INTO
    mata_kuliah (
        MataKuliahID,
        NamaMataKuliah,
        SKS,
        Semester,
        DosenID
    )
VALUES (
        'MK01',
        'Pemrograman Web',
        4,
        1,
        'D001'
    ),
    (
        'MK02',
        'Sistem Basis Data',
        2,
        1,
        'D002'
    ),
    (
        'MK03',
        'Jaringan Komputer',
        4,
        2,
        'D003'
    ),
    (
        'MK04',
        'Analisis dan Desain Sistem',
        3,
        2,
        'D004'
    ),
    (
        'MK05',
        'Kecerdasan Buatan',
        2,
        3,
        'D005'
    ),
    (
        'MK06',
        'Pengembangan Aplikasi Mobile',
        4,
        3,
        'D006'
    );

INSERT INTO
    kelas (
        KelasID,
        NamaKelas,
        tahun_ajaran,
        Semester,
        DosenID
    )
VALUES (
        'K001',
        'Kelas A',
        '2024/2025',
        2,
        'D001'
    ),
    (
        'K002',
        'Kelas B',
        '2024/2025',
        2,
        'D002'
    ),
    (
        'K003',
        'Kelas C',
        '2024/2025',
        2,
        'D003'
    ),
    (
        'K004',
        'Kelas D',
        '2024/2025',
        2,
        'D004'
    ),
    (
        'K005',
        'Kelas E',
        '2024/2025',
        2,
        'D005'
    ),
    (
        'K006',
        'Kelas F',
        '2024/2025',
        2,
        'D006'
    );

INSERT INTO
    nilai (
        NilaiID,
        MahasiswaID,
        MataKuliahID,
        KelasID,
        Nilai_akhir
    )
VALUES (
        'N001',
        'M001',
        'MK01',
        'K001',
        85.5
    ),
    (
        'N002',
        'M002',
        'MK02',
        'K002',
        90.0
    ),
    (
        'N003',
        'M002',
        'MK03',
        'K003',
        87.5
    ),
    (
        'N004',
        'M003',
        'MK03',
        'K003',
        78.0
    ),
    (
        'N005',
        'M004',
        'MK04',
        'K004',
        88.0
    ),
    (
        'N006',
        'M005',
        'MK05',
        'K005',
        92.5
    ),
    (
        'N007',
        'M006',
        'MK06',
        'K006',
        80.0
    );

-- tittle: menampilkan data
SELECT * FROM mahasiswa;

SELECT * FROM dosen;

SELECT * FROM mata_kuliah;

SELECT * FROM kelas;

SELECT * FROM nilai;

-- tittle: select dengan where
SELECT * FROM mahasiswa WHERE ProgramStudi = 'Teknik Informatika';

SELECT * FROM dosen WHERE JabatanAkademik = 'Lektor';

SELECT * FROM mata_kuliah WHERE SKS > 2;

-- tittle: select dengan group by
SELECT ProgramStudi, COUNT(*) AS JumlahMahasiswa
FROM mahasiswa
GROUP BY
    ProgramStudi;

SELECT JabatanAkademik, COUNT(*) AS JumlahDosen
FROM dosen
GROUP BY
    JabatanAkademik;

SELECT k.Semester, AVG(n.Nilai_akhir) AS RataRataNilai
FROM nilai n
    JOIN kelas k ON n.KelasID = k.KelasID
GROUP BY
    k.Semester;

-- tittle: select dengan order by
SELECT * FROM mahasiswa ORDER BY TanggalLahir DESC;

SELECT * FROM dosen ORDER BY Nama ASC;

SELECT * FROM mata_kuliah ORDER BY SKS DESC;

-- tittle: select dengan 5 query JOIN (inner join, left join, right join)
SELECT m.MahasiswaID, m.Nama, d.Nama AS NamaDosen, mk.NamaMataKuliah
FROM
    mahasiswa m
    JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    JOIN mata_kuliah mk ON n.MataKuliahID = mk.MataKuliahID
    JOIN dosen d ON mk.DosenID = d.DosenID;

SELECT k.KelasID, k.NamaKelas, d.Nama AS NamaDosen, n.Nilai_akhir
FROM
    kelas k
    JOIN dosen d ON k.DosenID = d.DosenID
    JOIN mata_kuliah mk ON d.DosenID = mk.DosenID
    JOIN nilai n ON mk.MataKuliahID = n.MataKuliahID;

SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, mk.NamaMataKuliah
FROM
    mahasiswa m
    INNER JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    INNER JOIN mata_kuliah mk ON n.MataKuliahID = mk.MataKuliahID;

SELECT d.DosenID, d.Nama, k.NamaKelas, mk.NamaMataKuliah
FROM
    dosen d
    LEFT JOIN mata_kuliah mk ON d.DosenID = mk.DosenID
    LEFT JOIN kelas k ON mk.DosenID = k.DosenID;

SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID;

-- tittle: query COUNT, AVG, MAX, MIN, SUM
SELECT COUNT(*) AS JumlahMahasiswa FROM mahasiswa;

SELECT AVG(Nilai_akhir) AS RataRataNilai FROM nilai;

SELECT m.nama, MAX(n.Nilai_akhir) AS Nilai_Tertinggi
FROM nilai n
    JOIN mahasiswa m ON n.MahasiswaID = m.MahasiswaID;

SELECT MIN(Nilai_akhir) AS NilaiTerendah FROM nilai;

SELECT SUM(SKS) AS TotalSKS FROM mata_kuliah;

-- tittle: query CRUD
INSERT INTO
    mahasiswa (
        MahasiswaID,
        Nama,
        NIM,
        TanggalLahir,
        JenisKelamin,
        Alamat,
        NoTelepon,
        Email,
        ProgramStudi
    )
VALUES (
        'M007',
        'Gina Pratiwi',
        '1234567896',
        '2005-07-07',
        'Perempuan',
        'Jl. Merdeka No. 7',
        '08123456795',
        '1234567896@mhs.univ.ac.id',
        'Teknik Sipil'
    );

INSERT INTO
    nilai (NilaiID, MahasiswaID, KelasID)
VALUES ('N008', 'M007', 'K001');

UPDATE mahasiswa
SET
    Nama = 'Gina Pratiwi Sari',
    Alamat = 'Jl. Merdeka No. 7A',
    NoTelepon = '08123456796',
    Email = '1234567896@mhs.univ.ac.id',
    ProgramStudi = 'Teknik Sipil'
WHERE
    MahasiswaID = 'M007';

DELETE FROM nilai WHERE MahasiswaID = 'M007';

-- tittle: DROP DATABASE
drop DATABASE si_akademik;