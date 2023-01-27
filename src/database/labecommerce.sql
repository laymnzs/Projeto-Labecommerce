-- Active: 1674487067520@@127.0.0.1@3306

--criando a tabela USERS e inserindo ID, NAME e PASSWORD:

CREATE TABLE users (
	id TEXT PRIMARY KEY UNIQUE NOT NULL,
	email TEXT UNIQUE NOT NULL,
	password TEXT NOT NULL);


--Populando tabela de users
INSERT INTO users(id, email, password)
VALUES("a01", "lay@gmail.com", "2207");

INSERT INTO users(id, email, password)
 VALUES("a02", "lucas@gmail.com", "1607");
 
 INSERT INTO users(id, email, password)

 VALUES("a03", "labenu@gmail.com", "2022");

SELECT * FROM users;

DELETE FROM users;





--criando a tabela PRODUCTS e inserindo ID, NAME, PRICE E CATEGORY:

CREATE TABLE products (
id TEXT PRIMARY KEY UNIQUE NOT NULL,
	name TEXT  NOT NULL,
	price REAL NOT NULL,
    category TEXT NOT NULL);

INSERT INTO products(id, name, price, category)
VALUES("a01", "toalha", 20, "banheiro");


INSERT INTO products(id, name, price, category)
 VALUES("a02", "toalha", 20, "banheiro");
 
 
 INSERT INTO products(id, name, price, category)
 VALUES("a03", "shampoo", 15, "banheiro");
 
 INSERT INTO products(id, name, price, category)
VALUES("a04", "condicionador", 13, "banheiro");

INSERT INTO products(id, name, price, category)
VALUES("a05", "pia", 120, "banheiro");


SELECT * FROM products;

DELETE FROM products;



--editando um item da tabela que fiz repetido

UPDATE products 
SET name = "escova", price = 25
WHERE id = "a02";

SELECT * FROM products;


--editando valor do item da tabela
UPDATE products
SET price = 36
WHERE id = "a02";

SELECT * FROM products;




--exercicio da tarde - 1) retorna todos os usuários cadastrados:
SELECT *  from products;
SELECT *  from users;



--mocke um termo de busca, por exemplo "monitor"
--retorna o resultado baseado no termo de busca

SELECT * FROM products
WHERE name ="toalha";




--inserindo novo ID na tabela:
INSERT INTO users(id, email, password)
VALUES("a004", "labecommerce@gmail.com", "2023");

SELECT * FROM users;




--inserindo novo PRODUTO na tabela:

INSERT INTO products(id, name, price, category)
VALUES("a06", "piso", 420, "banheiro");

SELECT * FROM products;






--exercicio 2 -- mocke uma id de products
-- busca baseada no valor mockado

SELECT * FROM products
WHERE id = "a06";

SELECT * FROM products;





--deletando ID da tabela USERS:
DELETE FROM users
WHERE id = "a03";

SELECT * FROM users;


--deletando ID da tabela PRODUCTS:

DELETE FROM products
WHERE id = "a06";

SELECT * FROM products;



--atualizando email da tabela USERS:
UPDATE users
SET email = "teste@gmail.com",
password="teste123" WHERE id = "a03";

SELECT * FROM users;





--atualizando um produto da tabela PRODUCTS:

UPDATE products
SET price=22 WHERE id = "a05";

SELECT * FROM products;



--exercicio 3--ordenando EMAIL por ordem crescente na tabela USERS:
SELECT * FROM users
ORDER BY email ASC;





--ordenando PREÇO por ordem crescente na tabela PRODUCTS:

SELECT * FROM products
ORDER BY price ASC
LIMIT 20;





-- mostrando preço maior ou igual a 13 e menor ou igual a 120:
SELECT * FROM products
WHERE price >= "13" AND price <= "120"
ORDER BY price ASC;




/*--deletando produto pelo ID da tabela PRODUCTS:

DELETE FROM products
WHERE id = "3";

SELECT * FROM products;



-- inserindo novo produto na tabela PRODUCTS:
INSERT INTO products(id, name, price, category)
VALUES("a06", "esponja", 5, "banheiro");

SELECT * FROM products;




--nova tabela USERS, agora é para ADICIONAR +4 EMAILS:
CREATE TABLE users(id TEXT PRIMARY KEY UNIQUE NOT NULL, email TEXT UNIQUE NOT NULL, password TEXT NOT NULL);

INSERT INTO users(id, email, password)
VALUES ("5", "estrela@gmail.com", "estrela1"), ("6", "sol@gmail.com", "solemar"), ("7", "nuvenzinha@gmail.com", "nuvem2013"), ("8", "ceu@gmail.com", "ceuazul1");

SELECT * FROM users;



--excluir tabela
DROP TABLE users;




--retorna os usuários cadastrados (MAS SÓ RETORNA PK DE USERS)?!
--SELECT ('users');

--retorna ID, EMAIL e PASSWORD dos usuários cadastrados:

SELECT * FROM users
WHERE id;


--buscando usuário pela ID:
SELECT * FROM users
WHERE id = "2";



--delete a linha 3 da tabela USERS:
DROP TABLE users
id = 3;


--DÚVIDA: 


CREATE TABLE products(id TEXT PRIMARY KEY UNIQUE NOT NULL, name TEXT NOT NULL, price REAL NOT NULL, category TEXT NOT NULL);

--excluir tabela
DROP TABLE products;


-- inserindo novos produtos na tabela PRODUCTS:
INSERT INTO products(id, name, price, category)
VALUES ("6", "livro", 50, "banheiro"), ("7", "ventilador", 100, "banheiro"), ("8", "guarda-roupa", 1500, "banheiro"), ("9", "espelho", 50, "banheiro"), ("10", "estante", 500, "banheiro");

SELECT * FROM products;

--retorna os produtos cadastrados
--SELECT ('products');


--retorna todos os produtos cadastrados
SELECT * FROM products
WHERE id;


SELECT * FROM products;


-- buscar por categoria:
SELECT category FROM products;


--busa um item da tabela PRODUCTS por name:
SELECT * FROM products
WHERE name = "toalha";


--buscar item por ID:
SELECT * FROM products
WHERE id = "3";


--mocke um novo usuário
--insere novo id na tabela PRODUCTS:
INSERT INTO products(id, name, price, category)
VALUES("11", "blindex", 80, "banheiro");


SELECT * FROM products;


--delete ID 2 da tabela PRODUCTS:
DELETE FROM products
WHERE id = "2";


-- atualizando preço do ID 1 da tabela USERS:
UPDATE products 
SET price = 49
WHERE id = "1";

SELECT * FROM products;




--retorna os EMAILS em ordem crescente:
SELECT * FROM users ORDER by email ASC;

SELECT * FROM users;



--retorna o price em ordem crescente:
--limite o resultado em 20 iniciando pelo primeiro item
SELECT * FROM products ORDER by price ASC LIMIT 20;

SELECT * FROM products;




--retorna os produtos com preços dentro do intervalo mockado em ordem crescente:
SELECT * FROM products 
WHERE price >="50" AND price <="500" 
ORDER by price ASC ;


SELECT * FROM products;*/





--criando uma tabela purchases
CREATE TABLE purchases(
	id TEXT PRIMARY KEY UNIQUE NOT NULL,
	total_price REAL UNIQUE NOT NULL, 
	paid INTEGER NOT NULL,
	delivered_at TEXT,
	buyer_id TEXT NOT NULL, 
	 FOREIGN KEY (buyer_id) REFERENCES users (id));


INSERT INTO purchases(id, total_price, paid, delivered_at, buyer_id)
VALUES ("001", 50, 40, "", "a001"), 
("002", 120, 120, "", "a002"), 
("003", 400, 150,  "", "a003"), 
("004", 30, 30, "", "a001");


SELECT * FROM purchases;


DROP TABLE purchase;


DELETE FROM purchases;






--atualizando data e hora na tabela PURCHASES:
UPDATE purchases
SET delivered_at = DATETIME("now", "localtime")
WHERE id="001";

SELECT * FROM purchases;




SELECT * FROM purchases;


CREATE TABLE purchases_products (
	purchase_id TEXT NOT NULL, 
	product_id TEXT NOT NULL, 
	quantity INTEGER NOT NULL,
	FOREIGN KEY (purchase_id) REFERENCES purchases(id)
	FOREIGN KEY (product_id) REFERENCES products(id)


);
INSERT INTO purchases_products(purchase_id, product_id, quantity)
VALUES
("001", "a03", 1),
("002", "a03", 2),
("003", "a03", 3);

DROP TABLE purchases_products;

SELECT * FROM purchases
INNER JOIN  purchases_products  
ON  purchases_products.purchase_id =purchases.id;


SELECT 
purchases.id AS purchaseId,
purchases.total_price, 
purchases.paid,
purchases.delivered_at, 
purchases.buyer_id AS buyerId,
products.id, 
products.name,
products.price
FROM purchases
LEFT JOIN purchases_products
ON purchases_products.purchase_id = purchases.id
INNER JOIN products
ON  purchases_products.product_id = products.id;