CREATE TABLE Authors (
	author_id INT UNIQUE NOT NULL PRIMARY KEY,
	name VARCHAR(100),
	birthdate DATE
);

CREATE TABLE Books (
	book_id INT UNIQUE NOT NULL PRIMARY KEY,
	title VARCHAR(150),
	author_id INT REFERENCES Authors(author_id),
	price DECIMAL(10,2),
	publication_date DATE
);

CREATE TABLE Orders (
	order_id INT UNIQUE NOT NULL PRIMARY KEY,
	book_id INT REFERENCES Books(book_id),
	quantity INT,
	order_date DATE
);