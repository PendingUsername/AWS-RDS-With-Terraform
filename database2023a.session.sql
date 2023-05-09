CREATE TABLE customers (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO customers (name, email) VALUES ('John Smith', 'john.smith@example.com');

SELECT * FROM customers;

UPDATE customers SET name='Jane Doe' WHERE id=1;

DELETE FROM customers WHERE id=1;

