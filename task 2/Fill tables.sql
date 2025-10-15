INSERT INTO Authors (name, birthdate)
	VALUES ('Leo Tolstoy', '1828-08-28'),
		   ('John Tolkien', '1892-01-03')
		   ('Stephen King', '1947-09-21'),
		   ('George Orwell', '1903-06-25'),
		   ('Jack London', '1876-01-12');

INSERT INTO Books (title, price, publication_date, author_id)
	VALUES ('War and peace tome 1', 100, '1996-02-24', (SELECT author_id FROM authors WHERE name = 'Leo Tolstoy')),
		   ('Hobbit', 100, '2001-08-13', (SELECT author_id FROM authors WHERE name = 'John Tolkien')),
		   ('If It Bleeds', 70.22, '2020-04-21', (SELECT author_id FROM authors WHERE name = 'Stephen King')),
		   ('1984', 75.99, '2022-07-01', (SELECT author_id FROM authors WHERE name = 'George Orwell')),
		   ('The Iron Heel', 85.04, '2005-04-07', (SELECT author_id FROM authors WHERE name = 'Jack London'));
		   
INSERT INTO Orders (quantity, order_date, book_id)
	VALUES (5, '2024-03-03', (SELECT book_id FROM books WHERE title = 'War and peace tome 1')),
		   (8, '2024-06-07', (SELECT book_id FROM books WHERE title = 'Hobbit')),
		   (12, '2025-04-08', (SELECT book_id FROM books WHERE title = 'If It Bleeds')),
		   (25, '2025-03-14', (SELECT book_id FROM books WHERE title = '1984')),
		   (16, '2025-01-28', (SELECT book_id FROM books WHERE title = 'The Iron Heel'));

