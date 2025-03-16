-- MEMBUAT DATABASE manajemen_Saham
CREATE DATABASE manajemen_saham;

--MENGGUNAKAN DATABASE manajemen_saham
USE manajemen_Saham;

-- --------------------------------------------------------------- --
--MEMBUAT TABEL INVESTOR
CREATE Table investor(
    investor_id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(25) NOT NULL,
    email VARCHAR(25) UNIQUE NOT NULL,
    nomer_telepon VARCHAR(15) NOT NULL,
    tanggal_bergabung DATE DEFAULT NOW()
);

-- MEMBUAT AUTO INCREMENT DIMULAI DARI 101
ALTER Table investor AUTO_INCREMENT = 101;

-- MENAMBAHKAN NILAI KEDALAM TABEL INVESTOR
INSERT INTO investor (nama, email, nomer_telepon)
VALUES  ("Andi Wijaya",	    "andi.wijaya@email.com",    "081234567890"),
        ("Budi Santoso",	"budi.santoso@email.com",	"081234567891"),
        ("Cindy Lestari",	"cindy.lestari@email.com",	"081234567892"),
        ("Dedi Pratama",	"dedi.pratama@email.com",	"081234567893"),
        ("Erika Sari",	    "erika.sari@email.com",     "081234567894"),
        ("Fajar Hidayat",	"fajar.hidayat@email.com",	"081234567895"),
        ("Gina Oktavia",	"gina.oktavia@email.com",	"081234567896"),
        ("Hadi Saputra",	"hadi.saputra@email.com",	"081234567897"),
        ("Intan Permata",	"intan.permata@email.com",  "081234567898"),
        ("Joko Supriyadi",	"joko.supriyadi@email.com", "081234567899");

-- MEMVALIDASI TABEL INVESTOR
SELECT * FROM investor;

-- --------------------------------------------------------------- --
--MEMBUAT TABEL SAHAM
CREATE TABLE saham(
    saham_id INT AUTO_INCREMENT PRIMARY KEY,
    kode_saham VARCHAR(5) NOT NULL,
    perusahaan VARCHAR(50) NOT NULL,
    harga_per_lot DECIMAL(10,0) NOT NULL,
    dividen_per_lot DECIMAL(10,0) NOT NULL
);

--MEMBUAT AUTO INCREMENT DIMULAI DARI 201
ALTER Table saham AUTO_INCREMENT = 201;

-- MENAMBAHKAN NILAI KEDALAM TABEL SAHAM
INSERT INTO saham(kode_saham, perusahaan, harga_per_lot, dividen_per_lot)
VALUES  ("BBCA",	"Bank Central Asia",	        10000000,    500000),
        ("TLKM",	"Telkom Indonesia",	            8000000,	 350000),
        ("BBRI",	"Bank Rakyat Indonesia",	    7500000,	 300000),
        ("UNVR",	"Unilever Indonesia",	        5000000,	 250000),
        ("ASII",	"Astra International",	        6500000,	 400000),
        ("GGRM",	"Gudang Garam",	                6000000,	 375000),
        ("INDF",	"Indofood Sukses Makmur",	    4500000,	 225000),
        ("PGAS",	"Perusahaan Gas Negara",	    5500000,	 280000),
        ("ANTM",	"Aneka Tambang",	            6200000,	 310000),
        ("ICBP",	"Indofood CBP Sukses Makmur",	7000000,	 330000);

--MEMVALIDASI TABEL SAHAM
SELECT * FROM saham;

-- --------------------------------------------------------------- --
-- MEMBUAT TABEL TRANSAKSI
CREATE TABLE transaksi(
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    investor_id INT NOT NULL,
    saham_id INT NOT NULL,
    tanggal_transaksi DATE DEFAULT NOW(),
    jumlah_lot INT NOT NULL,
    Foreign Key (investor_id) REFERENCES investor(investor_id),
    Foreign Key (saham_id) REFERENCES saham(saham_id)
);

--MEMBUAT AUTO INCREMENT DIMULAI DARI 301
ALTER TABLE transaksi AUTO_INCREMENT = 301;

INSERT INTO transaksi (investor_id, saham_id, jumlah_lot)
VALUE   (101, 201, 5),
        (102, 203, 3),
        (103, 205, 7),
        (104, 207, 2),
        (105, 209, 6);

--MEMVALIDASI TABEL TRANSAKSI
SELECT * FROM transaksi;

-- --------------------------------------------------------------- --
--MEMBUAT TABEL PORTOFOLIO
CREATE TABLE portofolio(
    portofolio_id INT AUTO_INCREMENT PRIMARY KEY,
    investor_id INT NOT NULL,
    saham_id INT NOT NULL, 
    jumlah_lot INT NOT NULL,
    total_investasi DECIMAL(10,0) NOT NULL,
    Foreign Key (investor_id) REFERENCES investor(investor_id),
    Foreign Key (saham_id) REFERENCES saham(saham_id)
);

--MEMBUAT AUTO INCREMENT DIMULAI DARI 401
ALTER TABLE portofolio AUTO_INCREMENT = 401;

-- MEMVALIDASI TABEL PORTOFOLIO
SELECT * FROM portofolio;

-- --------------------------------------------------------------- --
--TRIGGER
CREATE TRIGGER after_insert_transaksi
AFTER INSERT ON Transaksi
FOR EACH ROW
BEGIN
    -- Cek apakah investor sudah memiliki saham di tabel Portofolio
    IF EXISTS (SELECT * FROM Portofolio WHERE investor_id = NEW.investor_id AND saham_id = NEW.saham_id) THEN
        -- Jika ada, update jumlah lot
        UPDATE Portofolio
        SET jumlah_lot = jumlah_lot + NEW.jumlah_lot
        WHERE investor_id = NEW.investor_id AND saham_id = NEW.saham_id;
    ELSE
        -- Jika tidak ada, insert data baru
        INSERT INTO Portofolio (investor_id, saham_id, jumlah_lot, total_investasi)
        VALUES (NEW.investor_id, NEW.saham_id, NEW.jumlah_lot, 0);
    END IF;
END;

CREATE TRIGGER after_update_portofolio
AFTER INSERT ON Transaksi
FOR EACH ROW
BEGIN
    -- Update total investasi berdasarkan jumlah lot terbaru
    UPDATE Portofolio p
    JOIN Saham s ON p.saham_id = s.saham_id
    SET p.total_investasi = p.jumlah_lot * s.harga_per_lot
    WHERE p.investor_id = NEW.investor_id AND p.saham_id = NEW.saham_id;
END;