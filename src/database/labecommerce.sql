-- Active: 1674487067520@@127.0.0.1@3306
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






CREATE TABLE users( -- criar tabela
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

INSERT INTO users(id, email, password)
VALUES ("001", "estrela@gmail.com", "estrela1"),
("002", "sol@gmail.com", "solemar"),
("003", "nuvenzinha@gmail.com", "nuvem2013"),
("004", "ceu@gmail.com", "ceuazul1");

SELECT * FROM users;

--excluir tabela
DROP TABLE users;

--retorna os usuários cadastrados
SELECT ('users');

--mocke um termo de busca (email)
SELECT * FROM users
WHERE email;

--mocke uma id
SELECT * FROM users
WHERE id = "a004";

--delete a linha baseada no valor mockado
DROP TABLE users
id = 3;




CREATE TABLE products( -- criar tabela de produtos
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL ,
    category TEXT NOT NULL
);

--excluir tabela
DROP TABLE products;

INSERT INTO products(id, name, price, category)
VALUES ("a001", "livro", 50, "quarto"),
("a002", "ventilador", 100, "quarto"),
("a003", "guarda-roupa", 1500, "quarto"),
("a004", "espelho", 50, "quarto"),
("a005", "estante", 500, "quarto");

SELECT * FROM products;

--retorna os produtos cadastrados
SELECT ('products');

--mocke um termo de busca (category)
SELECT * FROM products
WHERE category;



--mocke um termo de busca (category)
SELECT * FROM products
WHERE category;

--mocke um termo de busca, por exemplo "monitor"
--retorna o resultado baseado no termo de busca
SELECT * FROM products
WHERE name = "estante";

--mocke uma products
SELECT * FROM products
WHERE id = "a003";

--mocke um novo usuário
--insere o item mockado na tabela users
INSERT INTO products(id, name, price, category)
VALUES
("a006", "cortina", 80, "quarto");

--mocke uma id
--delete a linha baseada no valor mockado
DELETE FROM products
WHERE id = "a002";

--mocke valores para editar um user
--edite a linha baseada nos valores mockados
UPDATE products 
SET price = 49
WHERE id = "a001";

SELECT * FROM products;

--retorna o resultado ordenado pela coluna email em ordem crescente
SELECT * FROM users ORDER by email ASC;

--retorna o resultado ordenado pela coluna price em ordem crescente
--limite o resultado em 20 iniciando pelo primeiro item
SELECT * FROM products ORDER by price ASC LIMIT 20;

--mocke um intervalo de preços, por exemplo entre 100.00 e 300.00
--retorna os produtos com preços dentro do intervalo mockado em ordem crescente
SELECT * FROM products 
WHERE price >="50" AND price <="500" 
ORDER by price ASC ;

DROP TABLE purchases;

SELECT * FROM purchases;

CREATE TABLE purchases(
 id TEXT PRIMARY KEY UNIQUE NOT NULL,
    total_price REAL UNIQUE NOT NULL ,
    paid INTEGER NOT NULL,
    delivered_at TEXT,
    buyer_id TEXT NOT NULL,
     FOREIGN KEY (buyer_id) REFERENCES users (id)
);

INSERT INTO purchases(id, total_price, paid, delivered_at, buyer_id)
VALUES ("06", 50, 40, "", "001"),
("07", 120, 120, "", "002"),
("08", 400, 150,  "", "003"),
("09", 30, 30, "", "001");

UPDATE purchases
SET delivered_at = "DATATIME 18/01/2023"
WHERE id="06";

SELECT * FROM purchases
INNER JOIN users
ON purchases.buyer_id=users.id
WHERE users.id= "002";