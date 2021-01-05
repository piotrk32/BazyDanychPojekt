CREATE VIEW widok1 AS SELECT Price FROM product WHERE Price<500;

CREATE VIEW widok2 AS SELECT AVG(price) FROM product;                            

CREATE VIEW widok3 AS SELECT FirstName FROM person ORDER BY LastName DESC;

CREATE VIEW widok4 AS SELECT FirstName,LastName FROM person ORDER BY LastName ASC;

CREATE VIEW widok5 AS 
SELECT ProductId
FROM orderproduct
LEFT JOIN product
ON orderproduct.ProductId = product.Name;

CREATE VIEW widok6 AS SELECT FirstName FROM person WHERE FirstName LIKE 'B%';

CREATE VIEW widok7 AS SELECT OrderId,ProductId FROM orderproduct ORDER BY ID DESC;

CREATE VIEW widok8 AS SELECT * FROM category WHERE ID BETWEEN 2 AND 4;

CREATE VIEW widok9 AS SELECT DISTINCT PersonId FROM orders;

CREATE VIEW widok10 AS SELECT COUNT(FirstName), LastName
FROM person
GROUP BY LastName;

CREATE VIEW widok11 AS SELECT * FROM product

WHERE Price = (SELECT MIN(Price) FROM product);

CREATE VIEW widok12 AS (SELECT Price FROM product WHERE Name='Product4');

CREATE VIEW widok13 AS SELECT * FROM product

WHERE Price > (SELECT AVG(Price) FROM product);

