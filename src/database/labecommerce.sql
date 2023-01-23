CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

SELECT * FROM users;

INSERT INTO users(id, email, password)
VALUES("a001", "lay@gmail.com", "2207"),
("a002", "lucas@gmail.com", "1607"),
("a003", "labenu@gmail.com", "2022");


CREATE TABLE products (
    id  TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    category TEXT NOT NULL
);

SELECT * FROM products;

INSERT INTO products(id, name, price, category)

VALUES("1", "toalha", 20, "banheiro"),
("2", "escova", 10, "banheiro"),
("3", "shampoo", 15, "banheiro"),
("4", "condicionador", 13, "banheiro"),
("5", "pia", 120, "banheiro");


SELECT * FROM products 
WHERE name = "escova";

INSERT INTO users(id, email, password)
VALUES("a004", "labecommerce@gmail.com", "2023");


INSERT INTO products(id, name, price, category)
VALUES("6", "piso", 420, "banheiro");

SELECT * FROM products
WHERE id = "6";


DELETE FROM users
WHERE id = "004";


DELETE FROM products
WHERE id = "6";

UPDATE users
SET email = "oigente@gmail.com" WHERE id = "a003";


UPDATE products
SET name = "sabonete" WHERE id = "5";

DELETE FROM products
WHERE id = "3";

INSERT INTO products(id, name, price, category)
VALUES("3", "esponja", 5, "banheiro");


SELECT * FROM users
ORDER BY email ASC;

SELECT * FROM products
ORDER BY price ASC
LIMIT 20;


SELECT * FROM products
WHERE price >= "13" AND price <= "120"
ORDER BY price ASC;