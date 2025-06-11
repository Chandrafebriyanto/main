TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER after_insert_transaksi\nAFTER INSERT ON Transaksi\nFOR EACH ROW\nBEGIN\n    -- Cek apakah investor sudah memiliki saham di tabel Portofolio\n    IF EXISTS (SELECT * FROM Portofolio WHERE investor_id = NEW.investor_id AND saham_id = NEW.saham_id) THEN\n        -- Jika ada, update jumlah lot\n        UPDATE Portofolio\n        SET jumlah_lot = jumlah_lot + NEW.jumlah_lot\n        WHERE investor_id = NEW.investor_id AND saham_id = NEW.saham_id;\n    ELSE\n        -- Jika tidak ada, insert data baru\n        INSERT INTO Portofolio (investor_id, saham_id, jumlah_lot, total_investasi)\n        VALUES (NEW.investor_id, NEW.saham_id, NEW.jumlah_lot, 0);\n    END IF;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER after_update_portofolio\nAFTER INSERT ON Transaksi\nFOR EACH ROW\nBEGIN\n    -- Update total investasi berdasarkan jumlah lot terbaru\n    UPDATE Portofolio p\n    JOIN Saham s ON p.saham_id = s.saham_id\n    SET p.total_investasi = p.jumlah_lot * s.harga_per_lot\n    WHERE p.investor_id = NEW.investor_id AND p.saham_id = NEW.saham_id;\nEND'
sql_modes=1098907656 1098907656
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1742148446879861 1742148451134242
