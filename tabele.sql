

CREATE TABLE orders(
    Id int NOT NULL AUTO_INCREMENT,
    PersonId int NOT NULL,
    Price DECIMAL NOT NULL,
    PRIMARY KEY (Id),
	CONSTRAINT FK_Person FOREIGN KEY (PersonId) REFERENCES person(Id)
);

CREATE TABLE Person(
    Id int NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Product(
    Id int NOT NULL AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Price DECIMAL NOT NULL,
    CategoryId int NOT NULL,
    PRIMARY KEY (Id),
    CONSTRAINT FK_Category FOREIGN KEY (CategoryId) REFERENCES Category(Id)
);

CREATE TABLE Category(
    Id int NOT NULL AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    PRIMARY KEY (Id)
);
CREATE TABLE OrderProduct (
    Id int NOT NULL AUTO_INCREMENT,
    OrderId int NOT NULL,
    ProductId int NOT NULL,
    CONSTRAINT FK_Order FOREIGN KEY(OrderId) REFERENCES orders(Id),
	CONSTRAINT FK_Product FOREIGN KEY(ProductId) REFERENCES Product(Id),
	PRIMARY KEY (Id)
)
// DODAWANIE

INSERT INTO person (FirstName, LastName)
VALUES (Arkadiusz,Skwarek),
		(Michal, Kupicha),
		(Jakub, Meksyk),
        	(Michal, Glus),
        	(Tytus, Bomba);
INSERT INTO orderproduct (OrderId, ProductId)
VALUES  (19,1),
	(20,4),
        (21,5),
        (22,6),
        (23,7),
        (24,8);

INSERT INTO orders (PersonId, Price)
VALUES (1, 100),
	(3, 200),
        (4, 300),
        (5, 400),
        (6, 500);
CREATE TABLE person_audit (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    PersonId INT NOT NULL,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    UpdatedAt DATETIME DEFAULT NULL
);