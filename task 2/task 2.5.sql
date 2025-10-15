SELECT authors.name, quantity FROM orders
INNER JOIN books ON orders.book_id = books.book_id
INNER JOIN authors ON books.author_id = authors.author_id
WHERE quantity > 10