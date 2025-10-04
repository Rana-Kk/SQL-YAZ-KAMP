DROP TABLE IF EXISTS books;

CREATE TABLE books(
book_id INT PRIMARY KEY IDENTITY,
title NVARCHAR(255) NOT NULL, 
author NVARCHAR(255) NOT NULL,
genre nvarchar(50),
price DECIMAL(10,2) CHECK (price>0),
stock INT CHECK(stock>=0), 
published_year INT CHECK (published_year BETWEEN 1900 AND 2025),
added_at DATE
);

INSERT INTO books(title,author,genre,price,stock,published_year,added_at)
VALUES('abasýyanýk','sait faik','roman',255,125,2000, GETDATE()),
('kayýp zamanýn izinde','m.proust', 'roman',129.90,25,1913,'2025-08-20')


-- SORGU1:
select title,price,author from books ORDER BY price asc

--SORGU 2:
SELECT*FROM books WHERE genre= N'roman' ORDER BY title asc

--SORGU 3:
SELECT*FROM books where added_at>=DATEADD(DAY,-10,'2025-9-10');