-- membuat database
CREATE DATABASE manajemen_saham;

-- menggunakan database
USE manajemen_saham;

-- membuat tabel pengguna
CREATE Table pengguna(
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(25) NOT NULL,
    email VARCHAR(25) UNIQUE NOT NULL,
    password VARCHAR(25) NOT NULL
);