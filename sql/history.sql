/* 2025-01-24 09:18:02 [3 ms] */
USE mydb;
/* 2025-01-24 09:21:06 [16 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 09:22:29 [103 ms] */
ALTER TABLE employees ADD number_phone INT;
/* 2025-01-24 09:23:00 [7 ms] */
select * from employees LIMIT 100;
/* 2025-01-24 09:24:32 [36 ms] */
ALTER Table employees MODIFY number_phone INT after employee_id;
/* 2025-01-24 09:24:37 [6 ms] */
select * from employees LIMIT 100;
/* 2025-01-24 09:25:23 [24 ms] */
ALTER Table employees MODIFY number_phone INT after employee_id;
/* 2025-01-24 09:25:57 [18 ms] */
create DATABASE localhost;
/* 2025-01-24 09:27:05 [29 ms] */
drop DATABASE localhost;
/* 2025-01-24 09:28:49 [5 ms] */
use mydb;
/* 2025-01-24 09:29:04 [3 ms] */
use world;
/* 2025-01-24 09:29:49 [21 ms] */
select * from city LIMIT 100;
/* 2025-01-24 10:58:25 [25 ms] */
use mydb;
/* 2025-01-24 10:58:43 [7 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 10:58:49 [59 ms] */
RENAME TABLE employees TO workers;
/* 2025-01-24 10:59:20 [40 ms] */
RENAME TABLE workers TO employees;
/* 2025-01-24 10:59:32 [84 ms] */
ALTER TABLE employees ADD phone_number VARCHAR(15);
/* 2025-01-24 10:59:50 [28 ms] */
ALTER TABLE employees MODIFY COLUMN email VARCHAR(100);
/* 2025-01-24 11:00:12 [54 ms] */
ALTER TABLE employees DROP COLUMN number_phone;
/* 2025-01-24 11:05:28 [12 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:42:04 [156 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:42:57 [184 ms] */
ALTER TABLE employees DROP COLUMN phone_number;
/* 2025-01-24 14:43:03 [53 ms] */
ALTER TABLE employees DROP COLUMN email;
/* 2025-01-24 14:43:06 [8 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:47:59 [6 ms] */
USE mydb;
/* 2025-01-24 14:48:02 [4 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:49:05 [24 ms] */
INSERT INTO
    employees
VALUES (
        1,
        "chandra",
        "febriyanto",
        25.20,
        "2021-01-20"
    );
/* 2025-01-24 14:49:08 [6 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:49:21 [7 ms] */
DELETE FROM `employees`
WHERE
    `employee_id` = 1
    AND `first_name` = 'chandra'
    AND `last_name` = 'febriyanto'
    AND `hourly_pas` = 25.2
    AND `hire_date` = '2021-01-20';
/* 2025-01-24 14:49:21 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:49:27 [5 ms] */
INSERT INTO
    employees
VALUES (
        1,
        "chandra",
        "febriyanto",
        25.20,
        "2021-01-20"
    );
/* 2025-01-24 14:49:28 [5 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:49:43 [4 ms] */
DELETE FROM `employees`
WHERE
    `employee_id` = 1
    AND `first_name` = 'chandra'
    AND `last_name` = 'febriyanto'
    AND `hourly_pas` = 25.2
    AND `hire_date` = '2021-01-20';
/* 2025-01-24 14:49:43 [1 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:49:46 [6 ms] */
INSERT INTO
    employees
VALUES (
        1,
        "chandra",
        "febriyanto",
        25.20,
        "2021-01-20"
    );
/* 2025-01-24 14:49:47 [4 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:51:09 [18 ms] */
INSERT INTO
    employees
VALUES (
        1,
        "chandra",
        "febriyanto",
        25.20,
        "2021-01-20"
    );
/* 2025-01-24 14:51:18 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:51:23 [15 ms] */
DELETE FROM `employees`
WHERE (
        `employee_id` = 1
        AND `first_name` = 'chandra'
        AND `last_name` = 'febriyanto'
        AND `hourly_pas` = 25.2
        AND `hire_date` = '2021-01-20'
    )
    OR (
        `employee_id` = 1
        AND `first_name` = 'chandra'
        AND `last_name` = 'febriyanto'
        AND `hourly_pas` = 25.2
        AND `hire_date` = '2021-01-20'
    )
    OR (
        `employee_id` = 1
        AND `first_name` = 'chandra'
        AND `last_name` = 'febriyanto'
        AND `hourly_pas` = 25.2
        AND `hire_date` = '2021-01-20'
    );
/* 2025-01-24 14:51:23 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:57:33 [15 ms] */
INSERT INTO
    employees
VALUES (
        2,
        "Squidward",
        "Tentacles",
        15.00,
        "2023-01-03"
    ),
    (
        3,
        "Spongebob",
        "Squarepants",
        12.50,
        "2023-01-04"
    ),
    (
        4,
        "Patrick",
        "Star",
        12.50,
        "2023-01-04"
    ),
    (
        5,
        "Sandy",
        "Cheeks",
        17.25,
        "2023-01-06"
    );
/* 2025-01-24 14:57:35 [5 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:57:38 [7 ms] */
INSERT INTO
    employees
VALUES (
        1,
        "chandra",
        "febriyanto",
        25.20,
        "2021-01-20"
    );
/* 2025-01-24 14:57:41 [4 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:57:56 [16 ms] */
DELETE FROM `employees`
WHERE (
        `employee_id` = 2
        AND `first_name` = 'Squidward'
        AND `last_name` = 'Tentacles'
        AND `hourly_pas` = 15
        AND `hire_date` = '2023-01-03'
    )
    OR (
        `employee_id` = 3
        AND `first_name` = 'Spongebob'
        AND `last_name` = 'Squarepants'
        AND `hourly_pas` = 12.5
        AND `hire_date` = '2023-01-04'
    )
    OR (
        `employee_id` = 4
        AND `first_name` = 'Patrick'
        AND `last_name` = 'Star'
        AND `hourly_pas` = 12.5
        AND `hire_date` = '2023-01-04'
    )
    OR (
        `employee_id` = 5
        AND `first_name` = 'Sandy'
        AND `last_name` = 'Cheeks'
        AND `hourly_pas` = 17.25
        AND `hire_date` = '2023-01-06'
    )
    OR (
        `employee_id` = 1
        AND `first_name` = 'chandra'
        AND `last_name` = 'febriyanto'
        AND `hourly_pas` = 25.2
        AND `hire_date` = '2021-01-20'
    );
/* 2025-01-24 14:57:56 [3 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 14:58:00 [6 ms] */
INSERT INTO
    employees
VALUES (
        1,
        "chandra",
        "febriyanto",
        25.20,
        "2021-01-20"
    );
/* 2025-01-24 14:58:01 [16 ms] */
INSERT INTO
    employees
VALUES (
        2,
        "Squidward",
        "Tentacles",
        15.00,
        "2023-01-03"
    ),
    (
        3,
        "Spongebob",
        "Squarepants",
        12.50,
        "2023-01-04"
    ),
    (
        4,
        "Patrick",
        "Star",
        12.50,
        "2023-01-04"
    ),
    (
        5,
        "Sandy",
        "Cheeks",
        17.25,
        "2023-01-06"
    );
/* 2025-01-24 14:58:02 [5 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 15:01:30 [7 ms] */
INSERT INTO
    employees (
        employee_id,
        first_name,
        last_name
    )
VALUES (6, "Sheldon", "Plankton");
/* 2025-01-24 15:01:33 [1 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 19:11:22 [190 ms] */
ALTER TABLE employees /*memanggil tabel*/
ADD phone_number VARCHAR(15);
/* 2025-01-24 19:11:49 [36 ms] */
ALTER TABLE employees DROP COLUMN phone_number;
/* 2025-01-24 19:16:33 [2 ms] */
USE mydb;
/* 2025-01-24 19:16:43 [18 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 21:00:39 [12 ms] */
SELECT first_name, last_name FROM employees LIMIT 100;
/* 2025-01-24 21:03:17 [17 ms] */
SELECT * FROM employees WHERE employee_id = 1 LIMIT 100;
/* 2025-01-24 21:04:34 [3 ms] */
SELECT *
FROM employees
WHERE
    employee_id /*menyebutkan nama kolom*/ = 1
LIMIT 100;
/* 2025-01-24 21:10:22 [27 ms] */
UPDATE employees SET hourly_pas = 12.00 WHERE employee_id = 6;
/* 2025-01-24 21:10:29 [3 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 21:11:52 [16 ms] */
UPDATE employees
SET
    first_name = "Eugene",
    last_name = "Krabs"
WHERE
    employee_id = 1;
/* 2025-01-24 21:11:53 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 21:14:35 [6 ms] */
UPDATE employees /* tag memperbarui kolom*/
SET
    first_name = "Eugene",
    last_name = "Krabs",
    hire_date = "2023-01-07" /*nilai yang perlu diganti*/
WHERE
    employee_id = 1;
/* 2025-01-24 21:14:36 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 21:14:51 [4 ms] */
UPDATE employees /* tag memperbarui kolom*/
SET
    first_name = "Eugene",
    last_name = "Krabs",
    hire_date = "2023-01-02" /*nilai yang perlu diganti*/
WHERE
    employee_id = 1;
/* 2025-01-24 21:15:06 [15 ms] */
UPDATE employees /* tag memperbarui kolom*/
SET
    hire_date = "2023-01-07" /*nilai yang perlu diganti*/
WHERE
    employee_id = 6;
/* 2025-01-24 21:15:07 [3 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 21:25:10 [24 ms] */
INSERT INTO
    employees
VALUES (
        2,
        "Squidward",
        "Tentacles",
        15.00,
        "2023-01-03"
    ),
    (
        3,
        "Spongebob",
        "Squarepants",
        12.50,
        "2023-01-04"
    ),
    (
        4,
        "Patrick",
        "Star",
        12.50,
        "2023-01-04"
    ),
    (
        5,
        "Sandy",
        "Cheeks",
        17.25,
        "2023-01-06"
    );
/* 2025-01-24 21:25:19 [3 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 21:25:38 [14 ms] */
DELETE FROM `employees`
WHERE (
        `employee_id` = 2
        AND `first_name` = 'Squidward'
        AND `last_name` = 'Tentacles'
        AND `hourly_pas` = 15
        AND `hire_date` = '2023-01-03'
    )
    OR (
        `employee_id` = 3
        AND `first_name` = 'Spongebob'
        AND `last_name` = 'Squarepants'
        AND `hourly_pas` = 12.5
        AND `hire_date` = '2023-01-04'
    )
    OR (
        `employee_id` = 4
        AND `first_name` = 'Patrick'
        AND `last_name` = 'Star'
        AND `hourly_pas` = 12.5
        AND `hire_date` = '2023-01-04'
    )
    OR (
        `employee_id` = 5
        AND `first_name` = 'Sandy'
        AND `last_name` = 'Cheeks'
        AND `hourly_pas` = 17.25
        AND `hire_date` = '2023-01-06'
    );
/* 2025-01-24 21:25:38 [3 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 21:25:55 [14 ms] */
DELETE FROM `employees`
WHERE (
        `employee_id` = 1
        AND `first_name` = 'Eugene'
        AND `last_name` = 'Krabs'
        AND `hourly_pas` = 25.2
        AND `hire_date` = '2023-01-02'
    )
    OR (
        `employee_id` = 6
        AND `first_name` = 'Sheldon'
        AND `last_name` = 'Plankton'
        AND `hourly_pas` = 12
        AND `hire_date` = '2023-01-07'
    );
/* 2025-01-24 21:25:55 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 21:26:01 [4 ms] */
INSERT INTO
    employees
VALUES (
        1,
        "chandra",
        "febriyanto",
        25.20,
        "2021-01-20"
    );
/* 2025-01-24 21:26:03 [4 ms] */
INSERT INTO
    employees
VALUES (
        2,
        "Squidward",
        "Tentacles",
        15.00,
        "2023-01-03"
    ),
    (
        3,
        "Spongebob",
        "Squarepants",
        12.50,
        "2023-01-04"
    ),
    (
        4,
        "Patrick",
        "Star",
        12.50,
        "2023-01-04"
    ),
    (
        5,
        "Sandy",
        "Cheeks",
        17.25,
        "2023-01-06"
    );
/* 2025-01-24 21:26:04 [15 ms] */
INSERT INTO
    employees (
        employee_id,
        first_name,
        last_name
    ) /*menulis nama variabel yang dibutuhkan saja*/
VALUES (6, "Sheldon", "Plankton");
/* 2025-01-24 21:26:16 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-24 21:26:49 [4 ms] */
UPDATE employees /* tag memperbarui kolom*/
SET
    hire_date = "2023-01-07",
    hourly_pas = 12.00 /*nilai yang perlu diganti*/
WHERE
    employee_id = 6;
/* 2025-01-24 21:26:57 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-25 08:49:40 [20 ms] */
SET AUTOCOMMIT = OFF;
/* 2025-01-25 08:50:22 [5 ms] */
COMMIT;
/* 2025-01-25 08:50:24 [56 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-25 08:51:00 [17 ms] */
DELETE FROM employees;
/* 2025-01-25 08:51:02 [1 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-25 08:51:09 [6 ms] */
ROLLBACK;
/* 2025-01-25 08:51:11 [1 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-25 08:51:14 [2 ms] */
COMMIT;
/* 2025-01-25 08:51:26 [2 ms] */
SET AUTOCOMMIT = ON;
/* 2025-01-25 20:55:23 [149 ms] */
CREATE TABLE product (
    product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(4, 2)
);
/* 2025-01-25 20:56:20 [16 ms] */
SELECT * FROM product LIMIT 100;
/* 2025-01-25 20:58:58 [19 ms] */
INSERT INTO
    product
VALUES (100, "beras", 2.00),
    (101, "gula", 3.00),
    (102, "garam", 0.50),
    (103, "tepung", 0.70),
    (102, "garam", 0.50);
/* 2025-01-25 20:59:07 [2 ms] */
SELECT * FROM product LIMIT 100;
/* 2025-01-25 20:59:17 [5 ms] */
INSERT INTO
    product
VALUES (100, "beras", 2.00),
    (101, "gula", 3.00),
    (102, "garam", 0.50),
    (103, "tepung", 0.70),
    (104, "garam", 0.50);
/* 2025-01-25 21:02:23 [37 ms] */
DROP Table product;
/* 2025-01-25 21:02:41 [54 ms] */
CREATE TABLE product (
    product_id INT,
    product_name VARCHAR(25) UNIQUE,
    /*tag untuk membuat nama yang berbeda (non-duplikat)*/ price DECIMAL(4, 2)
);
/* 2025-01-25 21:04:14 [16 ms] */
ALTER Table product ADD constraint UNIQUE (product_name);
/* 2025-01-25 21:07:43 [4 ms] */
INSERT INTO
    product
VALUES (101, "beras", 2.00),
    (102, "tomat", 2.00),
    (103, "timun", 0.20),
    (104, "merica", 0.20);
/* 2025-01-25 21:07:57 [3 ms] */
SELECT * from product LIMIT 100;
/* 2025-01-25 21:09:11 [48 ms] */
ALTER Table product
ADD constraint /*menambahkan contraint sebelum tag UNIQUE untuk memberitahukan program jika tidak boleh ada nilai yang sama*/ UNIQUE (product_name);
/* 2025-01-25 21:14:00 [24 ms] */
CREATE Table test (
    my_date DATE,
    my_time TIME,
    my_datetime DATETIME
);
/* 2025-01-25 21:15:00 [4 ms] */
INSERT into test VALUES ( CURRENT_DATE(), CURRENT_TIME(), NOW() );
/* 2025-01-25 21:15:01 [2 ms] */
SELECT * FROM test LIMIT 100;
/* 2025-01-25 21:23:45 [97 ms] */
ALTER TABLE product MODIFY price DECIMAL(4, 2) NOT NULL;
/* 2025-01-25 21:27:04 [96 ms] */
ALTER TABLE product MODIFY price DECIMAL(4, 2) NULL;
/* 2025-01-25 21:27:29 [15 ms] */
INSERT INTO
    product (product_id, product_name)
VALUES (104, "tepung");
/* 2025-01-25 21:27:42 [2 ms] */
SELECT * FROM product LIMIT 100;
/* 2025-01-25 21:30:38 [9 ms] */
UPDATE product set product_id = 105 WHERE product_name = "tepung";
/* 2025-01-25 21:30:40 [13 ms] */
SELECT * FROM product LIMIT 100;
/* 2025-01-26 09:38:19 [5 ms] */
USE mydb;
/* 2025-01-26 09:38:31 [19 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-26 09:40:13 [173 ms] */
ALTER TABLE employees
ADD constraint chk_hourly_pay check (hourly_pas >= 10.00);
/* 2025-01-26 09:42:02 [6 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-26 09:43:29 [22 ms] */
INSERT INTO
    employees
VALUES (
        7,
        "bagus",
        "sadewa",
        10.00,
        "2024-01-12"
    );
/* 2025-01-26 09:43:31 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-26 09:44:47 [30 ms] */
alter table employees DROP CHECK chk_hourly_pay;
/* 2025-01-26 09:45:02 [16 ms] */
INSERT INTO
    employees
VALUES (
        7,
        "bagus",
        "sadewa",
        3.00,
        "2024-01-12"
    );
/* 2025-01-26 09:45:05 [1 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-26 09:45:46 [29 ms] */
ALTER TABLE employees RENAME COLUMN hourly_pas TO hourly_pay;
/* 2025-01-26 09:45:48 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-26 09:46:52 [9 ms] */
DELETE FROM employees /*tag untuk menghapus secara spesifik*/
WHERE
    employee_id = 7
    /*output yang keluar adalah kolom bari ke 6 akan kehapus*/;
/* 2025-01-26 09:46:54 [10 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-26 16:29:06 [165 ms] */
ALTER Table product alter price SET DEFAULT 0;
/* 2025-01-26 16:30:30 [9 ms] */
SELECT * FROM product LIMIT 100;
/* 2025-01-26 16:31:56 [29 ms] */
DELETE FROM product WHERE product_id = 105;
/* 2025-01-26 16:31:58 [1 ms] */
SELECT * FROM product LIMIT 100;
/* 2025-01-26 16:32:48 [20 ms] */
insert INTO product VALUES (105, "kresek", 0);
/* 2025-01-26 16:32:51 [1 ms] */
SELECT * FROM product LIMIT 100;
/* 2025-01-26 16:33:30 [19 ms] */
DELETE FROM product WHERE product_id = 105;
/* 2025-01-26 16:33:31 [2 ms] */
SELECT * FROM product LIMIT 100;
/* 2025-01-26 16:34:14 [19 ms] */
insert INTO
    product (product_id, product_name)
VALUES (105, "kresek");
/* 2025-01-26 16:34:16 [2 ms] */
SELECT * FROM product LIMIT 100;
/* 2025-01-26 16:42:05 [224 ms] */
CREATE Table transaksi (
    transaksi_id INT,
    amount DECIMAL(5, 2),
    transaksi_date DATETIME DEFAULT now()
);
/* 2025-01-26 16:45:25 [9 ms] */
INSERT into
    transaksi (transaksi_id, amount)
VALUES (001, 500.00),
    (002, 100.00),
    (003, 600.00);
/* 2025-01-26 16:45:53 [10 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 18:29:19 [379 ms] */
ALTER TABLE transaksi ADD constraint PRIMARY KEY (transaksi_id);
/* 2025-01-27 18:29:31 [19 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 18:32:07 [22 ms] */
INSERT INTO transaksi (transaksi_id, amount) VALUES (4, 700.00);
/* 2025-01-27 18:32:09 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 18:36:45 [102 ms] */
ALTER Table transaksi DROP PRIMARY key;
/* 2025-01-27 18:37:07 [6 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 18:37:46 [7 ms] */
INSERT into transaksi (transaksi_id, amount) VALUES (4, 500.00);
/* 2025-01-27 18:37:48 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 18:40:58 [23 ms] */
DELETE from transaksi WHERE transaksi_date = '2025-01-27 18:37:46';
/* 2025-01-27 18:41:00 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 18:43:05 [3 ms] */
COMMIT;
/* 2025-01-27 21:24:09 [51 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 21:25:27 [27 ms] */
INSERT into transaksi (transaksi_id, amount) VALUES (4, 200.00);
/* 2025-01-27 21:25:40 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 21:26:24 [9 ms] */
DELETE from transaksi WHERE amount = 200.00;
/* 2025-01-27 21:26:26 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 21:29:28 [126 ms] */
ALTER Table transaksi ADD constraint PRIMARY KEY (transaksi_id);
/* 2025-01-27 21:29:34 [3 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 21:31:43 [16 ms] */
drop TABLE transaksi;
/* 2025-01-27 21:32:08 [29 ms] */
drop TABLE test;
/* 2025-01-27 21:34:07 [17 ms] */
CREATE Table transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    /*tambahkan tag AUTO_INCREMENT*/ amount DECIMAL(5, 2)
);
/* 2025-01-27 21:35:25 [6 ms] */
INSERT INTO transaksi (amount) VALUES (5.99);
/* 2025-01-27 21:35:32 [4 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 21:35:38 [15 ms] */
INSERT INTO transaksi (amount) VALUES (5.99);
/* 2025-01-27 21:35:41 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 21:35:44 [4 ms] */
INSERT INTO transaksi (amount) VALUES (5.99);
/* 2025-01-27 21:35:46 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 21:37:59 [22 ms] */
ALTER Table transaksi AUTO_INCREMENT = 1000;
/* 2025-01-27 21:38:13 [5 ms] */
DELETE FROM transaksi;
/* 2025-01-27 21:38:30 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 21:39:29 [15 ms] */
INSERT into transaksi (amount) VALUES (3.99);
/* 2025-01-27 21:39:33 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-27 21:40:04 [4 ms] */
INSERT into transaksi (amount) VALUES (5.99);
/* 2025-01-27 21:40:23 [4 ms] */
INSERT into transaksi (amount) VALUES (7.99);
/* 2025-01-27 21:40:27 [3 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:12:27 [64 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:22:20 [44 ms] */
drop Table transaksi;
/* 2025-01-28 15:25:39 [32 ms] */
create Table pelanggan (
    pelanggan_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
/* 2025-01-28 15:27:52 [23 ms] */
INSERT into
    pelanggan (first_name, last_name)
VALUES ("rudy", "kusuma"),
    ("alex", "jivanda"),
    ("bobby", "kartanegara"),
    ("meikarta", "putri");
/* 2025-01-28 15:27:53 [3 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-28 15:29:35 [51 ms] */
CREATE Table transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL,
    pelanggan_id INT,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id)
);
/* 2025-01-28 15:32:14 [4 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:36:16 [70 ms] */
ALTER Table transaksi
ADD constraint pelanggan_id FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id);
/* 2025-01-28 15:38:09 [7 ms] */
INSERT into
    transaksi (amount, pelanggan_id)
VALUES (5.99, 2),
    (3.23, 3),
    (5.77, 1),
    (2.12, 4);
/* 2025-01-28 15:38:12 [31 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:38:21 [22 ms] */
ALTER Table transaksi AUTO_INCREMENT = 1000;
/* 2025-01-28 15:38:24 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:38:34 [15 ms] */
INSERT into
    transaksi (amount, pelanggan_id)
VALUES (5.99, 2),
    (3.23, 3),
    (5.77, 1),
    (2.12, 4);
/* 2025-01-28 15:38:37 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:38:44 [5 ms] */
DELETE FROM `transaksi`
WHERE
    `transaksi_id` IN (
        1,
        2,
        3,
        4,
        1000,
        1001,
        1002,
        1003
    );
/* 2025-01-28 15:38:44 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:38:48 [4 ms] */
INSERT into
    transaksi (amount, pelanggan_id)
VALUES (5.99, 2),
    (3.23, 3),
    (5.77, 1),
    (2.12, 4);
/* 2025-01-28 15:38:51 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:39:13 [4 ms] */
DELETE FROM transaksi;
/* 2025-01-28 15:39:20 [3 ms] */
INSERT into
    transaksi (amount, pelanggan_id)
VALUES (5.99, 2),
    (3.23, 3),
    (5.77, 1),
    (2.12, 4);
/* 2025-01-28 15:39:24 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:41:32 [55 ms] */
ALTER Table transaksi MODIFY COLUMN amount DECIMAL(5.2);
/* 2025-01-28 15:41:34 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:41:47 [7 ms] */
DELETE FROM transaksi;
/* 2025-01-28 15:41:51 [4 ms] */
INSERT into
    transaksi (amount, pelanggan_id)
VALUES (5.99, 2),
    (3.23, 3),
    (5.77, 1),
    (2.12, 4);
/* 2025-01-28 15:41:53 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:42:24 [15 ms] */
DROP Table transaksi;
/* 2025-01-28 15:42:40 [52 ms] */
CREATE Table transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5.2),
    pelanggan_id INT,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id)
    /*menulis dengan ketentuan seperti disamping, menulis variabel untuk di tabel transaksi kemudian memanggil kolom di table yang dituju*/
);
/* 2025-01-28 15:42:43 [15 ms] */
INSERT into
    transaksi (amount, pelanggan_id)
VALUES (5.99, 2),
    (3.23, 3),
    (5.77, 1),
    (2.12, 4);
/* 2025-01-28 15:42:46 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:42:58 [25 ms] */
DROP Table transaksi;
/* 2025-01-28 15:43:10 [48 ms] */
CREATE Table transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5.2),
    pelanggan_id INT,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id)
    /*menulis dengan ketentuan seperti disamping, menulis variabel untuk di tabel transaksi kemudian memanggil kolom di table yang dituju*/
);
/* 2025-01-28 15:43:24 [20 ms] */
ALTER Table transaksi AUTO_INCREMENT = 100;
/* 2025-01-28 15:43:26 [12 ms] */
DROP Table transaksi;
/* 2025-01-28 15:43:33 [54 ms] */
CREATE Table transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5.2),
    pelanggan_id INT,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id)
    /*menulis dengan ketentuan seperti disamping, menulis variabel untuk di tabel transaksi kemudian memanggil kolom di table yang dituju*/
);
/* 2025-01-28 15:43:35 [20 ms] */
ALTER Table transaksi AUTO_INCREMENT = 100;
/* 2025-01-28 15:43:40 [10 ms] */
INSERT into
    transaksi (amount, pelanggan_id)
VALUES (5.99, 2),
    (3.23, 3),
    (5.77, 1),
    (2.12, 4);
/* 2025-01-28 15:43:41 [23 ms] */
DROP Table transaksi;
/* 2025-01-28 15:43:59 [36 ms] */
CREATE Table transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5.2),
    pelanggan_id INT,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id)
    /*menulis dengan ketentuan seperti disamping, menulis variabel untuk di tabel transaksi kemudian memanggil kolom di table yang dituju*/
);
/* 2025-01-28 15:44:00 [10 ms] */
ALTER Table transaksi AUTO_INCREMENT = 100;
/* 2025-01-28 15:44:00 [13 ms] */
INSERT into
    transaksi (amount, pelanggan_id)
VALUES (5.99, 2),
    (3.23, 3),
    (5.77, 1),
    (2.12, 4);
/* 2025-01-28 15:44:01 [3 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:44:46 [14 ms] */
DELETE FROM `transaksi` WHERE `transaksi_id` = 100;
/* 2025-01-28 15:44:46 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:44:56 [63 ms] */
ALTER Table transaksi
ADD constraint pelanggan_id FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id);
/* 2025-01-28 15:45:01 [3 ms] */
DELETE FROM `transaksi` WHERE `transaksi_id` = 102;
/* 2025-01-28 15:45:01 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:45:56 [4 ms] */
DELETE FROM pelanggan WHERE pelanggan_id = 2;
/* 2025-01-28 15:46:06 [2 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-28 15:46:32 [30 ms] */
drop Table pelanggan, transaksi;
/* 2025-01-28 15:46:42 [14 ms] */
create Table pelanggan (
    pelanggan_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
/* 2025-01-28 15:46:47 [3 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-28 15:48:22 [5 ms] */
INSERT INTO
    pelanggan (first_name, last_name)
VALUES ("budy", "pertiwi"),
    ("ihsan", "husen"),
    ("badi", "gunawan"),
    ("budi", "guna");
/* 2025-01-28 15:48:24 [2 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-28 15:48:49 [54 ms] */
CREATE Table transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5.2),
    pelanggan_id INT,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id)
    /*menulis dengan ketentuan seperti disamping, menulis variabel untuk di tabel transaksi kemudian memanggil kolom di table yang dituju*/
);
/* 2025-01-28 15:48:58 [3 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:49:13 [20 ms] */
ALTER Table transaksi AUTO_INCREMENT = 100;
/* 2025-01-28 15:49:27 [14 ms] */
INSERT into
    transaksi (amount, pelanggan_id)
VALUES (5.50, 2),
    (3.23, 3),
    (5.67, 1),
    (2.12, 4);
/* 2025-01-28 15:49:29 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:49:53 [2 ms] */
SELECT * FROM `pelanggan` WHERE pelanggan_id = 2;
/* 2025-01-28 15:49:58 [1 ms] */
SELECT * FROM `pelanggan` WHERE pelanggan_id = 1;
/* 2025-01-28 15:50:01 [1 ms] */
SELECT * FROM `pelanggan` WHERE pelanggan_id = 3;
/* 2025-01-28 15:50:40 [12 ms] */
DROP Table transaksi;
/* 2025-01-28 15:50:44 [36 ms] */
CREATE Table transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2),
    pelanggan_id INT,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan (pelanggan_id)
    /*menulis dengan ketentuan seperti disamping, menulis variabel untuk di tabel transaksi kemudian memanggil kolom di table yang dituju*/
);
/* 2025-01-28 15:50:46 [3 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:50:50 [20 ms] */
ALTER Table transaksi AUTO_INCREMENT = 100;
/* 2025-01-28 15:50:51 [4 ms] */
INSERT into
    transaksi (amount, pelanggan_id)
VALUES (5.50, 2),
    (3.23, 3),
    (5.67, 1),
    (2.12, 4);
/* 2025-01-28 15:50:54 [3 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-28 15:51:03 [2 ms] */
SELECT * FROM `pelanggan` WHERE pelanggan_id = 2;
/* 2025-01-28 20:55:42 [23 ms] */
SELECT *
FROM transaksi
    inner join pelanggan ON transaksi.pelanggan_id = pelanggan.pelanggan_id
LIMIT 100;
/* 2025-01-28 20:56:54 [3 ms] */
SELECT
    transaksi_id,
    amount,
    first_name,
    last_name /*jika ingin lebih spesifik tambahkan nama kolom*/
FROM transaksi
    inner join pelanggan ON transaksi.pelanggan_id = pelanggan.pelanggan_id
LIMIT 100;
/* 2025-01-28 20:57:10 [2 ms] */
SELECT * /*jika ingin lebih spesifik tambahkan nama kolom*/
FROM transaksi
    inner join pelanggan ON transaksi.pelanggan_id = pelanggan.pelanggan_id
LIMIT 100;
/* 2025-01-28 20:58:34 [22 ms] */
INSERT INTO
    pelanggan (first_name, last_name)
VALUES ("nakula", "sadewa");
/* 2025-01-28 20:59:08 [17 ms] */
INSERT INTO transaksi (amount, pelanggan_id) VALUES (4.22, NULL);
/* 2025-01-28 20:59:15 [2 ms] */
SELECT * /*jika ingin lebih spesifik tambahkan nama kolom*/
FROM transaksi
    inner join pelanggan ON transaksi.pelanggan_id = pelanggan.pelanggan_id
LIMIT 100;
/* 2025-01-28 20:59:37 [3 ms] */
SELECT * /*jika ingin lebih spesifik tambahkan nama kolom*/
FROM transaksi
    LEFT join pelanggan ON transaksi.pelanggan_id = pelanggan.pelanggan_id
LIMIT 100;
/* 2025-01-28 20:59:43 [3 ms] */
SELECT * /*jika ingin lebih spesifik tambahkan nama kolom*/
FROM transaksi
    RIGHT join pelanggan ON transaksi.pelanggan_id = pelanggan.pelanggan_id
LIMIT 100;
/* 2025-01-28 20:59:48 [2 ms] */
SELECT * /*jika ingin lebih spesifik tambahkan nama kolom*/
FROM transaksi
    LEFT join pelanggan ON transaksi.pelanggan_id = pelanggan.pelanggan_id
LIMIT 100;
/* 2025-01-28 20:59:50 [3 ms] */
SELECT * /*jika ingin lebih spesifik tambahkan nama kolom*/
FROM transaksi
    RIGHT join pelanggan ON transaksi.pelanggan_id = pelanggan.pelanggan_id
LIMIT 100;
/* 2025-01-28 21:00:04 [2 ms] */
SELECT * /*jika ingin lebih spesifik tambahkan nama kolom*/
FROM transaksi
    LEFT join pelanggan ON transaksi.pelanggan_id = pelanggan.pelanggan_id
LIMIT 100;
/* 2025-01-28 21:12:00 [44 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-28 21:12:25 [15 ms] */
SELECT CONCAT(first_name, " ", last_name) FROM employees LIMIT 100;
/* 2025-01-28 21:12:37 [3 ms] */
SELECT CONCAT(first_name, " ", last_name) AS full_name
FROM employees
LIMIT 100;
/* 2025-01-28 21:13:12 [3 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-28 21:13:33 [7 ms] */
SELECT COUNT(hourly_pay) AS hourly_pay FROM employees LIMIT 100;
/* 2025-01-28 21:13:41 [14 ms] */
SELECT MAX(hourly_pay) AS hourly_pay FROM employees LIMIT 100;
/* 2025-01-28 21:13:46 [3 ms] */
SELECT Min(hourly_pay) AS hourly_pay FROM employees LIMIT 100;
/* 2025-01-28 21:13:54 [3 ms] */
SELECT AVG(hourly_pay) AS hourly_pay FROM employees LIMIT 100;
/* 2025-01-28 21:14:02 [2 ms] */
SELECT SUM(hourly_pay) AS hourly_pay FROM employees LIMIT 100;
/* 2025-01-28 21:21:45 [5 ms] */
SELECT * /*jika ingin lebih spesifik tambahkan nama kolom*/
FROM transaksi
    INNER join pelanggan /*untuk inner bisa diganti sesuai kebutuhan*/ ON transaksi.pelanggan_id = pelanggan.pelanggan_id
LIMIT 100;
/* 2025-01-29 21:01:41 [45 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-29 21:03:27 [47 ms] */
ALTER TABLE employees ADD COLUMN job VARCHAR(50) after last_name;
/* 2025-01-29 21:03:29 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-29 21:04:53 [9 ms] */
UPDATE employees SET first_name = "Eugene" WHERE employee_id = 1;
/* 2025-01-29 21:04:53 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-29 21:05:11 [15 ms] */
UPDATE employees SET last_name = "krabs" WHERE employee_id = 1;
/* 2025-01-29 21:05:14 [1 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-29 21:05:27 [14 ms] */
UPDATE employees SET job = "manager" WHERE employee_id = 1;
/* 2025-01-29 21:05:50 [4 ms] */
UPDATE employees SET job = "cashier" WHERE employee_id = 2;
/* 2025-01-29 21:05:57 [14 ms] */
UPDATE employees SET job = "cook" WHERE employee_id = 3;
/* 2025-01-29 21:06:00 [5 ms] */
UPDATE employees SET job = "cook" WHERE employee_id = 4;
/* 2025-01-29 21:06:14 [14 ms] */
UPDATE employees SET job = "ass. manager" WHERE employee_id = 5;
/* 2025-01-29 21:06:26 [15 ms] */
UPDATE employees SET job = "janitor" WHERE employee_id = 6;
/* 2025-01-29 21:06:28 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-29 21:08:00 [4 ms] */
SELECT * FROM employees WHERE hire_date < "2023-01-05" LIMIT 100;
/* 2025-01-29 21:08:17 [3 ms] */
SELECT * FROM employees WHERE hire_date > "2023-01-05" LIMIT 100;
/* 2025-01-29 21:08:24 [2 ms] */
SELECT * FROM employees WHERE hire_date < "2023-01-05" LIMIT 100;
/* 2025-01-29 21:08:39 [3 ms] */
SELECT *
FROM employees
WHERE
    hire_date < "2023-01-05"
    AND job = "cook"
LIMIT 100;
/* 2025-01-29 21:09:04 [3 ms] */
SELECT *
FROM employees
WHERE
    hire_date < "2023-01-05"
    OR job = "cook"
LIMIT 100;
/* 2025-01-29 21:09:13 [2 ms] */
SELECT *
FROM employees
WHERE
    hire_date > "2023-01-05"
    OR job = "cook"
LIMIT 100;
/* 2025-01-29 21:10:17 [3 ms] */
SELECT *
FROM employees
WHERE
    NOT hire_date > "2023-01-05"
    OR job = "cook"
LIMIT 100;
/* 2025-01-29 21:10:30 [2 ms] */
SELECT * FROM employees WHERE NOT job = "cook" LIMIT 100;
/* 2025-01-29 21:11:22 [3 ms] */
SELECT *
FROM employees
WHERE
    NOT job = "cook"
    AND NOT hire_date < "2023-01-03"
LIMIT 100;
/* 2025-01-29 21:11:41 [2 ms] */
SELECT *
FROM employees
WHERE
    NOT job = "cook"
    AND NOT hire_date <= "2023-01-03"
LIMIT 100;
/* 2025-01-29 21:11:49 [2 ms] */
SELECT *
FROM employees
WHERE
    NOT job = "cook"
    AND NOT hire_date >= "2023-01-03"
LIMIT 100;
/* 2025-01-29 21:12:03 [2 ms] */
SELECT *
FROM employees
WHERE
    NOT job = "cook"
    AND NOT hire_date < "2023-01-03"
LIMIT 100;
/* 2025-01-29 21:13:38 [3 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-29 21:13:56 [3 ms] */
SELECT *
FROM employees
WHERE
    hourly_pay BETWEEN 12.00 AND 20.00
LIMIT 100;
/* 2025-01-29 21:16:33 [3 ms] */
SELECT *
FROM employees
WHERE
    job IN ("cook", "cashier") /*IN*/
LIMIT 100;
/* 2025-01-30 13:47:18 [121 ms] */
SELECT *
FROM employees
WHERE
    job IN ("cook", "cashier") /*IN*/
LIMIT 100;
/* 2025-01-30 13:49:37 [20 ms] */
SELECT *
FROM employees
WHERE
    first_name like "s%" /*mencari karakter dengan awalan huruf s*/
LIMIT 100;
/* 2025-01-30 13:50:15 [6 ms] */
SELECT *
FROM employees
WHERE
    first_name like "_a" /*mencari karakter dengan awalan huruf s*/
LIMIT 100;
/* 2025-01-30 13:50:27 [4 ms] */
SELECT *
FROM employees
WHERE
    first_name like "_a%" /*mencari karakter dengan awalan huruf s*/
LIMIT 100;
/* 2025-01-30 13:50:47 [6 ms] */
SELECT *
FROM employees
WHERE
    first_name like "_cook" /*mencari karakter dengan awalan huruf s*/
LIMIT 100;
/* 2025-01-30 13:50:56 [3 ms] */
SELECT *
FROM employees
WHERE
    job like "_cook" /*mencari karakter dengan awalan huruf s*/
LIMIT 100;
/* 2025-01-30 13:51:06 [4 ms] */
SELECT *
FROM employees
WHERE
    job like "_ook" /*mencari karakter dengan awalan huruf s*/
LIMIT 100;
/* 2025-01-30 13:52:08 [5 ms] */
SELECT *
FROM employees
WHERE
    first_name LIKE "_a%" /*mencari dari huruf kedua a*/
LIMIT 100;
/* 2025-01-30 13:52:27 [5 ms] */
SELECT *
FROM employees
WHERE
    job like "__ok" /*mencari kata yang hampir mendekati*/
LIMIT 100;
/* 2025-01-30 13:52:50 [5 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-30 13:56:45 [7 ms] */
SELECT * FROM employees ORDER BY first_name LIMIT 100;
/* 2025-01-30 17:11:12 [60 ms] */
SELECT * FROM pelanggan LIMIT 2, 2;
/* 2025-01-30 17:11:20 [3 ms] */
SELECT * FROM pelanggan LIMIT 1, 2;
/* 2025-01-30 17:11:24 [39 ms] */
SELECT * FROM pelanggan LIMIT 1, 2;
/* 2025-01-30 17:11:33 [2 ms] */
SELECT * FROM pelanggan LIMIT 1, 1;
/* 2025-01-30 17:11:37 [3 ms] */
SELECT * FROM pelanggan LIMIT 1;
/* 2025-01-30 17:11:41 [3 ms] */
SELECT * FROM pelanggan LIMIT 5;
/* 2025-01-30 17:11:51 [3 ms] */
SELECT * FROM pelanggan LIMIT 1, 5;
/* 2025-01-30 17:12:07 [2 ms] */
SELECT * FROM pelanggan LIMIT 0, 5;
/* 2025-01-30 17:12:21 [2 ms] */
SELECT * FROM pelanggan LIMIT 4, 2;
/* 2025-01-30 17:12:38 [3 ms] */
SELECT * FROM pelanggan LIMIT 3, 2;
/* 2025-01-30 17:12:47 [3 ms] */
SELECT * FROM pelanggan LIMIT 3;
/* 2025-01-30 17:15:55 [3 ms] */
SELECT * FROM pelanggan LIMIT 2, 2;
/* 2025-01-30 17:16:06 [2 ms] */
SELECT * FROM pelanggan LIMIT 1, 2;
/* 2025-01-30 17:16:41 [3 ms] */
SELECT * FROM pelanggan LIMIT 3;
/* 2025-01-30 17:17:17 [2 ms] */
SELECT * FROM pelanggan ORDER BY first_name LIMIT 3;
/* 2025-01-30 20:56:30 [154 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-30 20:56:39 [14 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-30 20:57:05 [4 ms] */
SELECT first_name, last_name
FROM employees
UNION
SELECT first_name, last_name
FROM pelanggan
LIMIT 100;
/* 2025-01-30 21:06:51 [12 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-30 21:07:40 [76 ms] */
ALTER TABLE employees ADD supervisor_id INT;
/* 2025-01-30 21:07:42 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-30 21:08:42 [16 ms] */
UPDATE employees SET supervisor_id = 5 WHERE employee_id = 2;
/* 2025-01-30 21:08:45 [14 ms] */
UPDATE employees SET supervisor_id = 5 WHERE employee_id = 3;
/* 2025-01-30 21:08:53 [4 ms] */
UPDATE employees SET supervisor_id = 5 WHERE employee_id = 4;
/* 2025-01-30 21:08:56 [14 ms] */
UPDATE employees SET supervisor_id = 5 WHERE employee_id = 6;
/* 2025-01-30 21:08:58 [1 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-30 21:09:07 [14 ms] */
UPDATE employees SET supervisor_id = 1 WHERE employee_id = 5;
/* 2025-01-30 21:09:09 [1 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-30 21:13:27 [15 ms] */
SELECT *
FROM employees AS a
    INNER JOIN employees AS b ON a.supervisor_id = b.employee_id
LIMIT 100;
/* 2025-01-30 21:15:02 [14 ms] */
SELECT a.first_name, a.last_name, CONCAT(b.first_name, b.last_name) as full_name
FROM employees AS a
    INNER JOIN employees AS b ON a.supervisor_id = b.employee_id
LIMIT 100;
/* 2025-01-30 21:15:14 [4 ms] */
SELECT a.first_name, a.last_name, CONCAT(
        b.first_name, " ", b.last_name
    ) as full_name
FROM employees AS a
    INNER JOIN employees AS b ON a.supervisor_id = b.employee_id
LIMIT 100;
/* 2025-01-30 21:15:41 [3 ms] */
SELECT *
FROM employees AS a
    INNER JOIN employees AS b ON a.supervisor_id = b.employee_id
LIMIT 100;
/* 2025-01-30 21:15:52 [2 ms] */
SELECT a.first_name, a.last_name, CONCAT(
        b.first_name, " ", b.last_name
    ) as full_name
FROM employees AS a
    INNER JOIN employees AS b ON a.supervisor_id = b.employee_id
LIMIT 100;
/* 2025-01-30 21:16:08 [2 ms] */
SELECT a.first_name, a.last_name, CONCAT(
        b.first_name, " ", b.last_name
    ) as supervisor_name
FROM employees AS a
    INNER JOIN employees AS b ON a.supervisor_id = b.employee_id
LIMIT 100;
/* 2025-01-30 21:16:48 [3 ms] */
SELECT a.first_name, a.last_name, CONCAT(
        b.first_name, " ", b.last_name
    ) as "report to"
FROM employees AS a
    INNER JOIN employees AS b ON a.supervisor_id = b.employee_id
LIMIT 100;
/* 2025-01-31 14:36:55 [25 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-31 14:37:48 [20 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-31 14:38:24 [9 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-01-31 14:39:21 [35 ms] */
CREATE View full_name AS
SELECT first_name, last_name
FROM employees;
/* 2025-01-31 14:39:59 [4 ms] */
SELECT * FROM full_name LIMIT 100;
/* 2025-01-31 14:42:31 [32 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-31 14:42:59 [53 ms] */
ALTER TABLE pelanggan ADD COLUMN email VARCHAR(50);
/* 2025-01-31 14:43:05 [2 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-31 14:44:22 [11 ms] */
UPDATE pelanggan
SET
    email = "bpertiwi@gmail.com"
WHERE
    pelanggan_id = 1;
/* 2025-01-31 14:44:24 [1 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-31 14:44:42 [7 ms] */
UPDATE pelanggan
SET
    email = "ihusen@gmail.com"
WHERE
    pelanggan_id = 2;
/* 2025-01-31 14:44:52 [4 ms] */
UPDATE pelanggan
SET
    email = "bgunawan@gmail.com"
WHERE
    pelanggan_id = 3;
/* 2025-01-31 14:44:59 [4 ms] */
UPDATE pelanggan
SET
    email = "bguna@gmail.com"
WHERE
    pelanggan_id = 3;
/* 2025-01-31 14:45:06 [14 ms] */
UPDATE pelanggan
SET
    email = "bguna@gmail.com"
WHERE
    pelanggan_id = 4;
/* 2025-01-31 14:45:14 [14 ms] */
UPDATE pelanggan
SET
    email = "bgunawan@gmail.com"
WHERE
    pelanggan_id = 3;
/* 2025-01-31 14:45:27 [4 ms] */
UPDATE pelanggan
SET
    email = "nsadewa@gmail.com"
WHERE
    pelanggan_id = 5;
/* 2025-01-31 14:45:29 [2 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-31 14:46:33 [16 ms] */
CREATE VIEW email_pelanggan AS SELECT email FROM pelanggan;
/* 2025-01-31 14:46:51 [6 ms] */
DROP VIEW full_name;
/* 2025-01-31 14:47:01 [4 ms] */
SELECT * FROM email_pelanggan LIMIT 100;
/* 2025-01-31 14:47:42 [6 ms] */
DROP VIEW email_pelanggan;
/* 2025-01-31 14:47:43 [5 ms] */
CREATE VIEW email_pelanggan AS
SELECT CONCAT(first_name, last_name), email
FROM pelanggan;
/* 2025-01-31 14:47:56 [4 ms] */
SELECT * FROM email_pelanggan LIMIT 100;
/* 2025-01-31 14:48:22 [5 ms] */
DROP VIEW email_pelanggan;
/* 2025-01-31 14:48:24 [16 ms] */
CREATE VIEW email_pelanggan AS
SELECT CONCAT(first_name, last_name) AS full_name, email
FROM pelanggan;
/* 2025-01-31 14:48:27 [3 ms] */
SELECT * FROM email_pelanggan LIMIT 100;
/* 2025-01-31 14:50:31 [2 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-31 14:51:27 [4 ms] */
INSERT INTO
    pelanggan
VALUES (
        6,
        "Pearl",
        "Krabs",
        "Pkrabs@gmail.com"
    );
/* 2025-01-31 14:51:30 [3 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-31 14:51:36 [3 ms] */
SELECT * FROM email_pelanggan LIMIT 100;
/* 2025-01-31 17:11:57 [171 ms] */
SHOW INDEXES FROM pelanggan;
/* 2025-01-31 18:58:41 [13 ms] */
SELECT * FROM pelanggan LIMIT 100;
/* 2025-01-31 18:58:50 [43 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-31 18:59:37 [5 ms] */
SELECT pelanggan_id
FROM transaksi
WHERE
    pelanggan_id IS NOT NULL
LIMIT 100;
/* 2025-01-31 18:59:45 [14 ms] */
SELECT DISTINCT
    pelanggan_id
FROM transaksi
WHERE
    pelanggan_id IS NOT NULL
LIMIT 100;
/* 2025-01-31 18:59:47 [1 ms] */
SELECT DISTINCT
    pelanggan_id
FROM transaksi
WHERE
    pelanggan_id IS NOT NULL
LIMIT 100;
/* 2025-01-31 19:00:04 [3 ms] */
SELECT DISTINCT
    pelanggan_id
FROM transaksi
WHERE
    pelanggan_id IS NOT NULL
LIMIT 100;
/* 2025-01-31 19:01:05 [4 ms] */
SELECT first_name, last_name
FROM pelanggan
WHERE
    pelanggan_id in (
        SELECT DISTINCT
            pelanggan_id
        FROM transaksi
        WHERE
            pelanggan_id IS NOT NULL
    )
LIMIT 100;
/* 2025-01-31 19:01:29 [2 ms] */
SELECT first_name, last_name
FROM pelanggan
WHERE
    pelanggan_id in (
        SELECT pelanggan_id
        FROM transaksi
        WHERE
            pelanggan_id IS NOT NULL
    )
LIMIT 100;
/* 2025-01-31 19:01:30 [1 ms] */
SELECT first_name, last_name
FROM pelanggan
WHERE
    pelanggan_id in (
        SELECT pelanggan_id
        FROM transaksi
        WHERE
            pelanggan_id IS NOT NULL
    )
LIMIT 100;
/* 2025-01-31 19:05:02 [4 ms] */
SELECT first_name, last_name
FROM pelanggan
WHERE
    pelanggan_id NOT in
    /*maksud pernyataan ini menampilkan nomer id pelanggan dari tabel transaksi yang tidak bernilai NULL
    kemudian penyataan tersebut dihubungkan dengan pertanyaan atas yaitu menampilkan first_name dan last_name
    dari pernyataan dibawah*/
    (
        SELECT pelanggan_id
        FROM transaksi
        WHERE
            pelanggan_id IS NOT NULL
    )
LIMIT 100;
/* 2025-01-31 19:05:09 [2 ms] */
SELECT first_name, last_name
FROM pelanggan
WHERE
    pelanggan_id in
    /*maksud pernyataan ini menampilkan nomer id pelanggan dari tabel transaksi yang tidak bernilai NULL
    kemudian penyataan tersebut dihubungkan dengan pertanyaan atas yaitu menampilkan first_name dan last_name
    dari pernyataan dibawah*/
    (
        SELECT pelanggan_id
        FROM transaksi
        WHERE
            pelanggan_id IS NOT NULL
    )
LIMIT 100;
/* 2025-01-31 21:03:39 [93 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-31 21:04:18 [87 ms] */
ALTER Table transaksi ADD COLUMN order_date DATE;
/* 2025-01-31 21:04:20 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-31 21:06:07 [9 ms] */
UPDATE transaksi
SET
    order_date = "2023-01-01"
WHERE
    transaksi_id = 100;
/* 2025-01-31 21:06:13 [4 ms] */
UPDATE transaksi
SET
    order_date = "2023-01-01"
WHERE
    transaksi_id = 101;
/* 2025-01-31 21:06:15 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-31 21:06:42 [14 ms] */
UPDATE transaksi
SET
    order_date = "2023-01-02"
WHERE
    transaksi_id = 102;
/* 2025-01-31 21:06:49 [15 ms] */
UPDATE transaksi
SET
    order_date = "2023-01-03"
WHERE
    transaksi_id = 103;
/* 2025-01-31 21:06:53 [14 ms] */
UPDATE transaksi
SET
    order_date = "2023-01-03"
WHERE
    transaksi_id = 104;
/* 2025-01-31 21:06:54 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-31 21:08:31 [15 ms] */
INSERT INTO
    transaksi (
        amount,
        pelanggan_id,
        order_date
    )
VALUES (2.33, 3, "2023-01-02");
/* 2025-01-31 21:08:33 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-31 21:10:12 [15 ms] */
SELECT SUM(amount), order_date
FROM transaksi
GROUP BY
    order_date
LIMIT 100;
/* 2025-01-31 21:10:48 [3 ms] */
SELECT SUM(amount), order_date AS sum_amount
FROM transaksi
GROUP BY
    order_date
LIMIT 100;
/* 2025-01-31 21:11:02 [3 ms] */
SELECT SUM(amount), order_date
FROM transaksi AS sum_amount
GROUP BY
    order_date
LIMIT 100;
/* 2025-01-31 21:11:31 [3 ms] */
SELECT SUM(amount) as sum_amount, order_date
FROM transaksi
GROUP BY
    order_date
LIMIT 100;
/* 2025-01-31 21:15:30 [3 ms] */
SELECT SUM(amount) as sum_amount, order_date
FROM transaksi
GROUP BY
    order_date
HAVING
    COUNT(amount) > 1
LIMIT 100;
/* 2025-01-31 21:15:48 [3 ms] */
SELECT SUM(amount) as sum_amount, order_date
FROM transaksi
GROUP BY
    order_date
HAVING
    COUNT(amount) > 7
LIMIT 100;
/* 2025-01-31 21:15:52 [2 ms] */
SELECT SUM(amount) as sum_amount, order_date
FROM transaksi
GROUP BY
    order_date
HAVING
    COUNT(amount) > 2
LIMIT 100;
/* 2025-01-31 21:15:59 [2 ms] */
SELECT SUM(amount) as sum_amount, order_date
FROM transaksi
GROUP BY
    order_date
HAVING
    COUNT(amount) > 1
LIMIT 100;
/* 2025-01-31 21:16:12 [2 ms] */
SELECT SUM(amount) as sum_amount, order_date
FROM transaksi
GROUP BY
    order_date
HAVING
    SUM(amount) > 7
LIMIT 100;
/* 2025-01-31 21:19:08 [3 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-01-31 21:19:42 [3 ms] */
SELECT SUM(amount) as sum_amount, order_date
FROM transaksi
GROUP BY
    order_date
HAVING
    SUM(amount) > 7
LIMIT 100;
/* 2025-02-01 08:52:45 [47 ms] */
SELECT SUM(amount), order_date
FROM transaksi
GROUP BY
    order_date
WITH
    ROLLUP
LIMIT 100;
/* 2025-02-01 09:12:54 [40 ms] */
CREATE PROCEDURE find_customer(IN id INT)  
BEGIN  
 SELECT *
 FROM customers
 WHERE customer_id = id;
END;
/* 2025-02-01 09:13:50 [3 ms] */
use mydb;
/* 2025-02-01 09:15:54 [23 ms] */
DROP Procedure find_customer;
/* 2025-02-01 09:15:59 [16 ms] */
CREATE PROCEDURE find_customer(IN id INT)  
BEGIN  
 SELECT *
 FROM customers
 WHERE customer_id = id;
END;
/* 2025-02-01 09:19:22 [16 ms] */
CREATE PROCEDURE find_customer_name(IN f_name VARCHAR(50),
                               		IN l_name VARCHAR(50))  
BEGIN  
 SELECT *
 FROM customers
 WHERE first_name = f_name AND last_name = l_name;
END;
/* 2025-02-01 09:20:53 [17 ms] */
DROP Procedure find_customer_name;
/* 2025-02-01 09:21:24 [15 ms] */
DROP Procedure find_customer;
/* 2025-02-01 09:21:26 [5 ms] */
CREATE PROCEDURE find_customer(IN id INT)  
BEGIN  
 SELECT *
 FROM pelanggan
 WHERE pelanggan_id = id;
END;
/* 2025-02-01 09:21:35 [28 ms] */
CALL find_customer (2);
/* 2025-02-01 10:06:22 [96 ms] */
ALTER Table employees ADD COLUMN salary DECIMAL(5, 2);
/* 2025-02-01 10:06:32 [14 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-02-01 10:07:04 [23 ms] */
ALTER TABLE employees DROP COLUMN salary;
/* 2025-02-01 10:07:06 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-02-01 10:08:15 [24 ms] */
ALTER TABLE employees
ADD COLUMN salary DECIMAL(5, 2) after hourly_pay;
/* 2025-02-01 10:08:18 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-02-01 10:12:21 [25 ms] */
ALTER Table employees DROP COLUMN salary;
/* 2025-02-01 10:12:23 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-02-01 10:12:51 [25 ms] */
ALTER Table employees
ADD COLUMN salary DECIMAL(7, 2) after hourly_pay;
/* 2025-02-01 10:12:53 [13 ms] */
UPDATE employees SET salary = hourly_pay * 2080;
/* 2025-02-01 10:13:01 [2 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-02-01 10:13:44 [9 ms] */
CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees 
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);
/* 2025-02-01 10:16:32 [71 ms] */
ALTER TABLE employees MODIFY hourly_pay DECIMAL(7, 2);
/* 2025-02-01 10:16:34 [1 ms] */
SELECT * FROM employees LIMIT 100;
/* 2025-02-08 13:21:38 [139 ms] */
DROP DATABASE world;
/* 2025-02-08 13:22:00 [41 ms] */
CREATE DATABASE database_perpustakaan;
/* 2025-02-08 13:22:39 [3 ms] */
use database_perpustakaan;
/* 2025-02-08 17:12:47 [73 ms] */
CREATE TABLE anggota_perpus (
    nomer_anggota INT PRIMARY KEY AUTO_INCREMENT,
    nama_depan VARCHAR(250),
    nama_belakang VARCHAR(250),
    alamat VARCHAR(250),
    nomer_telepon INT
);
/* 2025-02-08 17:14:25 [30 ms] */
CREATE TABLE buku_perpus (
    nomer_buku INT PRIMARY KEY AUTO_INCREMENT,
    nama_buku VARCHAR(250),
    letak_buku VARCHAR(250),
    tahun_terbit DATE,
    status VARCHAR(250) DEFAULT 'tersedia'
);
/* 2025-02-08 17:20:12 [46 ms] */
ALTER Table buku_perpus RENAME COLUMN tahun_terbit to penulis;
/* 2025-02-08 17:20:49 [71 ms] */
ALTER Table buku_perpus MODIFY COLUMN penulis VARCHAR(250);
/* 2025-02-08 17:22:59 [15 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 13:21:00 [186 ms] */
ALTER Table buku_perpus AUTO_INCREMENT = 2501;
/* 2025-02-09 13:21:34 [18 ms] */
INSERT INTO
    buku_perpus (
        nama_buku,
        letak_buku,
        penulis
    )
VALUES ('Bumi', 'A1 01', 'Tere Liye');
/* 2025-02-09 13:21:37 [10 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 13:22:19 [11 ms] */
INSERT INTO
    buku_perpus (
        nama_buku,
        letak_buku,
        penulis
    )
VALUES ('Bulan', 'A1 01', 'Tere Liye'),
    (
        'Matahari',
        'A1 01',
        'Tere Liye'
    ),
    (
        'Bintang',
        'A1 01',
        'Tere Liye'
    ),
    (
        'Ceros dan Batozar',
        'A1 01',
        'Tere Liye'
    ),
    ('Komet', 'A1 01', 'Tere Liye'),
    (
        'Komet Minor',
        'A1 01',
        'Tere Liye'
    ),
    (
        'Selena',
        'A1 01',
        'Tere Liye'
    ),
    (
        'Nebula',
        'A1 01',
        'Tere Liye'
    ),
    ('Lumpu', 'A1 01', 'Tere Liye'),
    (
        'Siputih',
        'A1 01',
        'Tere Liye'
    ),
    (
        'Bibigil',
        'A1 01',
        'Tere Liye'
    ),
    (
        'Sagaras',
        'A1 01',
        'Tere Liye'
    ),
    (
        'Matahari Minor',
        'A1 01',
        'Tere Liye'
    ),
    (
        'Aldebaran',
        'A1 01',
        'Tere Liye'
    );
/* 2025-02-09 13:22:22 [3 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 13:27:22 [33 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:29:18 [116 ms] */
ALTER Table anggota_perpus MODIFY COLUMN nomer_telepon BIGINT;
/* 2025-02-09 13:29:22 [7 ms] */
INSERT INTO
    anggota_perpus (
        nama_depan,
        nama_belakang,
        alamat,
        nomer_telepon
    )
VALUES (
        'Varelera',
        'Rahmatyas',
        "Surabaya",
        6285816081830
    );
/* 2025-02-09 13:29:35 [8 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:30:22 [18 ms] */
DELETE FROM anggota_perpus WHERE nomer_anggota = 1;
/* 2025-02-09 13:30:25 [6 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:30:49 [30 ms] */
ALTER Table anggota_perpus AUTO_INCREMENT = 001;
/* 2025-02-09 13:30:52 [19 ms] */
INSERT INTO
    anggota_perpus (
        nama_depan,
        nama_belakang,
        alamat,
        nomer_telepon
    )
VALUES (
        'Varelera',
        'Rahmatyas',
        "Surabaya",
        085816081830
    );
/* 2025-02-09 13:30:54 [5 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:31:00 [17 ms] */
ALTER Table anggota_perpus AUTO_INCREMENT = 001;
/* 2025-02-09 13:31:45 [19 ms] */
DELETE FROM anggota_perpus WHERE nomer_anggota = 1;
/* 2025-02-09 13:33:26 [6 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:34:53 [8 ms] */
INSERT INTO
    anggota_perpus (
        nama_depan,
        nama_belakang,
        alamat,
        nomer_telepon
    )
VALUES (
        'Varelera',
        'Rahmatyas',
        "Surabaya",
        085816081830
    );
/* 2025-02-09 13:34:55 [5 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:35:07 [7 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 13:35:39 [15 ms] */
INSERT INTO
    anggota_perpus (
        nama_depan,
        nama_belakang,
        alamat,
        nomer_telepon
    )
VALUES (
        'Varelera',
        'Rahmatyas',
        "Surabaya",
        085816081830
    );
/* 2025-02-09 13:35:42 [4 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:36:27 [6 ms] */
DELETE FROM `anggota_perpus` WHERE `nomer_anggota` = 2;
/* 2025-02-09 13:36:27 [3 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:36:31 [3 ms] */
DELETE FROM `anggota_perpus` WHERE `nomer_anggota` = 3;
/* 2025-02-09 13:36:31 [2 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:37:49 [59 ms] */
ALTER Table anggota_perpus
MODIFY COLUMN nomer_anggota BIGINT AUTO_INCREMENT;
/* 2025-02-09 13:37:53 [25 ms] */
ALTER Table anggota_perpus AUTO_INCREMENT = 24091397001;
/* 2025-02-09 13:37:55 [7 ms] */
INSERT INTO
    anggota_perpus (
        nama_depan,
        nama_belakang,
        alamat,
        nomer_telepon
    )
VALUES (
        'Varelera',
        'Rahmatyas',
        "Surabaya",
        085816081830
    );
/* 2025-02-09 13:37:57 [7 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:38:45 [12 ms] */
DELETE FROM `anggota_perpus` WHERE `nomer_anggota` = 24091397001;
/* 2025-02-09 13:38:45 [2 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:39:18 [69 ms] */
ALTER Table anggota_perpus DROP COLUMN nama_belakang;
/* 2025-02-09 13:39:21 [2 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:40:17 [35 ms] */
ALTER Table anggota_perpus RENAME COLUMN nama_depan to nama_lengkap;
/* 2025-02-09 13:40:20 [2 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:40:46 [31 ms] */
DROP Table anggota_perpus;
/* 2025-02-09 13:40:54 [32 ms] */
CREATE TABLE anggota_perpus (
    nomer_anggota BIGINT PRIMARY KEY AUTO_INCREMENT,
    nama_depan VARCHAR(250),
    nama_belakang VARCHAR(250),
    alamat VARCHAR(250),
    nomer_telepon BIGINT
);
/* 2025-02-09 13:40:57 [14 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:41:01 [15 ms] */
DROP Table anggota_perpus;
/* 2025-02-09 13:41:11 [38 ms] */
CREATE TABLE anggota_perpus (
    nomer_anggota BIGINT PRIMARY KEY AUTO_INCREMENT,
    nama_lengkap VARCHAR(250),
    alamat VARCHAR(250),
    nomer_telepon BIGINT
);
/* 2025-02-09 13:41:13 [6 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 13:41:59 [15 ms] */
ALTER Table anggota_perpus AUTO_INCREMENT = 24091397001;
/* 2025-02-09 13:42:33 [15 ms] */
INSERT INTO
    anggota_perpus (
        nama_lengkap,
        alamat,
        nomer_telepon
    )
VALUES (
        'VARELERA RAHMATYAS',
        "Surabaya",
        085816081830
    );
/* 2025-02-09 13:42:35 [2 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 14:28:15 [80 ms] */
DROP Table anggota_perpus;
/* 2025-02-09 14:30:59 [43 ms] */
CREATE Table anggota_perpus (
    nomer_anggota BIGINT PRIMARY KEY AUTO_INCREMENT,
    nama_lengkap VARCHAR(50),
    alamat VARCHAR(50),
    nomer_telepon VARCHAR(50)
);
/* 2025-02-09 15:22:43 [59 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 15:33:32 [47 ms] */
ALTER Table anggota_perpus RENAME COLUMN asal to alamat;
/* 2025-02-09 15:33:33 [2 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 15:41:45 [7 ms] */
SELECT COUNT(status)
FROM buku_perpus
WHERE
    status = 'dipinjam'
LIMIT 100;
/* 2025-02-09 15:42:19 [3 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 15:46:41 [64 ms] */
ALTER Table buku_perpus ADD CONSTRAINT PRIMARY KEY (nomer_buku);
/* 2025-02-09 15:46:46 [3 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:04:40 [100 ms] */
CREATE Table peminjaman_buku (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku BIGINT,
    nama_buku TEXT,
    nomer_anggota BIGINT,
    tanggal_pinjam DATETIME DEFAULT now(),
    tanggal_kembali DATE
);
/* 2025-02-09 17:07:22 [73 ms] */
ALTER Table peminjaman_buku
ADD constraint nomer_buku FOREIGN KEY (nomer_buku) REFERENCES buku_perpus (nomer_buku);
/* 2025-02-09 17:10:47 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 17:14:33 [16 ms] */
DROP Table peminjaman_buku;
/* 2025-02-09 17:17:02 [29 ms] */
CREATE TABLE peminjaman_buku (
    nomer_pinjam INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku INT,
    nama_buku VARCHAR(255),
    nomer_anggota INT,
    tanggal_pinjam DATETIME DEFAULT now(),
    tanggal_kembali DATE
);
/* 2025-02-09 17:17:23 [32 ms] */
CREATE TABLE pengembalian_buku (
    nomer_kembali INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku INT,
    nama_buku VARCHAR(255),
    nomer_anggota INT,
    tanggal_kembali DATE,
    status VARCHAR(20) CHECK (
        status IN ('dikembalikan', 'terlambat')
    )
);
/* 2025-02-09 17:20:24 [14 ms] */
DROP TABLE peminjaman_buku;
/* 2025-02-09 17:20:31 [12 ms] */
DROP TABLE pengembalian_buku;
/* 2025-02-09 17:20:53 [19 ms] */
CREATE TABLE peminjaman_buku (
    nomer_pinjam INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku BIGINT,
    nama_buku VARCHAR(255),
    nomer_anggota BIGINT,
    tanggal_pinjam DATETIME DEFAULT now(),
    tanggal_kembali DATE
);
/* 2025-02-09 17:20:55 [73 ms] */
ALTER TABLE peminjaman_buku
ADD constraint peminjaman_buku FOREIGN KEY (nomer_buku) REFERENCES buku_perpus (nomer_buku);
/* 2025-02-09 17:21:40 [16 ms] */
DROP Table peminjaman_buku;
/* 2025-02-09 17:25:01 [87 ms] */
ALTER Table anggota_perpus
ADD constraint PRIMARY KEY (nomer_anggota);
/* 2025-02-09 17:25:21 [49 ms] */
CREATE TABLE peminjaman_buku (
    nomer_pinjam INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku BIGINT,
    nama_buku VARCHAR(255),
    nomer_anggota BIGINT,
    tanggal_pinjam DATETIME DEFAULT now(),
    tanggal_kembali DATE,
    FOREIGN KEY (nomer_buku) REFERENCES buku_perpus (nomer_buku),
    FOREIGN KEY (nomer_anggota) REFERENCES anggota_perpus (nomer_anggota)
);
/* 2025-02-09 17:25:25 [48 ms] */
CREATE TABLE pengembalian_buku (
    nomer_kembali INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku BIGINT,
    nama_buku VARCHAR(255),
    nomer_anggota BIGINT,
    tanggal_kembali DATE,
    status VARCHAR(20) CHECK (
        status IN ('dikembalikan', 'terlambat')
    ),
    FOREIGN KEY (nomer_buku) REFERENCES buku_perpus (nomer_buku),
    FOREIGN KEY (nomer_anggota) REFERENCES anggota_perpus (nomer_anggota)
);
/* 2025-02-09 17:26:55 [5 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:31:17 [43 ms] */
ALTER Table buku_perpus DROP COLUMN status;
/* 2025-02-09 17:33:21 [57 ms] */
ALTER Table buku_perpus
ADD status VARCHAR(20) CHECK (
    status IN ('Tersedia', 'dipinjam')
);
/* 2025-02-09 17:33:38 [3 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:34:36 [34 ms] */
ALTER TABLE buku_perpus DROP COLUMN status;
/* 2025-02-09 17:34:43 [2 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:35:39 [45 ms] */
ALTER Table buku_perpus
ADD status VARCHAR(20) CHECK (
    status IN ('Tersedia', 'dipinjam')
);
/* 2025-02-09 17:35:54 [2 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:38:22 [22 ms] */
INSERT into buku_perpus (status) VALUES ('tersedia');
/* 2025-02-09 17:38:25 [2 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:39:08 [6 ms] */
DELETE FROM `buku_perpus` WHERE `nomer_buku` = 1051;
/* 2025-02-09 17:39:08 [2 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:41:54 [6 ms] */
SHOW COLUMNS FROM anggota_perpus;
/* 2025-02-09 17:42:18 [12 ms] */
UPDATE buku_perpus SET status = "tersedia";
/* 2025-02-09 17:42:29 [4 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:43:21 [6 ms] */
UPDATE buku_perpus
SET
    status = "dipinjam"
WHERE
    letak_buku = 'rak-1';
/* 2025-02-09 17:43:31 [2 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:44:02 [2 ms] */
UPDATE buku_perpus
SET
    status = "dipinjam"
WHERE
    letak_buku = 'rak 10';
/* 2025-02-09 17:44:04 [2 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:44:35 [3 ms] */
UPDATE buku_perpus
SET
    status = "dipinjam"
WHERE
    letak_buku = 'rak 10';
/* 2025-02-09 17:44:58 [2 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:45:10 [4 ms] */
UPDATE buku_perpus
SET
    status = "dipinjam"
WHERE
    letak_buku = 'rak-10';
/* 2025-02-09 17:45:14 [3 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:45:25 [6 ms] */
UPDATE buku_perpus
SET
    status = "dipinjam"
WHERE
    letak_buku = 'rak-6';
/* 2025-02-09 17:45:28 [2 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 17:54:14 [41 ms] */
INSERT INTO peminjaman_buku (nama_buku) VALUES ('Pemrograman Java');
/* 2025-02-09 17:54:23 [3 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 17:54:29 [13 ms] */
SELECT * FROM `anggota_perpus` WHERE nomer_anggota IS NULL;
/* 2025-02-09 17:59:24 [36 ms] */
CREATE TRIGGER tanggal_kembali
BEFORE UPDATE ON peminjaman_buku
FOR EACH ROW
SET NEW.tanggal_kembali = DATE_ADD(NEW.tanggal_pinjam, INTERVAL 7 DAY);
/* 2025-02-09 17:59:27 [8 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 17:59:38 [15 ms] */
INSERT INTO peminjaman_buku (nama_buku) VALUES ('Pemrograman Java');
/* 2025-02-09 17:59:39 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:00:56 [54 ms] */
ALTER Table peminjaman_buku DROP COLUMN nama_buku;
/* 2025-02-09 18:01:01 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:03:52 [6 ms] */
DELETE FROM peminjaman_buku WHERE nomer_pinjam = 1;
/* 2025-02-09 18:03:54 [5 ms] */
DELETE FROM peminjaman_buku WHERE nomer_pinjam = 2;
/* 2025-02-09 18:03:55 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:04:39 [12 ms] */
DROP TRIGGER tanggal_kembali;
/* 2025-02-09 18:05:52 [12 ms] */
CREATE TRIGGER tanggal_kembali
BEFORE INSERT ON peminjaman_buku
FOR EACH ROW
SET NEW.tanggal_kembali = DATE_ADD(NEW.tanggal_pinjam, INTERVAL 7 DAY);
/* 2025-02-09 18:06:07 [4 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 18:06:22 [11 ms] */
INSERT INTO
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1003, 24091397027);
/* 2025-02-09 18:06:25 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:09:21 [16 ms] */
INSERT INTO
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1003, 24091397027);
/* 2025-02-09 18:09:23 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:09:35 [17 ms] */
DELETE FROM peminjaman_buku WHERE nomer_pinjam = 3;
/* 2025-02-09 18:09:39 [4 ms] */
DELETE FROM peminjaman_buku WHERE nomer_pinjam = 4;
/* 2025-02-09 18:09:41 [1 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:10:34 [16 ms] */
INSERT INTO
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1003, 24091397027);
/* 2025-02-09 18:10:36 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:10:37 [1 ms] */
SELECT * FROM `buku_perpus` WHERE nomer_buku = 1003;
/* 2025-02-09 18:10:55 [13 ms] */
SELECT * FROM `anggota_perpus` WHERE nomer_anggota = 24091397027;
/* 2025-02-09 18:11:18 [9 ms] */
UPDATE buku_perpus
SET
    status = "tersedia"
    -- WHERE letak_buku = 'rak-6';
    /* 2025-02-09 18:11:21 [2 ms] */
SELECT *
FROM buku_perpus
LIMIT 100;
/* 2025-02-09 18:15:00 [4 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:15:12 [1 ms] */
SELECT * FROM `anggota_perpus` WHERE nomer_anggota = 24091397027;
/* 2025-02-09 18:15:39 [4 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 18:16:00 [3 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:16:02 [4 ms] */
SELECT * FROM `anggota_perpus` WHERE nomer_anggota = 24091397027;
/* 2025-02-09 18:19:22 [67 ms] */
DROP Table peminjaman_buku;
/* 2025-02-09 18:19:39 [69 ms] */
CREATE TABLE peminjaman_buku (
    nomer_pinjam INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku BIGINT,
    nama_buku VARCHAR(255),
    nomer_anggota BIGINT,
    tanggal_pinjam DATETIME DEFAULT now(),
    tanggal_kembali DATETIME,
    FOREIGN KEY (nomer_buku) REFERENCES buku_perpus (nomer_buku),
    FOREIGN KEY (nomer_anggota) REFERENCES anggota_perpus (nomer_anggota)
);
/* 2025-02-09 18:19:41 [56 ms] */
CREATE TRIGGER tanggal_kembali
BEFORE INSERT ON peminjaman_buku
FOR EACH ROW
SET NEW.tanggal_kembali = DATE_ADD(NEW.tanggal_pinjam, INTERVAL 7 DAY);
/* 2025-02-09 18:19:48 [17 ms] */
DROP Table pengembalian_buku;
/* 2025-02-09 18:19:53 [7 ms] */
INSERT INTO
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1003, 24091397027);
/* 2025-02-09 18:19:58 [13 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:20:45 [19 ms] */
ALTER Table peminjaman_buku DROP COLUMN nama_buku;
/* 2025-02-09 18:20:47 [3 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:32:09 [98 ms] */
alter Table buku_perpus alter status SET DEFAULT 'Tersedia';
/* 2025-02-09 18:34:18 [21 ms] */
CREATE TRIGGER update_status_buku_pinjam
AFTER INSERT ON peminjaman_buku
FOR EACH ROW
    UPDATE buku_perpus
    SET status = 'dipinjam'
    WHERE nomer_buku = NEW.nomer_buku;
/* 2025-02-09 18:34:27 [19 ms] */
INSERT INTO
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1006, 24091397027);
/* 2025-02-09 18:34:29 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 18:34:45 [3 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 18:34:59 [15 ms] */
INSERT INTO
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1009, 24091397027);
/* 2025-02-09 18:35:01 [2 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-09 18:41:56 [6 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-09 22:49:48 [301 ms] */
CREATE Table pengembalian_buku (
    nomer_kembali INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku BIGINT,
    nomer_anggota BIGINT,
    tanggal_kembali DATETIME,
    status VARCHAR(255) DEFAULT 'dikembalikan'
);
/* 2025-02-09 22:50:05 [45 ms] */
DROP Table pengembalian_buku;
/* 2025-02-09 22:51:17 [115 ms] */
CREATE Table pengembalian_buku (
    nomer_kembali INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku BIGINT,
    nomer_anggota BIGINT,
    tanggal_kembali DATETIME,
    status VARCHAR(255) DEFAULT 'dikembalikan',
    Foreign Key (nomer_buku) REFERENCES buku_perpus (nomer_buku),
    Foreign Key (nomer_anggota) REFERENCES anggota_perpus (nomer_anggota)
);
/* 2025-02-09 22:52:39 [33 ms] */
CREATE TRIGGER update_status_buku_kembali
AFTER INSERT ON pengembalian_buku
FOR EACH ROW
    UPDATE buku_perpus
    SET status = 'tersedia'
    WHERE nomer_buku = NEW.nomer_buku;
/* 2025-02-09 22:58:38 [19 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 23:01:18 [49 ms] */
DROP Table pengembalian_buku;
/* 2025-02-09 23:01:39 [101 ms] */
CREATE Table pengembalian_buku (
    nomer_kembali INT PRIMARY KEY AUTO_INCREMENT,
    nomer_buku BIGINT,
    nomer_anggota BIGINT,
    tanggal_kembali DATETIME DEFAULT now(),
    status VARCHAR(255) DEFAULT 'dikembalikan',
    Foreign Key (nomer_buku) REFERENCES buku_perpus (nomer_buku),
    Foreign Key (nomer_anggota) REFERENCES anggota_perpus (nomer_anggota)
);
/* 2025-02-09 23:02:32 [17 ms] */
SELECT * FROM pengembalian_buku LIMIT 100;
/* 2025-02-09 23:02:42 [4 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 23:03:24 [22 ms] */
INSERT INTO
    pengembalian_buku (nomer_buku, nomer_anggota)
VALUES (1003, 24091397027);
/* 2025-02-09 23:03:25 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-09 23:03:34 [4 ms] */
SELECT * FROM pengembalian_buku LIMIT 100;
/* 2025-02-09 23:03:47 [7 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-10 17:45:23 [101 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-10 18:43:47 [83 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-10 19:14:30 [101 ms] */
SELECT * FROM anggota_perpus LIMIT 100;
/* 2025-02-10 19:28:19 [39 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-10 19:29:42 [8 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-10 22:23:04 [21 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-10 22:23:14 [5 ms] */
SELECT * FROM `buku_perpus` WHERE nomer_buku = 1006;
/* 2025-02-10 22:23:45 [2 ms] */
SELECT * FROM `buku_perpus` WHERE nomer_buku = 1009;
/* 2025-02-10 22:24:09 [23 ms] */
DELETE FROM `peminjaman_buku` WHERE `nomer_pinjam` = 3;
/* 2025-02-10 22:24:09 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-10 22:24:20 [4 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-10 22:25:45 [12 ms] */
DELETE FROM peminjaman_buku;
/* 2025-02-10 22:25:48 [2 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-10 22:25:56 [4 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-10 22:27:36 [21 ms] */
SELECT * FROM pengembalian_buku LIMIT 100;
/* 2025-02-10 22:30:41 [25 ms] */
INSERT into
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1009, 24091397027);
/* 2025-02-10 22:30:46 [5 ms] */
INSERT into
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1006, 24091397027);
/* 2025-02-10 22:30:47 [1 ms] */
SELECT * FROM pengembalian_buku LIMIT 100;
/* 2025-02-10 22:31:01 [17 ms] */
INSERT into
    pengembalian_buku (nomer_buku, nomer_anggota)
VALUES (1006, 24091397027);
/* 2025-02-10 22:31:07 [15 ms] */
INSERT into
    pengembalian_buku (nomer_buku, nomer_anggota)
VALUES (1009, 24091397027);
/* 2025-02-10 22:31:08 [2 ms] */
SELECT * FROM pengembalian_buku LIMIT 100;
/* 2025-02-10 22:31:15 [2 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-10 22:41:13 [22 ms] */
SELECT * FROM peminjaman_buku;
/* 2025-02-11 09:02:44 [27 ms] */
select * from pengembalian_buku LIMIT 100;
/* 2025-02-11 09:03:05 [7 ms] */
SELECT * FROM `buku_perpus` WHERE nomer_buku = 1003;
/* 2025-02-11 09:03:31 [2 ms] */
SELECT * FROM `anggota_perpus` WHERE nomer_anggota = 24091397027;
/* 2025-02-11 09:04:03 [6 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-02-11 09:04:06 [5 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-11 09:11:16 [23 ms] */
select * from anggota_perpus LIMIT 100;
/* 2025-02-11 09:11:24 [14 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-02-12 10:49:03 [74 ms] */
select * from anggota_perpus LIMIT 100;
/* 2025-02-12 10:49:25 [27 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-02-12 10:49:40 [49 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-12 10:52:22 [20 ms] */
INSERT INTO
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1020, 24091397024);
/* 2025-02-12 10:52:25 [5 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-12 10:52:45 [1 ms] */
SELECT * FROM `buku_perpus` WHERE nomer_buku = 1020;
/* 2025-02-12 10:52:59 [1 ms] */
SELECT * FROM `anggota_perpus` WHERE nomer_anggota = 24091397024;
/* 2025-02-12 10:58:58 [20 ms] */
SELECT * FROM `buku_perpus` WHERE nomer_buku = 1020;
/* 2025-02-12 10:59:07 [4 ms] */
SELECT * FROM `anggota_perpus` WHERE nomer_anggota = 24091397024;
/* 2025-02-12 12:33:12 [142 ms] */
select * from anggota_perpus LIMIT 100;
/* 2025-02-12 12:33:14 [45 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-02-12 13:36:49 [9 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-12 13:38:17 [48 ms] */
INSERT INTO
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1001, 24091397027);
/* 2025-02-12 13:38:20 [4 ms] */
SELECT * FROM buku_perpus LIMIT 100;
/* 2025-02-12 13:38:34 [7 ms] */
SELECT * FROM peminjaman_buku LIMIT 100;
/* 2025-02-12 13:41:16 [38 ms] */
INSERT INTO
    pengembalian_buku (nomer_buku, nomer_anggota)
VALUES (1001, 24091397027);
/* 2025-02-12 13:41:34 [6 ms] */
select * from pengembalian_buku LIMIT 100;
/* 2025-02-12 13:41:41 [5 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-12 13:41:45 [5 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-02-12 14:18:37 [3 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-12 14:19:47 [8 ms] */
INSERT INTO
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1008, 24091397027),
    (1019, 24091397013);
/* 2025-02-12 14:19:49 [1 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-13 19:59:54 [76 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-02-13 20:06:04 [26 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-13 20:06:17 [31 ms] */
SELECT * FROM `anggota_perpus` WHERE nomer_anggota = 24091397024;
/* 2025-02-13 20:06:28 [2 ms] */
SELECT * FROM `buku_perpus` WHERE nomer_buku = 1008;
/* 2025-02-13 20:06:52 [3 ms] */
SELECT * FROM `anggota_perpus` WHERE nomer_anggota = 24091397027;
/* 2025-02-13 20:10:44 [2 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-13 20:13:44 [4 ms] */
select * from anggota_perpus LIMIT 100;
/* 2025-02-13 20:13:48 [14 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-02-13 20:13:49 [3 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-13 20:13:50 [29 ms] */
select * from pengembalian_buku LIMIT 100;
/* 2025-02-13 20:18:35 [38 ms] */
SELECT a.first_name, a.last_name, CONCAT(
        b.first_name, " ", b.last_name
    ) as "report to"
FROM employees AS a
    INNER JOIN employees AS b ON a.supervisor_id = b.employee_id
LIMIT 100;
/* 2025-02-16 13:57:20 [29 ms] */
select * from anggota_perpus LIMIT 100;
/* 2025-02-16 13:57:38 [7 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-02-16 14:00:20 [20 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-16 14:00:44 [2 ms] */
SELECT * FROM `buku_perpus` WHERE nomer_buku = 1020;
/* 2025-02-16 14:01:06 [1 ms] */
SELECT * FROM `anggota_perpus` WHERE nomer_anggota = 24091397024;
/* 2025-02-16 14:04:37 [17 ms] */
select * from pengembalian_buku LIMIT 100;
/* 2025-02-16 14:05:18 [14 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-02-16 14:06:20 [31 ms] */
INSERT INTO
    peminjaman_buku (nomer_buku, nomer_anggota)
VALUES (1021, 24091397027);
/* 2025-02-16 14:06:24 [1 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-02-16 14:06:32 [3 ms] */
select * from peminjaman_buku LIMIT 100;
/* 2025-02-16 14:06:38 [1 ms] */
SELECT * FROM `buku_perpus` WHERE nomer_buku = 1021;
/* 2025-02-16 14:07:20 [6 ms] */
INSERT INTO
    pengembalian_buku (nomer_buku, nomer_anggota)
VALUES (1021, 24091397027);
/* 2025-02-16 14:07:22 [3 ms] */
select * from pengembalian_buku LIMIT 100;
/* 2025-02-16 14:07:41 [2 ms] */
select * from anggota_perpus LIMIT 100;
/* 2025-02-16 14:07:43 [3 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-03-07 19:01:02 [71 ms] */
CREATE DATABASE manajemen_saham DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-03-07 19:01:34 [3 ms] */
use manajemen_saham;
/* 2025-03-07 19:05:17 [87 ms] */
create table user (
    id_pengguna INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(25),
    email VARCHAR(30) UNIQUE,
    password VARCHAR(15),
    saldo DECIMAL,
    created_at TIMESTAMP
);
/* 2025-03-07 19:26:34 [136 ms] */
DROP Table `user`;
/* 2025-03-07 20:19:13 [20 ms] */
use manajemen_saham;
/* 2025-03-07 20:24:19 [86 ms] */
CREATE Table pengguna (
    id_pengguna INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(255) NOT NULL
);
/* 2025-03-07 20:24:55 [36 ms] */
DROP Table pengguna;
/* 2025-03-07 20:25:12 [33 ms] */
CREATE Table pengguna (
    id_pengguna INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(25) NOT NULL
);
/* 2025-03-07 20:29:27 [99 ms] */
DROP Table pengguna;
/* 2025-03-08 09:57:27 [58 ms] */
SHOW VARIABLES LIKE 'sql_mode';
/* 2025-03-08 09:57:59 [19 ms] */
SET sql_mode = '';
/* 2025-03-08 09:58:04 [204 ms] */
CREATE TABLE pengguna (
    id_pengguna INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(25) NOT NULL,
    email VARCHAR(25) UNIQUE NOT NULL
);
/* 2025-03-08 09:59:50 [8 ms] */
SELECT @@VERSION;
/* 2025-03-08 10:02:29 [23 ms] */
drop DATABASE manajemen_saham;
/* 2025-03-08 10:17:03 [22 ms] */
CREATE DATABASE manajemen_saham;
/* 2025-03-08 10:17:14 [8 ms] */
use manajemen_saham;
/* 2025-03-08 10:32:29 [181 ms] */
-- //membuat database baru// --;
/* 2025-03-08 10:33:15 [39 ms] */
select * from anggota_perpus LIMIT 100;
/* 2025-03-08 16:34:38 [153 ms] */
CREATE Table pengguna (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(25) NOT NULL,
    email VARCHAR(25) UNIQUE NOT NULL,
    password VARCHAR(25) NOT NULL
);
/* 2025-03-12 21:18:43 [91 ms] */
drop DATABASE manajemen_saham;
/* 2025-03-14 01:23:57 [367 ms] */
select * from anggota_perpus LIMIT 100;
/* 2025-03-14 01:24:52 [4 ms] */
use akademik;
/* 2025-03-14 01:33:20 [12 ms] */
USE database_perpustakaan;
/* 2025-03-14 01:34:33 [17 ms] */
SHOW DATABASES;
/* 2025-03-14 01:34:52 [3 ms] */
show databases;
/* 2025-03-14 01:37:43 [3 ms] */
SELECT VERSION();
/* 2025-03-14 02:36:29 [24 ms] */
CREATE TABLE mahasiswa (
    NIM INT PRIMARY KEY,
    nama VARCHAR(50) NOT NULL,
    jurusan VARCHAR(25) NOT NULL
);
/* 2025-03-14 02:36:33 [7 ms] */
CREATE TABLE dosen (
    NIP VARCHAR(5) PRIMARY KEY,
    nama VARCHAR(25) NOT NULL,
    fakultas VARCHAR(25) NOT NULL
);
/* 2025-03-14 02:36:35 [26 ms] */
CREATE Table matakuliah (
    kode_MK VARCHAR(5) PRIMARY KEY,
    mata_kuliah VARCHAR(20) NOT NULL,
    SKS INT NOT NULL,
    NIP VARCHAR(5) NOT NULL,
    Foreign Key (NIP) REFERENCES dosen (NIP)
);
/* 2025-03-14 02:36:38 [5 ms] */
INSERT INTO
    mahasiswa
VALUES (24001, "Asep", "Informatika"),
    (24002, "Budi", "Informatika"),
    (24003, "Bagus", "Informatika");
/* 2025-03-14 02:36:41 [3 ms] */
INSERT INTO
    dosen
VALUES (
        "D001",
        "Dr. Deny Pratama",
        "Sistem Informasi"
    ),
    (
        "D002",
        "Dr. Paul Walker",
        "Teknik Informatika"
    );
/* 2025-03-14 02:36:41 [12 ms] */
INSERT into
    matakuliah
VALUES (
        "MK001",
        "Basis Data",
        3,
        "D001"
    ),
    (
        "MK002",
        "Struktur Data",
        3,
        "D002"
    );
/* 2025-03-14 02:37:02 [2 ms] */
SELECT * FROM matakuliah LIMIT 100;
/* 2025-03-14 02:37:06 [2 ms] */
SELECT * FROM `dosen` WHERE NIP = 'D001';
/* 2025-03-14 02:39:42 [3 ms] */
SELECT * FROM dosen LIMIT 100;
/* 2025-03-14 13:16:27 [133 ms] */
SELECT * FROM dosen LIMIT 100;
/* 2025-03-14 13:20:12 [53 ms] */
show databases;
/* 2025-03-14 13:20:55 [31 ms] */
drop DATABASE test;
/* 2025-03-14 13:30:20 [60 ms] */
CREATE TABLE KRS (
    NIM INT,
    kode_MK VARCHAR(5),
    PRIMARY KEY (NIM, kode_MK),
    Foreign Key (NIM) REFERENCES mahasiswa (NIM),
    Foreign Key (kode_MK) REFERENCES matakuliah (kode_MK)
);
/* 2025-03-14 13:32:26 [8 ms] */
INSERT INTO krs VALUES (24001, "MK001"), (24002, "MK002");
/* 2025-03-14 13:39:53 [14 ms] */
SELECT * FROM dosen LIMIT 100;
/* 2025-03-14 13:39:59 [3 ms] */
SELECT * FROM matakuliah LIMIT 100;
/* 2025-03-14 13:40:01 [2 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-03-14 13:40:10 [3 ms] */
SELECT * FROM matakuliah LIMIT 100;
/* 2025-03-14 13:40:40 [7 ms] */
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
FROM
    krs
    JOIN mahasiswa M ON KRS.NIM = M.NIM
    JOIN matakuliah MK ON KRS.kode_MK = MK.kode_MK
    JOIN dosen D ON MK.NIP = D.NIP
LIMIT 100;
/* 2025-03-14 13:43:13 [2 ms] */
SELECT * FROM dosen LIMIT 100;
/* 2025-03-14 13:43:58 [2 ms] */
SELECT * FROM matakuliah LIMIT 100;
/* 2025-03-14 13:44:33 [2 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-03-14 13:45:01 [3 ms] */
SELECT * FROM krs LIMIT 100;
/* 2025-03-14 13:59:22 [9 ms] */
SHOW TABLES;
/* 2025-03-14 14:01:26 [35 ms] */
DESCRIBE mahasiswa;
/* 2025-03-14 14:04:58 [34 ms] */
DESCRIBE dosen;
/* 2025-03-14 14:05:41 [23 ms] */
DESCRIBE matakuliah;
/* 2025-03-14 14:06:18 [106 ms] */
DESCRIBE KRS;
/* 2025-03-14 14:11:00 [19 ms] */
SHOW COLUMNS FROM mahasiswa;
/* 2025-03-14 14:11:16 [19 ms] */
DESCRIBE mahasiswa;
/* 2025-03-14 14:11:20 [19 ms] */
SHOW COLUMNS FROM mahasiswa;
/* 2025-03-14 14:11:22 [19 ms] */
DESCRIBE mahasiswa;
/* 2025-03-14 14:11:24 [21 ms] */
SHOW COLUMNS FROM mahasiswa;
/* 2025-03-14 14:11:28 [30 ms] */
DESCRIBE mahasiswa;
/* 2025-03-14 14:11:30 [24 ms] */
SHOW COLUMNS FROM mahasiswa;
/* 2025-03-14 14:26:44 [49 ms] */
SELECT * FROM dosen LIMIT 100;
/* 2025-03-14 14:27:00 [23 ms] */
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
FROM
    krs
    JOIN mahasiswa M ON KRS.NIM = M.NIM
    JOIN matakuliah MK ON KRS.kode_MK = MK.kode_MK
    JOIN dosen D ON MK.NIP = D.NIP
LIMIT 100;
/* 2025-03-14 14:27:30 [3 ms] */
SELECT * FROM dosen LIMIT 100;
/* 2025-03-14 14:28:12 [3 ms] */
SELECT * FROM matakuliah LIMIT 100;
/* 2025-03-14 14:29:07 [4 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-03-14 14:29:46 [3 ms] */
SELECT * FROM matakuliah LIMIT 100;
/* 2025-03-14 14:29:49 [14 ms] */
SELECT * FROM krs LIMIT 100;
/* 2025-03-16 13:42:36 [10 ms] */
CREATE DATABASE manajemen_saham DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-03-16 13:43:35 [4 ms] */
USE manajemen_Saham;
/* 2025-03-16 13:49:57 [37 ms] */
CREATE Table investor (
    investor_id INT PRIMARY KEY,
    email VARCHAR(25) UNIQUE NOT NULL,
    nomer_telepon VARCHAR(15) NOT NULL,
    tanggal_bergabung DATE DEFAULT NOW()
);
/* 2025-03-16 13:49:59 [8 ms] */
ALTER Table investor AUTO_INCREMENT = 100;
/* 2025-03-16 13:51:49 [17 ms] */
DROP Table investor;
/* 2025-03-16 13:51:52 [40 ms] */
CREATE Table investor (
    investor_id INT PRIMARY KEY,
    nama VARCHAR(25) NOT NULL,
    email VARCHAR(25) UNIQUE NOT NULL,
    nomer_telepon VARCHAR(15) NOT NULL,
    tanggal_bergabung DATE DEFAULT NOW()
);
/* 2025-03-16 13:52:00 [6 ms] */
ALTER Table investor AUTO_INCREMENT = 100;
/* 2025-03-16 13:52:23 [3 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 13:55:05 [2 ms] */
SHOW CREATE TABLE investor;
/* 2025-03-16 13:56:13 [17 ms] */
DROP Table investor;
/* 2025-03-16 13:56:19 [37 ms] */
CREATE Table investor (
    investor_id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(25) NOT NULL,
    email VARCHAR(25) UNIQUE NOT NULL,
    nomer_telepon VARCHAR(15) NOT NULL,
    tanggal_bergabung DATE DEFAULT NOW()
);
/* 2025-03-16 13:56:21 [16 ms] */
ALTER Table investor AUTO_INCREMENT = 100;
/* 2025-03-16 13:56:26 [2 ms] */
SHOW CREATE TABLE investor;
/* 2025-03-16 13:56:56 [3 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 14:06:45 [8 ms] */
INSERT INTO
    investor (nama, email, nomer_telepon)
VALUES (
        "Andi Wijaya",
        "andi.wijaya@email.com",
        "081234567890"
    ),
    (
        "Budi Santoso",
        "budi.santoso@email.com",
        "081234567891"
    ),
    (
        "Cindy Lestari",
        "cindy.lestari@email.com",
        "081234567892"
    ),
    (
        "Dedi Pratama",
        "dedi.pratama@email.com",
        "081234567893"
    ),
    (
        "Erika Sari",
        "erika.sari@email.com",
        "081234567894"
    ),
    (
        "Fajar Hidayat",
        "fajar.hidayat@email.com",
        "081234567895"
    ),
    (
        "Gina Oktavia",
        "gina.oktavia@email.com",
        "081234567896"
    ),
    (
        "Hadi Saputra",
        "hadi.saputra@email.com",
        "081234567897"
    ),
    (
        "Intan Permata",
        "intan.permata@email.com",
        "081234567898"
    ),
    (
        "Joko Supriyadi",
        "joko.supriyadi@email.com",
        "081234567899"
    );
/* 2025-03-16 14:06:47 [4 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 14:10:57 [20 ms] */
CREATE TABLE saham (
    saham_id INT AUTO_INCREMENT PRIMARY KEY,
    kode_saham VARCHAR(5) NOT NULL,
    perusahaan VARCHAR(10) NOT NULL,
    harga_per_lot DECIMAL(10, 0) NOT NULL,
    dividen_per_lot DECIMAL(10, 0) NOT NULL
);
/* 2025-03-16 14:10:59 [6 ms] */
ALTER Table saham AUTO_INCREMENT = 200;
/* 2025-03-16 14:11:35 [2 ms] */
SELECT * FROM investor, saham LIMIT 100;
/* 2025-03-16 14:11:58 [2 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 14:19:37 [9 ms] */
INSERT INTO
    saham (
        kode_saham,
        perusahaan,
        harga_per_lot,
        dividen_per_lot
    )
VALUES (
        "BBCA",
        "Bank Central Asia",
        10000000,
        500000
    ),
    (
        "TLKM",
        "Telkom Indonesia",
        8000000,
        350000
    ),
    (
        "BBRI",
        "Bank Rakyat Indonesia",
        7500000,
        300000
    ),
    (
        "UNVR",
        "Unilever Indonesia",
        5000000,
        250000
    ),
    (
        "ASII",
        "Astra International",
        6500000,
        400000
    ),
    (
        "GGRM",
        "Gudang Garam",
        6000000,
        375000
    ),
    (
        "INDF",
        "Indofood Sukses Makmur",
        4500000,
        225000
    ),
    (
        "PGAS",
        "Perusahaan Gas Negara",
        5500000,
        280000
    ),
    (
        "ANTM",
        "Aneka Tambang",
        6200000,
        310000
    ),
    (
        "ICBP",
        "Indofood CBP Sukses Makmur",
        7000000,
        330000
    );
/* 2025-03-16 14:19:40 [28 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 14:20:26 [6 ms] */
DROP Table saham;
/* 2025-03-16 14:20:29 [17 ms] */
CREATE TABLE saham (
    saham_id INT AUTO_INCREMENT PRIMARY KEY,
    kode_saham VARCHAR(5) NOT NULL,
    perusahaan VARCHAR(50) NOT NULL,
    harga_per_lot DECIMAL(10, 0) NOT NULL,
    dividen_per_lot DECIMAL(10, 0) NOT NULL
);
/* 2025-03-16 14:20:30 [5 ms] */
ALTER Table saham AUTO_INCREMENT = 200;
/* 2025-03-16 14:20:31 [4 ms] */
INSERT INTO
    saham (
        kode_saham,
        perusahaan,
        harga_per_lot,
        dividen_per_lot
    )
VALUES (
        "BBCA",
        "Bank Central Asia",
        10000000,
        500000
    ),
    (
        "TLKM",
        "Telkom Indonesia",
        8000000,
        350000
    ),
    (
        "BBRI",
        "Bank Rakyat Indonesia",
        7500000,
        300000
    ),
    (
        "UNVR",
        "Unilever Indonesia",
        5000000,
        250000
    ),
    (
        "ASII",
        "Astra International",
        6500000,
        400000
    ),
    (
        "GGRM",
        "Gudang Garam",
        6000000,
        375000
    ),
    (
        "INDF",
        "Indofood Sukses Makmur",
        4500000,
        225000
    ),
    (
        "PGAS",
        "Perusahaan Gas Negara",
        5500000,
        280000
    ),
    (
        "ANTM",
        "Aneka Tambang",
        6200000,
        310000
    ),
    (
        "ICBP",
        "Indofood CBP Sukses Makmur",
        7000000,
        330000
    );
/* 2025-03-16 14:20:33 [2 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 14:21:08 [6 ms] */
DROP Table saham;
/* 2025-03-16 14:21:25 [15 ms] */
DROP Table investor;
/* 2025-03-16 14:21:33 [46 ms] */
CREATE Table investor (
    investor_id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(25) NOT NULL,
    email VARCHAR(25) UNIQUE NOT NULL,
    nomer_telepon VARCHAR(15) NOT NULL,
    tanggal_bergabung DATE DEFAULT NOW()
);
/* 2025-03-16 14:21:35 [17 ms] */
ALTER Table investor AUTO_INCREMENT = 101;
/* 2025-03-16 14:21:36 [13 ms] */
INSERT INTO
    investor (nama, email, nomer_telepon)
VALUES (
        "Andi Wijaya",
        "andi.wijaya@email.com",
        "081234567890"
    ),
    (
        "Budi Santoso",
        "budi.santoso@email.com",
        "081234567891"
    ),
    (
        "Cindy Lestari",
        "cindy.lestari@email.com",
        "081234567892"
    ),
    (
        "Dedi Pratama",
        "dedi.pratama@email.com",
        "081234567893"
    ),
    (
        "Erika Sari",
        "erika.sari@email.com",
        "081234567894"
    ),
    (
        "Fajar Hidayat",
        "fajar.hidayat@email.com",
        "081234567895"
    ),
    (
        "Gina Oktavia",
        "gina.oktavia@email.com",
        "081234567896"
    ),
    (
        "Hadi Saputra",
        "hadi.saputra@email.com",
        "081234567897"
    ),
    (
        "Intan Permata",
        "intan.permata@email.com",
        "081234567898"
    ),
    (
        "Joko Supriyadi",
        "joko.supriyadi@email.com",
        "081234567899"
    );
/* 2025-03-16 14:21:38 [7 ms] */
CREATE TABLE saham (
    saham_id INT AUTO_INCREMENT PRIMARY KEY,
    kode_saham VARCHAR(5) NOT NULL,
    perusahaan VARCHAR(50) NOT NULL,
    harga_per_lot DECIMAL(10, 0) NOT NULL,
    dividen_per_lot DECIMAL(10, 0) NOT NULL
);
/* 2025-03-16 14:21:40 [5 ms] */
ALTER Table saham AUTO_INCREMENT = 201;
/* 2025-03-16 14:21:43 [13 ms] */
INSERT INTO
    saham (
        kode_saham,
        perusahaan,
        harga_per_lot,
        dividen_per_lot
    )
VALUES (
        "BBCA",
        "Bank Central Asia",
        10000000,
        500000
    ),
    (
        "TLKM",
        "Telkom Indonesia",
        8000000,
        350000
    ),
    (
        "BBRI",
        "Bank Rakyat Indonesia",
        7500000,
        300000
    ),
    (
        "UNVR",
        "Unilever Indonesia",
        5000000,
        250000
    ),
    (
        "ASII",
        "Astra International",
        6500000,
        400000
    ),
    (
        "GGRM",
        "Gudang Garam",
        6000000,
        375000
    ),
    (
        "INDF",
        "Indofood Sukses Makmur",
        4500000,
        225000
    ),
    (
        "PGAS",
        "Perusahaan Gas Negara",
        5500000,
        280000
    ),
    (
        "ANTM",
        "Aneka Tambang",
        6200000,
        310000
    ),
    (
        "ICBP",
        "Indofood CBP Sukses Makmur",
        7000000,
        330000
    );
/* 2025-03-16 14:21:45 [3 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 14:21:56 [3 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:19:59 [52 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:20:07 [12 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:30:12 [13 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:30:14 [2 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:30:15 [3 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:30:16 [3 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:30:17 [3 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:30:18 [2 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:30:18 [2 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:30:19 [2 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:30:19 [3 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:30:20 [3 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:30:20 [2 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:30:21 [2 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:30:21 [3 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:30:22 [3 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:30:31 [2 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:30:35 [2 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:30:36 [4 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:30:46 [2 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-16 16:32:30 [1 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 16:50:13 [131 ms] */
select * from buku_perpus LIMIT 100;
/* 2025-03-16 16:52:16 [50 ms] */
CREATE TABLE transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    investor_id INT NOT NULL,
    saham_id INT NOT NULL,
    tanggal_transaksi DATE DEFAULT NOW(),
    jumlah_lot INT NOT NULL,
    Foreign Key (investor_id) REFERENCES investor (investor_id),
    Foreign Key (saham_id) REFERENCES saham (saham_id)
);
/* 2025-03-16 16:52:26 [38 ms] */
CREATE TABLE portofolio (
    portofolio_id INT AUTO_INCREMENT PRIMARY KEY,
    investor_id INT NOT NULL,
    saham_id INT NOT NULL,
    jumlah_lot INT NOT NULL,
    total_investasi DECIMAL(10, 0) NOT NULL,
    Foreign Key (investor_id) REFERENCES investor (investor_id),
    Foreign Key (saham_id) REFERENCES saham (saham_id)
);
/* 2025-03-16 16:58:47 [19 ms] */
CREATE TRIGGER after_insert_transaksi
AFTER INSERT ON Transaksi
FOR EACH ROW
BEGIN
    -- Cek apakah investor sudah memiliki saham di tabel Portofolio
    IF EXISTS (SELECT 1 FROM Portofolio WHERE investor_id = NEW.investor_id AND saham_id = NEW.saham_id) THEN
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
/* 2025-03-16 16:58:48 [21 ms] */
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
/* 2025-03-16 16:59:38 [15 ms] */
INSERT INTO
    transaksi (
        investor_id,
        saham_id,
        jumlah_lot
    ) VALUE (102, 202, 5);
/* 2025-03-16 16:59:42 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-03-16 16:59:55 [2 ms] */
SELECT * FROM portofolio LIMIT 100;
/* 2025-03-16 17:00:56 [7 ms] */
INSERT INTO
    transaksi (
        investor_id,
        saham_id,
        jumlah_lot
    ) VALUE (102, 205, 2);
/* 2025-03-16 17:00:59 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-03-16 17:01:05 [2 ms] */
SELECT * FROM portofolio LIMIT 100;
/* 2025-03-16 17:05:32 [3 ms] */
SELECT 1 FROM investor LIMIT 100;
/* 2025-03-16 17:05:45 [3 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-16 17:06:09 [2 ms] */
SELECT 1 FROM investor WHERE investor_id LIMIT 100;
/* 2025-03-16 17:07:35 [8 ms] */
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
/* 2025-03-16 17:08:48 [2 ms] */
SELECT 1 FROM investor WHERE investor_id = 101 LIMIT 100;
/* 2025-03-16 17:09:04 [3 ms] */
SELECT 1 FROM investor WHERE investor_id = 110 LIMIT 100;
/* 2025-03-16 17:09:31 [2 ms] */
SELECT * FROM investor WHERE investor_id = 110 LIMIT 100;
/* 2025-03-16 17:09:58 [14 ms] */
INSERT INTO
    transaksi (
        investor_id,
        saham_id,
        jumlah_lot
    ) VALUE (103, 206, 2);
/* 2025-03-16 17:10:02 [2 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-03-16 17:10:09 [2 ms] */
SELECT * FROM portofolio LIMIT 100;
/* 2025-03-16 17:11:59 [21 ms] */
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
/* 2025-03-16 17:12:03 [16 ms] */
INSERT INTO
    transaksi (
        investor_id,
        saham_id,
        jumlah_lot
    ) VALUE (103, 206, 2);
/* 2025-03-16 17:12:06 [2 ms] */
SELECT * FROM portofolio LIMIT 100;
/* 2025-03-16 18:15:29 [5 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-03-17 01:05:49 [23 ms] */
DROP TABLE transaksi;
/* 2025-03-17 01:05:50 [26 ms] */
DROP TABLE portofolio;
/* 2025-03-17 01:06:26 [61 ms] */
CREATE TABLE transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    investor_id INT NOT NULL,
    saham_id INT NOT NULL,
    tanggal_transaksi DATE DEFAULT NOW(),
    jumlah_lot INT NOT NULL,
    Foreign Key (investor_id) REFERENCES investor (investor_id),
    Foreign Key (saham_id) REFERENCES saham (saham_id)
);
/* 2025-03-17 01:06:28 [13 ms] */
ALTER TABLE transaksi AUTO_INCREMENT = 301;
/* 2025-03-17 01:06:30 [17 ms] */
INSERT INTO
    transaksi (
        investor_id,
        saham_id,
        jumlah_lot
    ) VALUE (101, 201, 5),
    (102, 203, 3),
    (103, 205, 7),
    (104, 207, 2),
    (105, 209, 6);
/* 2025-03-17 01:06:33 [6 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-03-17 01:06:37 [54 ms] */
CREATE TABLE portofolio (
    portofolio_id INT AUTO_INCREMENT PRIMARY KEY,
    investor_id INT NOT NULL,
    saham_id INT NOT NULL,
    jumlah_lot INT NOT NULL,
    total_investasi DECIMAL(10, 0) NOT NULL,
    Foreign Key (investor_id) REFERENCES investor (investor_id),
    Foreign Key (saham_id) REFERENCES saham (saham_id)
);
/* 2025-03-17 01:06:40 [21 ms] */
ALTER TABLE portofolio AUTO_INCREMENT = 401;
/* 2025-03-17 01:06:42 [27 ms] */
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
/* 2025-03-17 01:06:44 [25 ms] */
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
/* 2025-03-17 01:06:46 [4 ms] */
SELECT * FROM portofolio LIMIT 100;
/* 2025-03-17 01:07:06 [20 ms] */
DROP TABLE transaksi;
/* 2025-03-17 01:07:07 [11 ms] */
DROP TABLE portofolio;
/* 2025-03-17 01:07:12 [63 ms] */
CREATE TABLE transaksi (
    transaksi_id INT PRIMARY KEY AUTO_INCREMENT,
    investor_id INT NOT NULL,
    saham_id INT NOT NULL,
    tanggal_transaksi DATE DEFAULT NOW(),
    jumlah_lot INT NOT NULL,
    Foreign Key (investor_id) REFERENCES investor (investor_id),
    Foreign Key (saham_id) REFERENCES saham (saham_id)
);
/* 2025-03-17 01:07:13 [10 ms] */
ALTER TABLE transaksi AUTO_INCREMENT = 301;
/* 2025-03-17 01:07:16 [7 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-03-17 01:07:21 [50 ms] */
CREATE TABLE portofolio (
    portofolio_id INT AUTO_INCREMENT PRIMARY KEY,
    investor_id INT NOT NULL,
    saham_id INT NOT NULL,
    jumlah_lot INT NOT NULL,
    total_investasi DECIMAL(10, 0) NOT NULL,
    Foreign Key (investor_id) REFERENCES investor (investor_id),
    Foreign Key (saham_id) REFERENCES saham (saham_id)
);
/* 2025-03-17 01:07:24 [9 ms] */
ALTER TABLE portofolio AUTO_INCREMENT = 401;
/* 2025-03-17 01:07:26 [22 ms] */
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
/* 2025-03-17 01:07:31 [9 ms] */
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
/* 2025-03-17 01:07:36 [4 ms] */
SELECT * FROM portofolio LIMIT 100;
/* 2025-03-17 01:07:44 [6 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-03-17 01:07:47 [30 ms] */
INSERT INTO
    transaksi (
        investor_id,
        saham_id,
        jumlah_lot
    ) VALUE (101, 201, 5),
    (102, 203, 3),
    (103, 205, 7),
    (104, 207, 2),
    (105, 209, 6);
/* 2025-03-17 01:07:51 [1 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-03-17 01:07:53 [1 ms] */
SELECT * FROM portofolio LIMIT 100;
/* 2025-03-17 13:57:04 [108 ms] */
SHOW DATABASES;
/* 2025-03-17 14:06:22 [11 ms] */
SHOW TABLES;
/* 2025-03-17 14:06:25 [39 ms] */
DESCRIBE investor;
/* 2025-03-17 14:06:32 [32 ms] */
DESCRIBE saham;
/* 2025-03-17 14:06:34 [41 ms] */
DESCRIBE transaksi;
/* 2025-03-17 14:06:39 [23 ms] */
DESCRIBE portofolio;
/* 2025-03-17 14:06:45 [29 ms] */
DESCRIBE investor;
/* 2025-03-17 14:06:48 [23 ms] */
DESCRIBE saham;
/* 2025-03-17 14:06:53 [35 ms] */
DESCRIBE transaksi;
/* 2025-03-17 14:06:56 [18 ms] */
DESCRIBE investor;
/* 2025-03-17 14:07:01 [20 ms] */
DESCRIBE portofolio;
/* 2025-03-17 14:23:50 [7 ms] */
USE manajemen_Saham;
/* 2025-03-17 14:24:56 [10 ms] */
SELECT t.investor_id, i.nama as nama_investor, s.perusahaan, s.harga_per_lot, t.jumlah_lot, p.total_investasi
FROM
    transaksi as t
    JOIN investor as i
    JOIN saham as s
    JOIN portofolio as p
LIMIT 100;
/* 2025-03-17 14:25:46 [7 ms] */
SELECT t.investor_id, i.nama as nama_investor, s.perusahaan, s.harga_per_lot, t.jumlah_lot, p.total_investasi
FROM
    portofolio as p
    JOIN investor as i
    JOIN saham as s
    JOIN transaksi t
LIMIT 100;
/* 2025-03-17 14:26:49 [5 ms] */
SELECT p.investor_id, i.nama as nama_investor, s.perusahaan, s.harga_per_lot, t.jumlah_lot, p.total_investasi
FROM
    portofolio as p
    JOIN investor as i
    JOIN saham as s
    JOIN transaksi t
LIMIT 100;
/* 2025-03-17 14:27:27 [5 ms] */
SELECT p.investor_id, i.nama as nama_investor, s.perusahaan, s.harga_per_lot, t.jumlah_lot, p.total_investasi
FROM
    portofolio as p
    inner JOIN investor as i
    INNER JOIN saham as s
    INNER JOIN transaksi t
LIMIT 100;
/* 2025-03-17 14:27:42 [13 ms] */
SELECT * FROM portofolio LIMIT 100;
/* 2025-03-17 14:29:22 [3 ms] */
SELECT i.nama, s.perusahaan
FROM portofolio
    JOIN investor i
    JOIN saham s
LIMIT 100;
/* 2025-03-17 14:31:21 [2 ms] */
SELECT * FROM portofolio LIMIT 100;
/* 2025-03-17 14:34:31 [9 ms] */
SELECT i.nama, s.perusahaan, p.investor_id, p.saham_id, p.jumlah_lot, p.total_investasi
FROM
    portofolio AS p
    JOIN investor AS i ON i.investor_id = p.investor_id
    JOIN saham AS s ON s.saham_id = p.saham_id
LIMIT 100;
/* 2025-03-17 14:35:00 [6 ms] */
SELECT i.nama, s.perusahaan, p.investor_id, p.saham_id, p.jumlah_lot, p.total_investasi
FROM
    portofolio as p
    JOIN investor as i ON i.investor_id = p.investor_id
    JOIN saham as s ON s.perusahaan = p.saham_id
LIMIT 100;
/* 2025-03-17 14:35:15 [3 ms] */
SELECT i.nama, s.perusahaan, p.investor_id, p.saham_id, p.jumlah_lot, p.total_investasi
FROM
    portofolio AS p
    JOIN investor AS i ON i.investor_id = p.investor_id
    JOIN saham AS s ON s.saham_id = p.saham_id
LIMIT 100;
/* 2025-03-17 14:35:38 [3 ms] */
SELECT i.nama, s.perusahaan, p.investor_id, p.saham_id, p.jumlah_lot, p.total_investasi
FROM
    portofolio as p
    JOIN investor as i ON i.investor_id = p.investor_id
    JOIN saham as s ON s.perusahaan = p.saham_id
LIMIT 100;
/* 2025-03-17 14:35:55 [2 ms] */
SELECT i.nama, s.perusahaan, p.investor_id, p.saham_id, p.jumlah_lot, p.total_investasi
FROM
    portofolio as p
    JOIN investor as i ON i.investor_id = p.investor_id
    JOIN saham as s ON s.saham_id = p.saham_id
LIMIT 100;
/* 2025-03-17 14:37:13 [2 ms] */
SELECT p.investor_id, i.nama, p.saham_id, s.perusahaan, p.jumlah_lot, p.total_investasi
FROM
    portofolio as p
    JOIN investor as i ON i.investor_id = p.investor_id
    JOIN saham as s ON s.saham_id = p.saham_id
LIMIT 100;
/* 2025-03-17 14:50:10 [8 ms] */
SELECT p.investor_id, i.nama, p.saham_id, s.perusahaan, p.jumlah_lot, t.jumlah_lot, p.total_investasi, t.tanggal_transaksi
FROM
    portofolio as p
    JOIN investor as i ON i.investor_id = p.investor_id
    JOIN saham as s ON s.saham_id = p.saham_id
    JOIN transaksi as t ON t.jumlah_lot = p.jumlah_lot
LIMIT 100;
/* 2025-03-17 14:50:20 [3 ms] */
SELECT p.investor_id, i.nama, p.saham_id, s.perusahaan, p.jumlah_lot, p.total_investasi, t.tanggal_transaksi
FROM
    portofolio as p
    JOIN investor as i ON i.investor_id = p.investor_id
    JOIN saham as s ON s.saham_id = p.saham_id
    JOIN transaksi as t ON t.jumlah_lot = p.jumlah_lot
LIMIT 100;
/* 2025-03-17 14:50:26 [4 ms] */
SELECT p.investor_id, i.nama, p.saham_id, s.perusahaan, p.jumlah_lot, p.total_investasi, t.tanggal_transaksi
FROM
    portofolio as p
    JOIN investor as i ON i.investor_id = p.investor_id
    JOIN saham as s ON s.saham_id = p.saham_id
    JOIN transaksi as t
LIMIT 100;
/* 2025-03-17 14:51:12 [3 ms] */
SELECT p.investor_id, i.nama, p.saham_id, s.perusahaan, p.jumlah_lot, p.total_investasi, t.tanggal_transaksi
FROM
    portofolio as p
    JOIN investor as i ON i.investor_id = p.investor_id
    JOIN saham as s ON s.saham_id = p.saham_id
    JOIN transaksi as t ON t.jumlah_lot = p.jumlah_lot
LIMIT 100;
/* 2025-03-17 14:51:44 [15 ms] */
SELECT p.investor_id, i.nama, p.saham_id, s.perusahaan, p.jumlah_lot, p.total_investasi, t.tanggal_transaksi
FROM
    portofolio as p
    JOIN investor as i ON i.investor_id = p.investor_id
    JOIN saham as s ON s.saham_id = p.saham_id
    JOIN transaksi as t ON t.investor_id = p.investor_id
LIMIT 100;
/* 2025-03-17 15:15:25 [67 ms] */
SELECT * FROM investor LIMIT 100;
/* 2025-03-17 15:30:42 [15 ms] */
SELECT * FROM saham LIMIT 100;
/* 2025-03-17 15:39:26 [25 ms] */
SELECT * FROM transaksi LIMIT 100;
/* 2025-03-17 15:48:42 [29 ms] */
SELECT p.investor_id, i.nama, p.saham_id, s.perusahaan, p.jumlah_lot, p.total_investasi, t.tanggal_transaksi
FROM
    portofolio as p
    JOIN investor as i ON i.investor_id = p.investor_id
    JOIN saham as s ON s.saham_id = p.saham_id
    JOIN transaksi as t ON t.investor_id = p.investor_id
LIMIT 100;
/* 2025-03-17 15:49:54 [8 ms] */
SHOW TABLES;
/* 2025-03-17 15:56:17 [54 ms] */
DESCRIBE investor;
/* 2025-03-17 15:59:02 [20 ms] */
DESCRIBE saham;
/* 2025-03-17 15:59:29 [30 ms] */
DESCRIBE transaksi;
/* 2025-03-17 15:59:51 [19 ms] */
DESCRIBE portofolio;
/* 2025-05-11 09:32:54 [33 ms] */
CREATE DATABASE list_barang DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-05-11 09:42:22 [62 ms] */
USE list_barang;
/* 2025-05-11 09:52:52 [73 ms] */
CREATE TABLE jenis_barang (
    jenis_barang VARCHAR(20) PRIMARY KEY
);
/* 2025-05-11 09:53:16 [30 ms] */
INSERT INTO
    jenis_barang
VALUES ("Furniture"),
    ("ATK"),
    ("Jaringan");
/* 2025-05-11 09:53:27 [13 ms] */
SELECT * FROM jenis_barang LIMIT 100;
/* 2025-05-11 09:54:04 [77 ms] */
CREATE TABLE barang (
    kode_barang VARCHAR(10) PRIMARY KEY,
    nama_barang VARCHAR(50) NOT NULL,
    jenis_barang VARCHAR(20) NOT NULL,
    Foreign Key (jenis_barang) REFERENCES jenis_barang (jenis_barang)
);
/* 2025-05-11 09:54:06 [9 ms] */
INSERT INTO
    barang (
        kode_barang,
        nama_barang,
        jenis_barang
    )
VALUES ("B001", "Kursi", "Furniture"),
    ("B002", "Meja", "Furniture"),
    ("B003", "Laptop", "Jaringan"),
    ("B004", "Printer", "ATK"),
    ("B005", "Pensil", "ATK"),
    ("B006", "Stapler", "ATK"),
    ("B007", "Monitor", "Jaringan"),
    ("B008", "Mouse", "Jaringan"),
    (
        "B009",
        "Keyboard",
        "Jaringan"
    ),
    ("B010", "Scanner", "ATK");
/* 2025-05-11 09:54:17 [6 ms] */
SELECT * FROM barang LIMIT 100;
/* 2025-05-11 09:56:03 [18 ms] */
drop Table barang;
/* 2025-05-11 20:16:25 [76 ms] */
CREATE TABLE barang (
    kode_barang VARCHAR(10) PRIMARY KEY,
    nama_barang VARCHAR(50) NOT NULL,
    jenis_barang VARCHAR(20) NOT NULL,
    Foreign Key (jenis_barang) REFERENCES jenis_barang (jenis_barang)
);
/* 2025-05-11 20:16:30 [36 ms] */
CREATE TABLE detail_barang (
    jenis_barang VARCHAR(20) NOT NULL,
    kode_barang VARCHAR(10) NOT NULL,
    qty_barang INT NOT NULL,
    tgl_input_barang DATE NOT NULL,
    desc_barang VARCHAR(100),
    FOREIGN KEY (kode_barang) REFERENCES barang (kode_barang),
    FOREIGN KEY (jenis_barang) REFERENCES jenis_barang (jenis_barang)
);
/* 2025-05-11 20:20:36 [23 ms] */
INSERT INTO
    barang (
        kode_barang,
        nama_barang,
        jenis_barang
    )
VALUES ('BRG_01', 'Meja', 'Furniture'),
    (
        'BRG_02',
        'Kuris',
        'Furniture'
    ),
    (
        'BRG_03',
        'Meja Kecil',
        'Furniture'
    ),
    ('BRG_04', 'Bolpoin', 'ATK'),
    ('BRG_05', 'HVS A4', 'ATK'),
    ('BRG_06', 'Paper Clip', 'ATK'),
    (
        'BRG_07',
        'Router',
        'Jaringan'
    ),
    ('BRG_08', 'LAN', 'Jaringan'),
    ('BRG_09', 'RJ45', 'Jaringan');
/* 2025-05-11 20:20:38 [5 ms] */
INSERT INTO
    detail_barang (
        jenis_barang,
        kode_barang,
        qty_barang,
        tgl_input_barang,
        desc_barang
    )
VALUES (
        'Furniture',
        'BRG_01',
        40,
        '2023-10-01',
        'Meja Gedung 1'
    ),
    (
        'Furniture',
        'BRG_02',
        80,
        '2023-10-02',
        'Kursi Gedung 1'
    ),
    (
        'Furniture',
        'BRG_03',
        12,
        '2023-10-03',
        'Meja Ruangan'
    ),
    (
        'ATK',
        'BRG_04',
        200,
        '2023-10-04',
        'Alat Tulis Gedung 1'
    ),
    (
        'ATK',
        'BRG_05',
        14,
        '2023-10-05',
        'Alat Tulis Gedung 1'
    ),
    (
        'ATK',
        'BRG_06',
        1000,
        '2023-10-06',
        'Alat Tulis Gedung 1'
    ),
    (
        'Jaringan',
        'BRG_07',
        1,
        '2023-10-07',
        'Alat Jaringan Gedung 1'
    ),
    (
        'Jaringan',
        'BRG_08',
        2,
        '2023-10-08',
        'Alat Jaringan Gedung 1'
    ),
    (
        'Jaringan',
        'BRG_09',
        10,
        '2023-10-09',
        'Alat Jaringan Gedung 1'
    );
/* 2025-05-11 20:21:13 [7 ms] */
SELECT * FROM jenis_barang LIMIT 100;
/* 2025-05-11 20:21:21 [5 ms] */
SELECT * FROM barang LIMIT 100;
/* 2025-05-11 20:21:24 [3 ms] */
SELECT * FROM detail_barang LIMIT 100;
/* 2025-05-11 20:22:23 [18 ms] */
drop Table detail_barang;
/* 2025-05-11 20:22:32 [34 ms] */
CREATE TABLE detail_barang (
    jenis_barang VARCHAR(20) NOT NULL,
    kode_barang VARCHAR(10) NOT NULL,
    qty_barang INT NOT NULL,
    tgl_input_barang DATE NOT NULL,
    desc_barang VARCHAR(100),
    FOREIGN KEY (kode_barang) REFERENCES barang (kode_barang),
    FOREIGN KEY (jenis_barang) REFERENCES jenis_barang (jenis_barang)
);
/* 2025-05-11 20:22:33 [16 ms] */
INSERT INTO
    detail_barang (
        jenis_barang,
        kode_barang,
        qty_barang,
        tgl_input_barang,
        desc_barang
    )
VALUES (
        'Furniture',
        'BRG_01',
        40,
        '2023-10-01',
        'Meja Gedung 1'
    ),
    (
        'Furniture',
        'BRG_02',
        80,
        '2023-10-02',
        'Kursi Gedung 1'
    ),
    (
        'Furniture',
        'BRG_03',
        12,
        '2023-10-03',
        'Meja Ruangan'
    ),
    (
        'ATK',
        'BRG_04',
        200,
        '2023-10-04',
        'Alat Tulis Gedung 1'
    ),
    (
        'ATK',
        'BRG_05',
        14,
        '2023-10-05',
        'Alat Tulis Gedung 1'
    ),
    (
        'ATK',
        'BRG_06',
        1000,
        '2023-10-06',
        'Alat Tulis Gedung 1'
    ),
    (
        'Jaringan',
        'BRG_07',
        1,
        '2023-10-07',
        'Alat Jaringan Gedung 1'
    ),
    (
        'Jaringan',
        'BRG_08',
        2,
        '2023-10-08',
        'Alat Jaringan Gedung 1'
    ),
    (
        'Jaringan',
        'BRG_09',
        10,
        '2023-10-09',
        'Alat Jaringan Gedung 1'
    );
/* 2025-05-11 20:22:34 [4 ms] */
SELECT * FROM detail_barang LIMIT 100;
/* 2025-05-11 20:25:46 [9 ms] */
SELECT db.kode_barang, b.nama_barang, db.jenis_barang, db.qty_barang, db.tgl_input_barang, db.desc_barang
FROM
    detail_barang db
    JOIN barang b ON db.kode_barang = b.kode_barang
    JOIN jenis_barang jb ON db.jenis_barang = jb.jenis_barang
LIMIT 100;
/* 2025-05-11 20:27:48 [18 ms] */
CREATE DATABASE peminjaman_buku DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-05-11 20:33:58 [84 ms] */
CREATE TABLE peminjaman (
    kode_pinjam VARCHAR(5) NOT NULL,
    tanggal_pinjam DATE NOT NULL,
    tanggal_kembali DATE NOT NULL,
    NIM INT NOT NULL,
    nama_mhs VARCHAR(20) NOT NULL,
    prodi VARCHAR(10) NOT NULL,
    kode_buku VARCHAR(5) NOT NULL,
    judul_buku VARCHAR(10) NOT NULL,
    penulis VARCHAR(20) NOT NULL
);
/* 2025-05-11 20:36:19 [18 ms] */
DROP Table peminjaman;
/* 2025-05-11 20:48:52 [41 ms] */
CREATE TABLE mahasiswa (
    NIM int PRIMARY KEY NOT NULL,
    nama_mhs VARCHAR(20) NOT NULL,
    prodi VARCHAR(10) NOT NULL
);
/* 2025-05-11 20:49:04 [13 ms] */
INSERT into
    mahasiswa
VALUES (
        20230101,
        'Andi R',
        'Informatika'
    ),
    (
        20230102,
        'Rina Lestari',
        'SI'
    );
/* 2025-05-11 20:49:05 [6 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-11 20:49:13 [19 ms] */
CREATE TABLE buku (
    kode_buku VARCHAR(5) PRIMARY KEY NOT NULL,
    judul_buku VARCHAR(10) NOT NULL,
    penulis VARCHAR(10) NOT NULL
);
/* 2025-05-11 20:49:14 [4 ms] */
INSERT INTO
    buku
VALUES ('BK01', 'Alpro', 'Rudi H'),
    ('BK02', 'Basdat', 'Tono W');
/* 2025-05-11 20:49:16 [2 ms] */
SELECT * FROM buku LIMIT 100;
/* 2025-05-11 20:49:18 [34 ms] */
CREATE TABLE peminjaman (
    kode_peminjaman VARCHAR(5) PRIMARY KEY NOT NULL,
    tgl_pinjam DATE NOT NULL,
    tgl_kembali DATE NOT NULL,
    NIM INT NOT NULL,
    kode_buku VARCHAR(5) NOT NULL,
    Foreign Key (NIM) REFERENCES mahasiswa (NIM),
    Foreign Key (kode_buku) REFERENCES buku (kode_buku)
);
/* 2025-05-11 20:50:03 [9 ms] */
INSERT INTO
    peminjaman
VALUES (
        'P001',
        2025 -03 -01,
        2025 -03 -10,
        20230101,
        'BK01'
    ),
    (
        'P002',
        2025 -03 -03,
        2025 -03 -9,
        20230101,
        'BK02'
    ),
    (
        'P003',
        2025 -03 -02,
        2025 -03 -12,
        20230102,
        'BK01'
    );
/* 2025-05-11 20:50:04 [3 ms] */
SELECT * FROM peminjaman LIMIT 100;
/* 2025-05-11 20:51:20 [25 ms] */
DROP Table peminjaman;
/* 2025-05-11 20:51:22 [54 ms] */
CREATE TABLE peminjaman (
    kode_peminjaman VARCHAR(5) PRIMARY KEY NOT NULL,
    tgl_pinjam DATE NOT NULL,
    tgl_kembali DATE NOT NULL,
    NIM INT NOT NULL,
    kode_buku VARCHAR(5) NOT NULL,
    Foreign Key (NIM) REFERENCES mahasiswa (NIM),
    Foreign Key (kode_buku) REFERENCES buku (kode_buku)
);
/* 2025-05-11 20:51:23 [3 ms] */
INSERT INTO
    peminjaman
VALUES (
        'P001',
        '2025-03-01',
        '2025-03-10',
        20230101,
        'BK01'
    ),
    (
        'P002',
        '2025-03-03',
        '2025-03-9',
        20230101,
        'BK02'
    ),
    (
        'P003',
        '2025-03-02',
        '2025-03-12',
        20230102,
        'BK01'
    );
/* 2025-05-11 20:51:25 [2 ms] */
SELECT * FROM peminjaman LIMIT 100;
/* 2025-05-11 21:02:00 [10 ms] */
SELECT p.kode_peminjaman, m.nama_mhs, m.NIM, m.prodi, b.kode_buku, b.judul_buku, b.penulis, p.tgl_pinjam, p.tgl_kembali
FROM
    peminjaman p
    JOIN mahasiswa m on p.NIM = m.NIM
    JOIN buku b on p.kode_buku = b.kode_buku
LIMIT 100;
/* 2025-05-11 21:06:05 [64 ms] */
ALTER Table mahasiswa MODIFY COLUMN prodi VARCHAR(12);
/* 2025-05-11 21:06:09 [4 ms] */
SELECT p.kode_peminjaman, m.nama_mhs, m.NIM, m.prodi, b.kode_buku, b.judul_buku, b.penulis, p.tgl_pinjam, p.tgl_kembali
FROM
    peminjaman p
    JOIN mahasiswa m on p.NIM = m.NIM
    JOIN buku b on p.kode_buku = b.kode_buku
LIMIT 100;
/* 2025-05-11 21:06:39 [5 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-11 21:07:33 [15 ms] */
DELETE FROM `mahasiswa` WHERE `NIM` = 20230101;
/* 2025-05-11 21:07:59 [19 ms] */
DROP TABLE peminjaman;
/* 2025-05-11 21:08:03 [3 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-11 21:08:09 [16 ms] */
DELETE FROM `mahasiswa` WHERE `NIM` IN (20230101, 20230102);
/* 2025-05-11 21:08:09 [3 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-11 21:08:14 [3 ms] */
INSERT into
    mahasiswa
VALUES (
        20230101,
        'Andi R',
        'Informatika'
    ),
    (
        20230102,
        'Rina Lestari',
        'SI'
    );
/* 2025-05-11 21:08:16 [1 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-11 21:08:25 [50 ms] */
CREATE TABLE peminjaman (
    kode_peminjaman VARCHAR(5) PRIMARY KEY NOT NULL,
    tgl_pinjam DATE NOT NULL,
    tgl_kembali DATE NOT NULL,
    NIM INT NOT NULL,
    kode_buku VARCHAR(5) NOT NULL,
    Foreign Key (NIM) REFERENCES mahasiswa (NIM),
    Foreign Key (kode_buku) REFERENCES buku (kode_buku)
);
/* 2025-05-11 21:08:26 [5 ms] */
INSERT INTO
    peminjaman
VALUES (
        'P001',
        '2025-03-01',
        '2025-03-10',
        20230101,
        'BK01'
    ),
    (
        'P002',
        '2025-03-03',
        '2025-03-9',
        20230101,
        'BK02'
    ),
    (
        'P003',
        '2025-03-02',
        '2025-03-12',
        20230102,
        'BK01'
    );
/* 2025-05-11 21:08:27 [3 ms] */
SELECT * FROM peminjaman LIMIT 100;
/* 2025-05-11 21:08:44 [5 ms] */
SELECT * FROM `mahasiswa` WHERE NIM = 20230101;
/* 2025-05-11 21:08:53 [3 ms] */
SELECT p.kode_peminjaman, m.nama_mhs, m.NIM, m.prodi, b.kode_buku, b.judul_buku, b.penulis, p.tgl_pinjam, p.tgl_kembali
FROM
    peminjaman p
    JOIN mahasiswa m on p.NIM = m.NIM
    JOIN buku b on p.kode_buku = b.kode_buku
LIMIT 100;
/* 2025-05-11 21:13:03 [12 ms] */
SELECT db.kode_barang, b.nama_barang, db.jenis_barang, db.qty_barang, db.tgl_input_barang, db.desc_barang
FROM
    detail_barang db
    JOIN barang b ON db.kode_barang = b.kode_barang
    JOIN jenis_barang jb ON db.jenis_barang = jb.jenis_barang
LIMIT 100;
/* 2025-05-11 21:13:29 [6 ms] */
SELECT p.kode_peminjaman, m.nama_mhs, m.NIM, m.prodi, b.kode_buku, b.judul_buku, b.penulis, p.tgl_pinjam, p.tgl_kembali
FROM
    peminjaman p
    JOIN mahasiswa m on p.NIM = m.NIM
    JOIN buku b on p.kode_buku = b.kode_buku
LIMIT 100;
/* 2025-05-11 22:35:26 [115 ms] */
SELECT db.kode_barang, b.nama_barang, db.jenis_barang, db.qty_barang, db.tgl_input_barang, db.desc_barang
FROM
    detail_barang db
    JOIN barang b ON db.kode_barang = b.kode_barang
    JOIN jenis_barang jb ON db.jenis_barang = jb.jenis_barang
LIMIT 100;
/* 2025-05-11 22:38:10 [356 ms] */
select * from anggota_perpus LIMIT 100;
/* 2025-05-14 01:41:22 [47 ms] */
CREATE DATABASE library_system DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-05-14 01:42:45 [11 ms] */
USE library_system;
/* 2025-05-14 01:42:46 [61 ms] */
CREATE TABLE tabel_mahasiswa (
    NIM VARCHAR(20) PRIMARY KEY,
    nama_mahasiswa VARCHAR(50)
);
/* 2025-05-14 01:42:47 [20 ms] */
CREATE TABLE tabel_buku (
    kode_buku VARCHAR(10) PRIMARY KEY,
    judul_buku VARCHAR(50),
    penulis VARCHAR(50)
);
/* 2025-05-14 01:42:48 [44 ms] */
CREATE TABLE tabel_peminjaman (
    kode_pinjam VARCHAR(20) PRIMARY KEY,
    tgl_pinjam DATE,
    tgl_kembali DATE,
    NIM VARCHAR(20),
    FOREIGN KEY (NIM) REFERENCES tabel_mahasiswa (NIM)
);
/* 2025-05-14 01:42:50 [48 ms] */
CREATE TABLE tabel_detail_peminjaman (
    kode_pinjam VARCHAR(20),
    kode_buku VARCHAR(20),
    PRIMARY KEY (kode_pinjam, kode_buku),
    FOREIGN KEY (kode_pinjam) REFERENCES tabel_peminjaman (kode_pinjam),
    FOREIGN KEY (kode_buku) REFERENCES tabel_buku (kode_buku)
);
/* 2025-05-14 01:42:51 [27 ms] */
INSERT INTO
    tabel_mahasiswa (NIM, nama_mahasiswa)
VALUES ('20230101', 'Ali'),
    ('20230102', 'Budi'),
    ('20230103', 'Cici');
/* 2025-05-14 01:42:53 [29 ms] */
INSERT INTO
    tabel_buku (
        kode_buku,
        judul_buku,
        penulis
    )
VALUES ('BK01', 'Alpro', 'Rudi H'),
    ('BK02', 'Basdat', 'Tono W');
/* 2025-05-14 01:42:56 [11 ms] */
INSERT INTO
    tabel_peminjaman (
        kode_pinjam,
        tgl_pinjam,
        tgl_kembali,
        NIM
    )
VALUES (
        'P001',
        '2025-03-01',
        '2025-03-10',
        '20230101'
    ),
    (
        'P002',
        '2025-03-02',
        '2025-03-09',
        '20230101'
    ),
    (
        'P003',
        '2025-03-03',
        '2025-03-12',
        '20230102'
    );
/* 2025-05-14 01:42:58 [5 ms] */
INSERT INTO
    tabel_detail_peminjaman (kode_pinjam, kode_buku)
VALUES ('P001', 'BK01'),
    ('P002', 'BK02'),
    ('P003', 'BK01');
/* 2025-05-14 01:43:00 [3 ms] */
SELECT p.kode_pinjam, p.tgl_pinjam, p.tgl_kembali, m.NIM, m.nama_mahasiswa, b.kode_buku, b.judul_buku, b.penulis
FROM
    tabel_detail_peminjaman dp
    JOIN tabel_peminjaman p ON dp.kode_pinjam = p.kode_pinjam
    JOIN tabel_mahasiswa m ON p.NIM = m.NIM
    JOIN tabel_buku b ON dp.kode_buku = b.kode_buku
LIMIT 100;
/* 2025-05-14 14:11:23 [89 ms] */
SELECT * FROM peminjaman LIMIT 100;
/* 2025-05-14 14:11:32 [12 ms] */
SELECT p.kode_peminjaman, m.nama_mhs, m.NIM, m.prodi, b.kode_buku, b.judul_buku, b.penulis, p.tgl_pinjam, p.tgl_kembali
FROM
    peminjaman p
    JOIN mahasiswa m on p.NIM = m.NIM
    JOIN buku b on p.kode_buku = b.kode_buku
LIMIT 100;
/* 2025-05-14 14:12:15 [5 ms] */
SELECT * FROM peminjaman LIMIT 100;
/* 2025-05-14 15:10:19 [184 ms] */
SELECT p.kode_peminjaman, m.nama_mhs, m.NIM, m.prodi, b.kode_buku, b.judul_buku, b.penulis, p.tgl_pinjam, p.tgl_kembali
FROM
    peminjaman p
    JOIN mahasiswa m on p.NIM = m.NIM
    JOIN buku b on p.kode_buku = b.kode_buku
LIMIT 100;
/* 2025-05-14 15:11:35 [5 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-14 15:12:00 [7 ms] */
SELECT * FROM buku LIMIT 100;
/* 2025-05-14 15:12:21 [6 ms] */
SELECT * FROM peminjaman LIMIT 100;
/* 2025-05-15 18:37:41 [56 ms] */
drop DATABASE perpustakaan;
/* 2025-05-15 18:38:03 [20 ms] */
CREATE DATABASE perpustakaan;
/* 2025-05-15 18:38:04 [4 ms] */
USE perpustakaan;
/* 2025-05-15 18:41:27 [34 ms] */
CREATE TABLE buku (
    id_buku INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(100) NOT NULL,
    pengarang VARCHAR(50) NOT NULL,
    tahun_terbit YEAR NOT NULL
);
/* 2025-05-15 18:41:29 [30 ms] */
CREATE Table mahasiswa (
    nim VARCHAR(10) PRIMARY KEY,
    nama VARCHAR(50),
    jurusan VARCHAR(30)
);
/* 2025-05-15 18:43:41 [63 ms] */
CREATE Table peminjaman (
    id_peminjaman INT AUTO_INCREMENT PRIMARY KEY,
    nim VARCHAR(10),
    id_buku INT,
    tanggal_pinjam DATE,
    tanggal_kembali DATE,
    Foreign Key (nim) REFERENCES mahasiswa (nim),
    Foreign Key (id_buku) REFERENCES buku (id_buku)
);
/* 2025-05-15 19:15:09 [38 ms] */
INSERT INTO
    mahasiswa
VALUES (
        'A001',
        'Rina',
        'Teknik Informatika'
    ),
    (
        'A002',
        'Budi',
        'Sistem Informasi'
    );
/* 2025-05-15 19:15:10 [3 ms] */
INSERT INTO
    buku (
        judul,
        pengarang,
        tahun_terbit
    )
VALUES (
        'Database Dasar',
        'Eka Prasetya',
        2020
    ),
    (
        'Belajar SQL',
        'Yuni Setiawan',
        2021
    );
/* 2025-05-15 19:15:42 [4 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-15 19:15:47 [3 ms] */
SELECT * FROM buku LIMIT 100;
/* 2025-05-15 19:15:49 [1 ms] */
SELECT * FROM peminjaman LIMIT 100;
/* 2025-05-15 19:15:51 [2 ms] */
SELECT * FROM buku LIMIT 100;
/* 2025-05-15 19:15:54 [2 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-15 19:16:22 [4 ms] */
INSERT INTO
    peminjaman (
        nim,
        id_buku,
        tanggal_pinjam,
        tanggal_kembali
    )
VALUES (
        'A001',
        1,
        '2025-05-01',
        '2025-05-07'
    ),
    (
        'A002',
        2,
        '2025-05-02',
        '2025-05-10'
    );
/* 2025-05-15 19:16:25 [2 ms] */
SELECT * FROM peminjaman LIMIT 100;
/* 2025-05-15 19:17:01 [24 ms] */
DROP DATABASE perpustakaan;
/* 2025-05-15 19:23:14 [18 ms] */
CREATE DATABASE db_inventaris;
/* 2025-05-15 19:23:43 [3 ms] */
USE db_inventaris;
/* 2025-05-15 19:31:22 [31 ms] */
CREATE Table ruangan (
    kode_ruangan VARCHAR(10) PRIMARY KEY NOT NULL,
    nama_ruangan VARCHAR(50) NOT NULL,
    penanggung_jawab VARCHAR(50) NOT NULL
);
/* 2025-05-15 19:31:23 [27 ms] */
CREATE Table barang (
    kode_barang VARCHAR(10) PRIMARY KEY NOT NULL,
    nama_barang VARCHAR(50) NOT NULL,
    jenis VARCHAR(20) NOT NULL,
    jumlah INT NOT NULL,
    tanggal_masuk DATE,
    kode_ruangan VARCHAR(10),
    Foreign Key (kode_ruangan) REFERENCES ruangan (kode_ruangan)
);
/* 2025-05-15 19:31:25 [6 ms] */
INSERT INTO
    ruangan (
        kode_ruangan,
        nama_ruangan,
        penanggung_jawab
    )
VALUES (
        'R001',
        'Laboratorium Komputer',
        'Budi Santoso'
    ),
    (
        'R002',
        'Perpustakaan',
        'Siti Aminah'
    ),
    (
        'R003',
        'Ruang Guru',
        'Andi Wijaya'
    );
/* 2025-05-15 19:31:26 [3 ms] */
INSERT INTO
    barang (
        kode_barang,
        nama_barang,
        jenis,
        jumlah,
        tanggal_masuk,
        kode_ruangan
    )
VALUES (
        'B001',
        'Laptop Lenovo',
        'Elektronik',
        10,
        '2025-01-15',
        'R001'
    ),
    (
        'B002',
        'Rak Buku',
        'Furnitur',
        5,
        '2025-02-10',
        'R002'
    ),
    (
        'B003',
        'Papan Tulis',
        'Alat Tulis',
        2,
        '2025-03-05',
        'R003'
    );
/* 2025-05-15 19:34:04 [43 ms] */
DROP DATABASE db_inventaris;
/* 2025-05-16 10:40:00 [3 ms] */
USE db_inventaris;
/* 2025-05-16 10:40:02 [6 ms] */
SELECT r.kode_ruangan, r.nama_ruangan, r.penanggung_jawab, b.nama_barang, b.jenis, b.jumlah, b.tanggal_masuk
FROM barang b
    JOIN ruangan r ON r.kode_ruangan = b.kode_ruangan
LIMIT 100;
/* 2025-05-22 14:15:35 [33 ms] */
CREATE DATABASE akademikdb DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-05-22 14:17:34 [7 ms] */
USE akademikdb;
/* 2025-05-22 14:17:35 [19 ms] */
CREATE TABLE Mahasiswa (
    MahasiswaID INT PRIMARY KEY,
    Nama VARCHAR(100),
    Alamat TEXT,
    TanggalLahir DATE,
    NoHP VARCHAR(15)
);
/* 2025-05-22 14:17:38 [8 ms] */
CREATE TABLE Dosen (
    DosenID INT PRIMARY KEY,
    Nama VARCHAR(100),
    Email VARCHAR(100),
    NoHP VARCHAR(15)
);
/* 2025-05-22 14:17:39 [5 ms] */
CREATE TABLE MataKuliah (
    MataKuliahID INT PRIMARY KEY,
    NamaMK VARCHAR(100),
    SKS INT,
    Semester INT
);
/* 2025-05-22 14:17:43 [50 ms] */
CREATE TABLE Kelas (
    KelasID INT PRIMARY KEY,
    MataKuliahID INT,
    DosenID INT,
    TahunAkademik VARCHAR(10),
    FOREIGN KEY (MataKuliahID) REFERENCES MataKuliah (MataKuliahID),
    FOREIGN KEY (DosenID) REFERENCES Dosen (DosenID)
);
/* 2025-05-22 14:17:45 [30 ms] */
CREATE TABLE Nilai (
    NilaiID INT PRIMARY KEY,
    MahasiswaID INT,
    KelasID INT,
    Nilai DECIMAL(5, 2),
    FOREIGN KEY (MahasiswaID) REFERENCES Mahasiswa (MahasiswaID),
    FOREIGN KEY (KelasID) REFERENCES Kelas (KelasID)
);
/* 2025-05-22 14:17:46 [6 ms] */
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
/* 2025-05-22 14:17:48 [4 ms] */
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
/* 2025-05-22 14:17:50 [17 ms] */
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
/* 2025-05-22 14:17:53 [4 ms] */
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
/* 2025-05-22 14:17:55 [4 ms] */
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
/* 2025-05-22 14:24:21 [54 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-22 14:25:08 [7 ms] */
SELECT nama, nilai
FROM mahasiswa
    JOIN nilai ON mahasiswa.MahasiswaID = nilai.MahasiswaID
LIMIT 100;
/* 2025-05-22 14:25:16 [4 ms] */
SELECT matakuliah.NamaMK, dosen.Nama
FROM kelas
    JOIN matakuliah ON kelas.MataKuliahID = matakuliah.MataKuliahID
    JOIN dosen ON kelas.DosenID = dosen.DosenID
LIMIT 100;
/* 2025-05-22 23:52:02 [13 ms] */
SELECT M.Nama, MAX(N.Nilai) AS NilaiTertinggi
FROM Mahasiswa M
    JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
GROUP BY
    M.Nama
ORDER BY NilaiTertinggi DESC
LIMIT 1;
/* 2025-05-23 00:54:20 [74 ms] */
DROP DATABASE akademikdb;
/* 2025-05-25 23:54:56 [23 ms] */
SELECT M.Nama, MAX(N.Nilai) AS NilaiTertinggi
FROM Mahasiswa M
    JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
GROUP BY
    M.Nama
ORDER BY NilaiTertinggi DESC
LIMIT 1;
/* 2025-05-26 10:56:40 [12 ms] */
CREATE DATABASE si_akademik DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-05-26 11:11:15 [25 ms] */
USE si_akademik;
/* 2025-05-26 11:13:04 [87 ms] */
CREATE TABLE mahasiswa (
    MahasiswaID VARCHAR(4) PRIMARY KEY NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    NIM VARCHAR(20) NOT NULL UNIQUE,
    TanggalLahir DATE NOT NULL,
    JenisKelamin VARCHAR(10) NOT NULL,
    Alamat VARCHAR(50) NOT NULL,
    NoTelepon VARCHAR(15) NOT NULL,
    Email VARCHAR(50) NOT NULL UNIQUE,
    ProgramStudi VARCHAR(50) NOT NULL
);
/* 2025-05-26 11:13:06 [39 ms] */
CREATE TABLE dosen (
    DosenID VARCHAR(4) PRIMARY KEY NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    NIDN VARCHAR(20) NOT NULL UNIQUE,
    Email VARCHAR(50) NOT NULL UNIQUE,
    NoTelepon VARCHAR(15) NOT NULL,
    Alamat VARCHAR(50) NOT NULL,
    JabatanAkademik VARCHAR(50) NOT NULL
);
/* 2025-05-26 11:13:08 [36 ms] */
CREATE TABLE mata_kuliah (
    MataKuliahID VARCHAR(4) PRIMARY KEY NOT NULL,
    NamaMataKuliah VARCHAR(50) NOT NULL,
    SKS INT NOT NULL CHECK (SKS > 0),
    Semester INT NOT NULL CHECK (Semester > 0),
    DosenID VARCHAR(4) NOT NULL,
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);
/* 2025-05-26 11:13:09 [45 ms] */
CREATE TABLE kelas (
    KelasID VARCHAR(4) PRIMARY KEY NOT NULL,
    NamaKelas VARCHAR(50) NOT NULL,
    tahun_ajaran VARCHAR(10) NOT NULL,
    Semester INT NOT NULL,
    DosenID VARCHAR(4) NOT NULL,
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);
/* 2025-05-26 11:13:11 [46 ms] */
CREATE TABLE nilai (
    NilaiID VARCHAR(4) PRIMARY KEY NOT NULL,
    MahasiswaID VARCHAR(4) NOT NULL,
    MataKuliahID VARCHAR(4) NOT NULL,
    KelasID VARCHAR(4) NOT NULL,
    Nilai_akhir DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (MahasiswaID) REFERENCES mahasiswa (MahasiswaID),
    FOREIGN KEY (MataKuliahID) REFERENCES mata_kuliah (MataKuliahID),
    FOREIGN KEY (KelasID) REFERENCES kelas (KelasID)
);
/* 2025-05-26 11:18:54 [33 ms] */
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
        '2000-01-01',
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
        '2000-02-02',
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
        '2000-03-03',
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
        '2000-04-04',
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
        '2000-05-05',
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
        '2000-06-06',
        'Perempuan',
        'Jl. Merdeka No. 6',
        '08123456794',
        '1234567895@mhs.univ.ac.id',
        'Teknik Mesin'
    );
/* 2025-05-26 11:20:19 [20 ms] */
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
    );
/* 2025-05-27 14:21:12 [86 ms] */
SELECT
    m.MahasiswaID,
    m.Nama AS NamaMahasiswa,
    d.Nama AS NamaDosen,
    mk.NamaMataKuliah,
    n.Nilai_akhir
FROM
    mahasiswa m
    JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    JOIN mata_kuliah mk ON n.MataKuliahID = mk.MataKuliahID
    JOIN dosen d ON mk.DosenID = d.DosenID
LIMIT 100;
/* 2025-05-27 14:24:19 [69 ms] */
drop DATABASE si_akademik;
/* 2025-05-27 14:24:27 [5 ms] */
CREATE DATABASE si_akademik;
/* 2025-05-27 14:24:29 [2 ms] */
USE si_akademik;
/* 2025-05-27 14:24:30 [29 ms] */
CREATE TABLE mahasiswa (
    MahasiswaID VARCHAR(4) PRIMARY KEY NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    NIM VARCHAR(20) NOT NULL UNIQUE,
    TanggalLahir DATE NOT NULL,
    JenisKelamin VARCHAR(10) NOT NULL,
    Alamat VARCHAR(50) NOT NULL,
    NoTelepon VARCHAR(15) NOT NULL,
    Email VARCHAR(50) NOT NULL UNIQUE,
    ProgramStudi VARCHAR(50) NOT NULL
);
/* 2025-05-27 14:24:31 [32 ms] */
CREATE TABLE dosen (
    DosenID VARCHAR(4) PRIMARY KEY NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    NIDN VARCHAR(20) NOT NULL UNIQUE,
    Email VARCHAR(50) NOT NULL UNIQUE,
    NoTelepon VARCHAR(15) NOT NULL,
    Alamat VARCHAR(50) NOT NULL,
    JabatanAkademik VARCHAR(50) NOT NULL
);
/* 2025-05-27 14:24:32 [40 ms] */
CREATE TABLE mata_kuliah (
    MataKuliahID VARCHAR(4) PRIMARY KEY NOT NULL,
    NamaMataKuliah VARCHAR(50) NOT NULL,
    SKS INT NOT NULL CHECK (SKS > 0),
    Semester INT NOT NULL CHECK (Semester > 0),
    DosenID VARCHAR(4) NOT NULL,
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);
/* 2025-05-27 14:24:33 [33 ms] */
CREATE TABLE kelas (
    KelasID VARCHAR(4) PRIMARY KEY NOT NULL,
    NamaKelas VARCHAR(50) NOT NULL,
    tahun_ajaran VARCHAR(10) NOT NULL,
    Semester INT NOT NULL,
    DosenID VARCHAR(4) NOT NULL,
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);
/* 2025-05-27 14:24:34 [27 ms] */
CREATE TABLE nilai (
    NilaiID VARCHAR(4) PRIMARY KEY NOT NULL,
    MahasiswaID VARCHAR(4) NOT NULL,
    MataKuliahID VARCHAR(4) NOT NULL,
    KelasID VARCHAR(4) NOT NULL,
    Nilai_akhir DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (MahasiswaID) REFERENCES mahasiswa (MahasiswaID),
    FOREIGN KEY (MataKuliahID) REFERENCES mata_kuliah (MataKuliahID),
    FOREIGN KEY (KelasID) REFERENCES kelas (KelasID)
);
/* 2025-05-27 14:24:36 [5 ms] */
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
        '200-06-06',
        'Perempuan',
        'Jl. Merdeka No. 6',
        '08123456794',
        '1234567895@mhs.univ.ac.id',
        'Teknik Mesin'
    );
/* 2025-05-27 14:24:38 [5 ms] */
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
/* 2025-05-27 14:24:39 [5 ms] */
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
        3,
        1,
        'D001'
    ),
    (
        'MK02',
        'Sistem Basis Data',
        3,
        1,
        'D002'
    ),
    (
        'MK03',
        'Jaringan Komputer',
        3,
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
        3,
        3,
        'D005'
    ),
    (
        'MK06',
        'Pengembangan Aplikasi Mobile',
        3,
        3,
        'D006'
    );
/* 2025-05-27 14:24:40 [3 ms] */
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
/* 2025-05-27 14:24:42 [3 ms] */
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
/* 2025-05-27 14:24:45 [3 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-27 14:24:48 [4 ms] */
SELECT * FROM dosen LIMIT 100;
/* 2025-05-27 14:24:50 [2 ms] */
SELECT * FROM mata_kuliah LIMIT 100;
/* 2025-05-27 14:24:53 [2 ms] */
SELECT * FROM kelas LIMIT 100;
/* 2025-05-27 14:24:54 [4 ms] */
SELECT * FROM nilai LIMIT 100;
/* 2025-05-27 14:24:58 [3 ms] */
SELECT *
FROM mahasiswa
WHERE
    ProgramStudi = 'Teknik Informatika'
LIMIT 100;
/* 2025-05-27 14:25:10 [3 ms] */
SELECT * FROM dosen WHERE JabatanAkademik = 'Lektor' LIMIT 100;
/* 2025-05-27 14:25:18 [5 ms] */
SELECT * FROM mata_kuliah WHERE SKS > 2 LIMIT 100;
/* 2025-05-27 14:25:33 [3 ms] */
SELECT ProgramStudi, COUNT(*) AS JumlahMahasiswa
FROM mahasiswa
GROUP BY
    ProgramStudi
LIMIT 100;
/* 2025-05-27 14:25:38 [3 ms] */
SELECT JabatanAkademik, COUNT(*) AS JumlahDosen
FROM dosen
GROUP BY
    JabatanAkademik
LIMIT 100;
/* 2025-05-27 14:27:22 [4 ms] */
SELECT k.Semester, AVG(n.Nilai_akhir) AS RataRataNilai
FROM nilai n
    JOIN kelas k ON n.KelasID = k.KelasID
GROUP BY
    k.Semester
LIMIT 100;
/* 2025-05-27 14:27:35 [3 ms] */
SELECT * FROM mahasiswa ORDER BY TanggalLahir DESC LIMIT 100;
/* 2025-05-27 14:28:03 [3 ms] */
SELECT * FROM dosen ORDER BY Nama ASC LIMIT 100;
/* 2025-05-27 14:28:08 [3 ms] */
SELECT * FROM mata_kuliah ORDER BY SKS DESC LIMIT 100;
/* 2025-05-27 14:28:53 [39 ms] */
drop DATABASE si_akademik;
/* 2025-05-27 14:50:41 [15 ms] */
CREATE DATABASE si_akademik DEFAULT CHARACTER SET = 'utf8mb4';
/* 2025-05-27 14:50:45 [5 ms] */
USE si_akademik;
/* 2025-05-27 14:50:50 [46 ms] */
CREATE TABLE mahasiswa (
    MahasiswaID VARCHAR(4) PRIMARY KEY NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    NIM VARCHAR(20) NOT NULL UNIQUE,
    TanggalLahir DATE NOT NULL,
    JenisKelamin VARCHAR(10) NOT NULL,
    Alamat VARCHAR(50) NOT NULL,
    NoTelepon VARCHAR(15) NOT NULL,
    Email VARCHAR(50) NOT NULL UNIQUE,
    ProgramStudi VARCHAR(50) NOT NULL
);
/* 2025-05-27 14:50:51 [24 ms] */
CREATE TABLE dosen (
    DosenID VARCHAR(4) PRIMARY KEY NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    NIDN VARCHAR(20) NOT NULL UNIQUE,
    Email VARCHAR(50) NOT NULL UNIQUE,
    NoTelepon VARCHAR(15) NOT NULL,
    Alamat VARCHAR(50) NOT NULL,
    JabatanAkademik VARCHAR(50) NOT NULL
);
/* 2025-05-27 14:50:53 [24 ms] */
CREATE TABLE mata_kuliah (
    MataKuliahID VARCHAR(4) PRIMARY KEY NOT NULL,
    NamaMataKuliah VARCHAR(50) NOT NULL,
    SKS INT NOT NULL CHECK (SKS > 0),
    Semester INT NOT NULL CHECK (Semester > 0),
    DosenID VARCHAR(4) NOT NULL,
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);
/* 2025-05-27 14:50:55 [51 ms] */
CREATE TABLE kelas (
    KelasID VARCHAR(4) PRIMARY KEY NOT NULL,
    NamaKelas VARCHAR(50) NOT NULL,
    tahun_ajaran VARCHAR(10) NOT NULL,
    Semester INT NOT NULL,
    DosenID VARCHAR(4) NOT NULL,
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);
/* 2025-05-27 14:50:56 [36 ms] */
CREATE TABLE nilai (
    NilaiID VARCHAR(4) PRIMARY KEY NOT NULL,
    MahasiswaID VARCHAR(4) NOT NULL,
    MataKuliahID VARCHAR(4) NOT NULL,
    KelasID VARCHAR(4) NOT NULL,
    Nilai_akhir DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (MahasiswaID) REFERENCES mahasiswa (MahasiswaID),
    FOREIGN KEY (MataKuliahID) REFERENCES mata_kuliah (MataKuliahID),
    FOREIGN KEY (KelasID) REFERENCES kelas (KelasID)
);
/* 2025-05-27 14:51:00 [8 ms] */
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
        '200-06-06',
        'Perempuan',
        'Jl. Merdeka No. 6',
        '08123456794',
        '1234567895@mhs.univ.ac.id',
        'Teknik Mesin'
    );
/* 2025-05-27 14:51:03 [11 ms] */
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
/* 2025-05-27 14:51:05 [3 ms] */
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
/* 2025-05-27 14:51:06 [4 ms] */
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
/* 2025-05-27 14:51:08 [5 ms] */
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
/* 2025-05-27 14:51:19 [3 ms] */
SELECT COUNT(*) AS JumlahMahasiswa FROM mahasiswa LIMIT 100;
/* 2025-05-27 14:51:23 [3 ms] */
SELECT AVG(Nilai_akhir) AS RataRataNilai FROM nilai LIMIT 100;
/* 2025-05-27 14:51:25 [3 ms] */
SELECT MAX(Nilai_akhir) AS NilaiTertinggi FROM nilai LIMIT 100;
/* 2025-05-27 14:51:29 [3 ms] */
SELECT MIN(Nilai_akhir) AS NilaiTerendah FROM nilai LIMIT 100;
/* 2025-05-27 14:51:35 [3 ms] */
SELECT SUM(SKS) AS TotalSKS FROM mata_kuliah LIMIT 100;
/* 2025-05-27 14:51:39 [2 ms] */
SELECT MIN(Nilai_akhir) AS NilaiTerendah FROM nilai LIMIT 100;
/* 2025-05-27 14:51:40 [4 ms] */
SELECT SUM(SKS) AS TotalSKS FROM mata_kuliah LIMIT 100;
/* 2025-05-27 14:51:41 [3 ms] */
SELECT MIN(Nilai_akhir) AS NilaiTerendah FROM nilai LIMIT 100;
/* 2025-05-27 14:51:42 [2 ms] */
SELECT MAX(Nilai_akhir) AS NilaiTertinggi FROM nilai LIMIT 100;
/* 2025-05-27 14:51:43 [3 ms] */
SELECT AVG(Nilai_akhir) AS RataRataNilai FROM nilai LIMIT 100;
/* 2025-05-27 14:51:44 [2 ms] */
SELECT COUNT(*) AS JumlahMahasiswa FROM mahasiswa LIMIT 100;
/* 2025-05-27 14:53:42 [6 ms] */
SELECT m.MahasiswaID, m.nama, MAX(Nilai_akhir) AS NilaiTertinggi
FROM nilai
    JOIN mahasiswa m ON nilai.MahasiswaID = m.MahasiswaID
LIMIT 100;
/* 2025-05-27 14:53:48 [3 ms] */
SELECT
    -- m.MahasiswaID,
    m.nama, MAX(Nilai_akhir) AS NilaiTertinggi
FROM nilai
    JOIN mahasiswa m ON nilai.MahasiswaID = m.MahasiswaID
LIMIT 100;
/* 2025-05-27 14:54:21 [3 ms] */
SELECT * FROM mata_kuliah ORDER BY SKS DESC LIMIT 100;
/* 2025-05-27 14:54:34 [4 ms] */
SELECT * FROM dosen ORDER BY Nama ASC LIMIT 100;
/* 2025-05-27 14:54:43 [3 ms] */
SELECT * FROM mahasiswa ORDER BY TanggalLahir DESC LIMIT 100;
/* 2025-05-27 14:55:34 [4 ms] */
SELECT * FROM mata_kuliah WHERE SKS > 2 LIMIT 100;
/* 2025-05-27 15:04:57 [6 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-27 15:04:59 [4 ms] */
SELECT * FROM dosen LIMIT 100;
/* 2025-05-27 15:05:01 [4 ms] */
SELECT * FROM mata_kuliah LIMIT 100;
/* 2025-05-27 16:09:27 [25 ms] */
INSERT INTO
    mahasiswa
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
/* 2025-05-27 16:09:48 [6 ms] */
DELETE FROM mahasiswa WHERE MahasiswaID = 'M007';
/* 2025-05-27 16:11:08 [14 ms] */
SELECT m.nama, MAX(n.Nilai_akhir) AS NilaiTertinggi
FROM nilai n
    JOIN mahasiswa m ON n.MahasiswaID = m.MahasiswaID
LIMIT 100;
/* 2025-05-27 16:14:26 [4 ms] */
SELECT * FROM mahasiswa ORDER BY TanggalLahir DESC LIMIT 100;
/* 2025-05-27 16:14:29 [13 ms] */
SELECT ProgramStudi, COUNT(*) AS JumlahMahasiswa
FROM mahasiswa
GROUP BY
    ProgramStudi
LIMIT 100;
/* 2025-05-27 16:14:34 [5 ms] */
SELECT k.Semester, AVG(n.Nilai_akhir) AS RataRataNilai
FROM nilai n
    JOIN kelas k ON n.KelasID = k.KelasID
GROUP BY
    k.Semester
LIMIT 100;
/* 2025-05-28 14:34:13 [78 ms] */
SELECT M.Nama, N.Nilai
FROM Mahasiswa M
    LEFT JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:34:17 [4 ms] */
SELECT M.Nama, N.Nilai
FROM Mahasiswa M
    RIGHT JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:36:34 [7 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-28 14:36:42 [4 ms] */
SELECT * FROM nilai LIMIT 100;
/* 2025-05-28 14:37:23 [8 ms] */
SELECT *
FROM Mahasiswa M
    LEFT JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:37:47 [7 ms] */
SELECT M.Nama, N.Nilai
FROM Mahasiswa M
    LEFT JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:42:25 [5 ms] */
SELECT M.Nama, N.Nilai
FROM Mahasiswa M
    RIGHT JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:42:34 [19 ms] */
SELECT k.KelasID, mk.NamaMK, n.Nilai
FROM
    Kelas k
    LEFT JOIN MataKuliah mk ON k.MataKuliahID = mk.MataKuliahID
    LEFT JOIN Nilai n ON k.KelasID = n.KelasID
LIMIT 100;
/* 2025-05-28 14:42:39 [5 ms] */
SELECT m.Nama, n.Nilai
FROM Mahasiswa m
    RIGHT JOIN Nilai n ON m.MahasiswaID = n.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:42:41 [6 ms] */
SELECT k.KelasID, mk.NamaMK, n.Nilai
FROM
    Kelas k
    LEFT JOIN MataKuliah mk ON k.MataKuliahID = mk.MataKuliahID
    LEFT JOIN Nilai n ON k.KelasID = n.KelasID
LIMIT 100;
/* 2025-05-28 14:42:46 [5 ms] */
SELECT m.Nama, n.Nilai
FROM Mahasiswa m
    RIGHT JOIN Nilai n ON m.MahasiswaID = n.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:42:51 [6 ms] */
SELECT k.KelasID, mk.NamaMK, n.Nilai
FROM
    Kelas k
    LEFT JOIN MataKuliah mk ON k.MataKuliahID = mk.MataKuliahID
    LEFT JOIN Nilai n ON k.KelasID = n.KelasID
LIMIT 100;
/* 2025-05-28 14:43:09 [4 ms] */
SELECT mk.NamaMK, n.Nilai
FROM
    MataKuliah mk
    JOIN Kelas k ON mk.MataKuliahID = k.MataKuliahID
    RIGHT JOIN Nilai n ON k.KelasID = n.KelasID
LIMIT 100;
/* 2025-05-28 14:46:03 [40 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID
LIMIT 100;
/* 2025-05-28 14:47:10 [34 ms] */
SELECT d.DosenID, d.Nama, k.NamaKelas, mk.NamaMataKuliah
FROM
    dosen d
    LEFT JOIN mata_kuliah mk ON d.DosenID = mk.DosenID
    LEFT JOIN kelas k ON mk.DosenID = k.DosenID
LIMIT 100;
/* 2025-05-28 14:47:12 [7 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID
LIMIT 100;
/* 2025-05-28 14:47:27 [9 ms] */
SELECT M.Nama, N.Nilai
FROM Mahasiswa M
    LEFT JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:47:30 [6 ms] */
SELECT k.KelasID, mk.NamaMK, n.Nilai
FROM
    Kelas k
    LEFT JOIN MataKuliah mk ON k.MataKuliahID = mk.MataKuliahID
    LEFT JOIN Nilai n ON k.KelasID = n.KelasID
LIMIT 100;
/* 2025-05-28 14:47:32 [18 ms] */
SELECT d.Nama, k.KelasID
FROM Dosen d
    LEFT JOIN Kelas k ON d.DosenID = k.DosenID
LIMIT 100;
/* 2025-05-28 14:47:35 [3 ms] */
SELECT M.Nama, N.Nilai
FROM Mahasiswa M
    RIGHT JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:47:37 [6 ms] */
SELECT k.KelasID, n.Nilai
FROM Kelas k
    RIGHT JOIN Nilai n ON k.KelasID = n.KelasID
LIMIT 100;
/* 2025-05-28 14:47:38 [5 ms] */
SELECT mk.NamaMK, n.Nilai
FROM
    MataKuliah mk
    JOIN Kelas k ON mk.MataKuliahID = k.MataKuliahID
    RIGHT JOIN Nilai n ON k.KelasID = n.KelasID
LIMIT 100;
/* 2025-05-28 14:47:43 [5 ms] */
SELECT m.Nama, n.Nilai
FROM Mahasiswa m
    RIGHT JOIN Nilai n ON m.MahasiswaID = n.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:47:45 [5 ms] */
SELECT M.Nama, N.Nilai
FROM Mahasiswa M
    RIGHT JOIN Nilai N ON M.MahasiswaID = N.MahasiswaID
LIMIT 100;
/* 2025-05-28 14:56:00 [54 ms] */
SELECT mk.NamaMK, MIN(n.Nilai) AS NilaiTerendah
FROM
    MataKuliah mk
    JOIN Kelas k ON mk.MataKuliahID = k.MataKuliahID
    JOIN Nilai n ON k.KelasID = n.KelasID
GROUP BY
    mk.NamaMK
LIMIT 100;
/* 2025-05-30 14:13:14 [75 ms] */
SELECT m.nama, MAX(n.Nilai_akhir) AS NilaiTertinggi
FROM nilai n
    JOIN mahasiswa m ON n.MahasiswaID = m.MahasiswaID
LIMIT 100;
/* 2025-05-30 14:13:52 [3 ms] */
SELECT m.nama, MAX(n.Nilai_akhir) AS Nilai_Tertinggi
FROM nilai n
    JOIN mahasiswa m ON n.MahasiswaID = m.MahasiswaID
LIMIT 100;
/* 2025-05-30 15:28:51 [14 ms] */
SELECT *
FROM mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
LIMIT 100;
/* 2025-05-30 15:29:28 [10 ms] */
SELECT *
FROM mahasiswa m
    LEFT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
LIMIT 100;
/* 2025-05-30 15:29:50 [3 ms] */
SELECT *
FROM mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
LIMIT 100;
/* 2025-05-30 15:29:52 [3 ms] */
SELECT *
FROM mahasiswa m
    LEFT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
LIMIT 100;
/* 2025-05-30 15:29:54 [3 ms] */
SELECT *
FROM mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
LIMIT 100;
/* 2025-05-30 15:30:44 [3 ms] */
SELECT *
FROM nilai n
    RIGHT JOIN mahasiswa m ON m.MahasiswaID = n.MahasiswaID
LIMIT 100;
/* 2025-05-30 15:33:30 [37 ms] */
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
/* 2025-05-30 15:33:41 [18 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID
LIMIT 100;
/* 2025-05-30 15:33:54 [6 ms] */
SELECT d.DosenID, d.Nama, k.NamaKelas, mk.NamaMataKuliah
FROM
    dosen d
    LEFT JOIN mata_kuliah mk ON d.DosenID = mk.DosenID
    LEFT JOIN kelas k ON mk.DosenID = k.DosenID
LIMIT 100;
/* 2025-05-30 15:34:01 [5 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-30 15:34:12 [4 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, mk.NamaMataKuliah
FROM
    mahasiswa m
    JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    JOIN mata_kuliah mk ON n.MataKuliahID = mk.MataKuliahID
LIMIT 100;
/* 2025-05-30 15:34:29 [3 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID
LIMIT 100;
/* 2025-05-30 15:36:30 [77 ms] */
drop DATABASE si_akademik;
/* 2025-05-30 15:36:41 [3 ms] */
CREATE DATABASE si_akademik;
/* 2025-05-30 15:36:43 [2 ms] */
USE si_akademik;
/* 2025-05-30 15:36:45 [45 ms] */
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
/* 2025-05-30 15:36:46 [36 ms] */
CREATE TABLE dosen (
    DosenID VARCHAR(4) PRIMARY KEY,
    Nama VARCHAR(50),
    NIDN VARCHAR(20) UNIQUE,
    Email VARCHAR(50) UNIQUE,
    NoTelepon VARCHAR(15),
    Alamat VARCHAR(50),
    JabatanAkademik VARCHAR(50)
);
/* 2025-05-30 15:36:48 [8 ms] */
CREATE TABLE mata_kuliah (
    MataKuliahID VARCHAR(4) PRIMARY KEY,
    NamaMataKuliah VARCHAR(50),
    SKS INT CHECK (SKS > 0),
    Semester INT CHECK (Semester > 0)
);
/* 2025-05-30 15:36:49 [37 ms] */
CREATE TABLE kelas (
    KelasID VARCHAR(4) PRIMARY KEY,
    NamaKelas VARCHAR(50),
    tahun_ajaran VARCHAR(10),
    Semester INT,
    DosenID VARCHAR(4),
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);
/* 2025-05-30 15:36:52 [28 ms] */
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
/* 2025-05-30 15:36:54 [14 ms] */
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
/* 2025-05-30 15:36:55 [14 ms] */
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
/* 2025-05-30 15:37:22 [3 ms] */
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
/* 2025-05-30 15:38:29 [30 ms] */
drop DATABASE si_akademik;
/* 2025-05-30 15:38:33 [4 ms] */
CREATE DATABASE si_akademik;
/* 2025-05-30 15:38:34 [2 ms] */
USE si_akademik;
/* 2025-05-30 15:38:35 [30 ms] */
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
/* 2025-05-30 15:38:36 [19 ms] */
CREATE TABLE dosen (
    DosenID VARCHAR(4) PRIMARY KEY,
    Nama VARCHAR(50),
    NIDN VARCHAR(20) UNIQUE,
    Email VARCHAR(50) UNIQUE,
    NoTelepon VARCHAR(15),
    Alamat VARCHAR(50),
    JabatanAkademik VARCHAR(50)
);
/* 2025-05-30 15:38:38 [26 ms] */
CREATE TABLE mata_kuliah (
    MataKuliahID VARCHAR(4) PRIMARY KEY,
    NamaMataKuliah VARCHAR(50),
    SKS INT,
    Semester INT,
    DosenID VARCHAR(4),
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);
/* 2025-05-30 15:38:39 [28 ms] */
CREATE TABLE kelas (
    KelasID VARCHAR(4) PRIMARY KEY,
    NamaKelas VARCHAR(50),
    tahun_ajaran VARCHAR(10),
    Semester INT,
    DosenID VARCHAR(4),
    FOREIGN KEY (DosenID) REFERENCES dosen (DosenID)
);
/* 2025-05-30 15:38:41 [23 ms] */
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
/* 2025-05-30 15:38:42 [14 ms] */
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
/* 2025-05-30 15:38:44 [13 ms] */
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
/* 2025-05-30 15:38:46 [3 ms] */
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
/* 2025-05-30 15:38:48 [3 ms] */
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
/* 2025-05-30 15:38:50 [14 ms] */
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
/* 2025-05-30 15:38:56 [14 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-30 15:39:04 [3 ms] */
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
/* 2025-05-30 15:39:06 [1 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-30 15:39:12 [4 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID
LIMIT 100;
/* 2025-05-30 15:40:11 [3 ms] */
SELECT d.DosenID, d.Nama,
    -- k.NamaKelas, 
    mk.NamaMataKuliah
FROM dosen d
    LEFT JOIN mata_kuliah mk ON d.DosenID = mk.DosenID
LIMIT 100;
/* 2025-05-30 15:40:36 [4 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir
    -- k.NamaKelas
FROM mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
LIMIT 100;
/* 2025-05-30 15:41:31 [4 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID
LIMIT 100;
/* 2025-05-30 15:42:04 [3 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-30 15:42:30 [3 ms] */
SELECT *
FROM mahasiswa
WHERE
    ProgramStudi = 'Teknik Informatika'
LIMIT 100;
/* 2025-05-30 15:42:33 [2 ms] */
SELECT * FROM dosen WHERE JabatanAkademik = 'Lektor' LIMIT 100;
/* 2025-05-30 15:42:35 [3 ms] */
SELECT * FROM mata_kuliah WHERE SKS > 2 LIMIT 100;
/* 2025-05-30 15:43:02 [3 ms] */
SELECT d.DosenID, d.Nama, k.NamaKelas, mk.NamaMataKuliah
FROM
    dosen d
    LEFT JOIN mata_kuliah mk ON d.DosenID = mk.DosenID
    LEFT JOIN kelas k ON mk.DosenID = k.DosenID
LIMIT 100;
/* 2025-05-30 15:43:06 [3 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, mk.NamaMataKuliah
FROM
    mahasiswa m
    JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    JOIN mata_kuliah mk ON n.MataKuliahID = mk.MataKuliahID
LIMIT 100;
/* 2025-05-30 15:43:24 [3 ms] */
SELECT d.DosenID, d.Nama, k.NamaKelas, mk.NamaMataKuliah
FROM
    dosen d
    LEFT JOIN mata_kuliah mk ON d.DosenID = mk.DosenID
    LEFT JOIN kelas k ON mk.DosenID = k.DosenID
LIMIT 100;
/* 2025-05-30 15:43:28 [3 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID
LIMIT 100;
/* 2025-05-30 15:51:30 [21 ms] */
INSERT INTO nilai (NilaiID, MahasiswaID) VALUES ('N008', 'M007');
/* 2025-05-30 15:51:33 [5 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID
LIMIT 100;
/* 2025-05-30 15:51:45 [4 ms] */
SELECT * FROM nilai LIMIT 100;
/* 2025-05-30 15:51:53 [2 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID
LIMIT 100;
/* 2025-05-30 15:55:02 [13 ms] */
UPDATE nilai SET KelasID = 'K001' WHERE NilaiID = 'N008';
/* 2025-05-30 15:55:04 [2 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, k.NamaKelas
FROM
    mahasiswa m
    RIGHT JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    RIGHT JOIN kelas k ON n.KelasID = k.KelasID
LIMIT 100;
/* 2025-05-30 15:56:19 [36 ms] */
drop DATABASE si_akademik;
/* 2025-05-30 21:31:33 [13 ms] */
SELECT m.MahasiswaID, m.Nama, n.Nilai_akhir, mk.NamaMataKuliah
FROM
    mahasiswa m
    INNER JOIN nilai n ON m.MahasiswaID = n.MahasiswaID
    INNER JOIN mata_kuliah mk ON n.MataKuliahID = mk.MataKuliahID
LIMIT 100;
/* 2025-05-30 21:48:59 [16 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-30 21:49:40 [2 ms] */
UPDATE mahasiswa
SET
    Nama = 'Gina Pratiwi Sari',
    Alamat = 'Jl. Merdeka No. 7A',
    NoTelepon = '08123456796',
    Email = '1234567896@mhs.univ.ac.id',
    ProgramStudi = 'Teknik Sipil'
WHERE
    MahasiswaID = 'M007';
/* 2025-05-30 21:50:18 [5 ms] */
SELECT * FROM mahasiswa LIMIT 100;
/* 2025-05-30 21:51:40 [6 ms] */
DELETE FROM nilai WHERE MahasiswaID = 'M007';
/* 2025-05-30 21:51:46 [3 ms] */
DELETE FROM mahasiswa WHERE MahasiswaID = 'M007';
/* 2025-05-30 21:51:48 [3 ms] */
SELECT * FROM mahasiswa LIMIT 100;