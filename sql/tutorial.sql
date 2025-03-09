--membuat database baru
CREATE DATABASE mydb 

--menggunakan database
USE mydb 

--membuat tabel baru
CREATE TABLE employees ( 
	employee_id int,
	first_name VARCHAR(50),
	last_name VARCHAR(50), 
	hourly_pay DECIMAL(5, 2),
	hire_date DATE
);
--menampilkan tabel
SELECT * FROM product; --menampilkan tabel

--mengubah nama tabel
RENAME TABLE employees TO nama_tabel_baru; 

--menghapus tabel
DROP TABLE employees; 

--menambah kolom pada tabel
ALTER TABLE employees /memanggil tabel/
ADD phone_number VARCHAR(15); --menambah kolom pada tabel

--mengubah nama kolom 
ALTER TABLE employees
RENAME COLUMN hourly_pas TO hourly_pay; /tag mengganti nama kolom/

--mengganti tipe data kolom
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100); /tag mengganti tipe data kolom/

--memindahkan posisi kolom setelah kolom last_name
ALTER TABLE employees 
MODIFY email VARCHAR(100) 
AFTER last_name; /tag mengubah posisi kolom/

--memindahkan kolom email ke kolom pertama
ALTER TABLE employees 
MODIFY email VARCHAR(100) 
FIRST; /tag mengubah posisi kolom ke kolom pertama/

--menghapus kolom
ALTER TABLE employees
DROP COLUMN phone_number; /tag menghapus kolom/

--memasukan nilai pada database single kolom
INSERT INTO employees 
VALUES (1, "chandra", "febriyanto", 25.20, "2021-01-20"); /tag memberi nilai kolom/

--memasukan nilai pada database multi kolom
INSERT INTO employees
VALUES  (2, "Squidward", "Tentacles", 15.00, "2023-01-03"),
        (3, "Spongebob", "Squarepants", 12.50, "2023-01-04"), 
        (4, "Patrick", "Star", 12.50, "2023-01-04"), 
        (5, "Sandy", "Cheeks", 17.25, "2023-01-06"); /tag memberi nilai multi kolom dipisahkan dengan koma/

--memasukan nilai pada data tertentu sesuai variabel
INSERT INTO employees(employee_id, first_name, last_name) /menulis nama variabel yang dibutuhkan saja/
VALUES  (6, "Sheldon", "Plankton");  

--menampilkan tabel dengan kolom tertentu
SELECT first_name, last_name /menyebutkan kolom yang ingin ditampilkan dipisahkan dengan tanda koma/
FROM employees; 

--menampilan tabel dengan data yang lebih spesifik
SELECT * FROM employees
WHERE employee_id /menyebutkan nama kolom/ = 1; /menyebutkan tipe data yang spesifik untuk pemanggilan kolom/

--memperbarui isi tabel, seperti mengganti nama nilai kolom
UPDATE employees /* tag memperbarui kolom*/
SET hire_date = "2023-01-07", hourly_pas = 12.00 /nilai yang perlu diganti/
WHERE employee_id = 6

--menghapus nilai pada tabel secara spesifik
DELETE FROM employees 
WHERE employee_id = 7/baris yang ingin di hapus/

--program data tidak menyimpan secara otomatis (autosave)
SET AUTOCOMMIT = OFF; /untuk mengaktifkan atau menonaktifkan autosave/

--menyimpan data program secara manual
COMMIT; /untuk save data/

--program untuk mengembalikan data setelah di commit (undo) dengan syarat data sudah di commit terlebih dahulu
ROLLBACK; /undo program/

--program untuk membuat nama yang berbeda
CREATE TABLE product(
	product_id INT,
	product_name VARCHAR(25) UNIQUE, /tag untuk membuat nama yang berbeda (non-duplikat)/
	price DECIMAL(4, 2)
);

--program mengaktifkan UNIQUE CONSTRAINT jika dalam pembuatan table belum diberi tag UNIQUE
ALTER Table product
ADD constraint /menambahkan contraint sebelum tag UNIQUE untuk memberitahukan program jika tidak boleh ada nilai yang sama/
UNIQUE (product_name);

--contoh jika ada nama produk yang sama
INSERT INTO product
VALUES 	(101, "beras", 2.00),
	 	(102, "tomat", 2.00),
		(103, "timun", 0.20),
		(104, "tomat", 0.20)

--program untuk menulis tanggal, waktu, tanggalwaktu sekarang secara otomatis
CREATE Table test(
	my_date DATE,
	my_time TIME,
	my_datetime DATETIME
);

INSERT into test
VALUES (CURRENT_DATE(), CURRENT_TIME(), NOW()); 
/*current_date untuk otomatis menulis tanggal sekarang khusus tipe data DATE, current_time untuk otomatis menulis jam sekarang khusus tipe data TIME,
now untuk menulis tanggal dan waktu sekarang khusus tipe data DATETIME
*/

--program kolom tidak boleh bernilai NULL / kosong
CREATE TABLE product(
	product_id INT,
	product_name VARCHAR(25),
	price DECIMAL(4, 2) NOT NULL /harus menambahkan tag tersebut agar nilai tidak boleh kosong/
);

--program kolom tidak boleh bernilai NULL / kosong jika tabel sudah dibuat dan ingin menambahkan fungsi NOT NULL
ALTER TABLE product
MODIFY price DECIMAL(4,2) not NULL;

--check constraint = memberikan batasan untuk isi nilai, contoh dalam pembuatan tabel baru
CREATE Table employees(
	employee_id int,
	first_name VARCHAR(50),
	last_name VARCHAR(50), 
	hourly_pay DECIMAL(5, 2),
	hire_date DATE
	CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00) /artinya nilai gaji harus lebih besr dari pada 10/
);

--jika tabel sudah dibuat
ALTER TABLE employees
ADD constraint 
chk_hourly_pay check (hourly_pas >= 10.00); /chk_hourly_pay adalah pemberian nama untuk program CHECK/

--untuk menghapus CHECK
alter table employees
DROP CHECK chk_hourly_pay

--program untuk menentukan nilai default dari sebuah kolom, ketika membuat tabel baru
CREATE Table product(
	product_id INT
	product_name VARCHAR(25)
	price DECIMAL(4, 0) DEFAULT 0 /* cara untuk membuat program default*/
)

--ketika ingin menambahkan di tabel yang sudah dibuat
ALTER Table product
alter price SET DEFAULT 0 /harus ditambah tag SET DEFAULT (nilai) untuk menambahkan nilai default/

--membuat tanggal secara otomatis
CREATE Table transaksi(
	transaksi_id INT,
	amount DECIMAL(5,2),
	transaksi_date DATETIME DEFAULT now() /harus ditambahkan default now/
)

--PRIMARY KEY = diterapkan untuk nilai kolom yang tidak sama atau null
CREATE Table transaksi(
	transaksi_id INT PRIMARY KEY, /tambah tag PRIMARY KEY kedalam kolom yang ingin ditambahkan/
	amount DECIMAL (5,2)
);

--menambahkan primary key di tabel yang sudah ada
ALTER Table transaksi
ADD constraint
PRIMARY KEY(transaksi_id); /nama kolom/

--drop primery key
ALTER Table transaksi
DROP PRIMARY key;

--kenaikan nilai otomatis dalam primary key
CREATE Table transaksi(
	transaksi_id INT PRIMARY KEY AUTO_INCREMENT, /tambahkan tag AUTO_INCREMENT/
	amount DECIMAL (5, 2)
);

--menentukan nilai awal dari tag auto_increment
ALTER Table transaksi
AUTO_INCREMENT = 1000;

--cara membuat tabel baru dengan menghubungkan foreign key ke tabel yang lain, sebelum itu buat tabel untuk dihubungkan dengan foreign key
CREATE Table transaksi(
	transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
	amount DECIMAL (5,2),
	pelanggan_id INT,
	FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id) 
	/menulis dengan ketentuan seperti disamping, menulis variabel untuk di tabel transaksi kemudian memanggil kolom di table yang dituju/
);

--cara menambahkan foreign key kedalam tabel yang sudah ada
ALTER Table transaksi
ADD constraint pelanggan_id
FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id)

--mengabungkan kedua table menjadi satu (inner, left, right)
SELECT * /jika ingin lebih spesifik tambahkan nama kolom/
FROM transaksi INNER join pelanggan /untuk inner bisa diganti sesuai kebutuhan/
ON transaksi.pelanggan_id = pelanggan.pelanggan_id

--membuat function (function di sql ada banyak seperti, max, min, sum, avg, concat, dll)
SELECT CONCAT(first_name, " ", last_name) AS full_name, /nama_kolom_baru/
FROM employees;

--logika operator (and, or, not), menampilkan nilai sesuai dengan aturan
SELECT * 
FROM employees
WHERE hire_date < "2023-01-05" AND job="cook" /AND/

SELECT * 
FROM employees
WHERE hire_date > "2023-01-05" OR job="cook" /OR/

SELECT * 
FROM employees
WHERE NOT job="cook" AND NOT hire_date < "2023-01-03" /NOT/

SELECT * 
FROM employees
WHERE hourly_pay BETWEEN 12.00 AND 20.00 /BETWEEN/

SELECT * 
FROM employees
WHERE job IN ("cook", "cashier") /IN/

--wild cara (%, _) digunakan untuk mencari nilai melalui 1 karakter atau lebih (string)
SELECT * FROM employees
WHERE first_name like "s%" /mencari karakter dengan awalan huruf s/

SELECT * FROM employees
WHERE job like "__ok" /mencari kata yang hampir mendekati/

SELECT * FROM employees
WHERE first_name LIKE "_a%" /mencari dari huruf kedua a/

--order by digunakan untuk mengurutkan sesuatu (a, b, c, ...) sesuai kolom yang ingin diurutkan
SELECT * FROM employees
ORDER BY first_name; /* DESC jika ingin urutannya dibalik (z, y, x, ...) */

--membatasi hasil yang ingin ditampilkan
SELECT * FROM pelanggan
ORDER BY first_name LIMIT 3 ;

--unions == menggabungkan dua tabel
SELECT first_name, last_name FROM employees
UNION --/tambahkan UNION ditengah TABLE/
SELECT first_name, last_name FROM pelanggan

UPDATE employees
SET supervisor_id = 1
WHERE employee_id = 5

--self join menggabungkan salinan table ke dirinya sendiri
SELECT a.first_name, a.last_name,
		CONCAT (b.first_name," ", b.last_name) as "report to"
FROM employees AS a
INNER JOIN employees AS b 
ON a.supervisor_id = b.employee_id;

--membuat tampilan baru dari tabel yang sudah ada
CREATE View full_name AS
SELECT first_name, last_name 
FROM employees;
UPDATE pelanggan 
SET email = "nsadewa@gmail.com" 
WHERE pelanggan_id = 5;
CREATE VIEW email_pelanggan AS
SELECT CONCAT(first_name, last_name) AS full_name,email FROM pelanggan;
/jika nilai pada kolom ditambahkan maka view email_pelanggan akan otomatis update/

--SUBQUERIES = perintah dalam perintah
SELECT first_name, last_name FROM pelanggan
WHERE pelanggan_id in
/*maksud pernyataan ini menampilkan nomer id pelanggan dari tabel transaksi yang tidak bernilai NULL
kemudian penyataan tersebut dihubungkan dengan pertanyaan atas yaitu menampilkan first_name dan last_name
dari pernyataan dibawah*/
(SELECT pelanggan_id FROM transaksi
WHERE pelanggan_id IS NOT NULL);

--group by = mengelompokkan dengan KOLOM lain (SUM, MAX, MIN, AVG, COUNT)
SELECT SUM(amount) as sum_amount, order_date 
FROM transaksi
GROUP BY order_date;
SELECT SUM(amount) as sum_amount, order_date 
FROM transaksi
GROUP BY order_date
HAVING SUM(amount) > 7;

--ROLLUP = MENAMBAHKAN NILAI BARU PALING BAWAH SESUAI DENGAN FUNCTION
SELECT SUM(amount), order_date
FROM transaksi
GROUP BY order_date WITH ROLLUP
/menjumlah semua amont dari semua line/

--membuat procedures == def dalam python
CREATE PROCEDURE find_customer(IN id INT)  
BEGIN  
 SELECT *
 FROM pelanggan
 WHERE pelanggan_id = id;
END;
--cara manggil
CALL find_customer (2)

UPDATE employees
SET salary = hourly_pay * 2080;
SELECT * FROM employees;
CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees 
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);