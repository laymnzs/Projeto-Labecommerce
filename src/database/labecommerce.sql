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