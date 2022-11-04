CREATE DATABASE  Company;
 USE Company;
 
CREATE TABLE Users(
Users_id int NOT NULL, 
First_name varchar(300) NOT NULL,
Last_name varchar(300),
Gender char(10),
Age int,
PRIMARY KEY(Users_id),
);
INSERT INTO Users (Users_id, First_name, Last_name, Gender, Age) VALUES(89, 'Valerie', 'Osawe', 'Female', 24);
INSERT INTO Users (Users_id, First_name, Last_name, Gender, Age) VALUES(34, 'Ivory', 'Ibironke', 'Female', 25);
INSERT INTO Users (Users_id, First_name, Last_name, Gender, Age) VALUES(56, 'Precious', 'Odeh', 'Male', 40);
INSERT INTO Users (Users_id, First_name, Last_name, Gender, Age) VALUES(77, 'John', 'Amughan', 'Male', 20);
INSERT INTO Users (Users_id, First_name, Last_name, Gender, Age) VALUES(90, 'Godspower', 'Uche', 'Male', 54);
INSERT INTO Users (Users_id, First_name, Last_name, Gender, Age) VALUES(44, 'Ero', 'Jasmine', 'Female', 64);


CREATE TABLE Products(
Product_id int NOT NULL IDENTITY(1, 1),
Product_name varchar(50),
PRIMARY KEY(Product_id),
Users_id int FOREIGN KEY REFERENCES Users(Users_id),
);
INSERT INTO Products(Product_name) VALUES('Shoe');
INSERT INTO Products(Product_name) VALUES('Hair brush');
INSERT INTO Products(Product_name) VALUES('Note pad');
INSERT INTO Products(Product_name) VALUES('Neck Chain');
INSERT INTO Products(Product_name) VALUES('Hair band');
INSERT INTO Products(Product_name) VALUES('Tie');


CREATE TABLE Deliveries(
Delivered char(6),
product_name varchar(50),
PRIMARY KEY(product_name),
Users_id int FOREIGN KEY REFERENCES Users(Users_id),
);

INSERT INTO Deliveries(Delivered, Product_name) VALUES('YES', 'Shoe');
INSERT INTO Deliveries(Delivered, Product_name) VALUES('No', 'Note pad');
INSERT INTO Deliveries(Delivered, Product_name) VALUES('YES', 'Tie');
INSERT INTO Deliveries(Delivered, Product_name) VALUES('YES', 'Hair band');
INSERT INTO Deliveries(Delivered, Product_name) VALUES('NO', 'Neck chain');
INSERT INTO Deliveries(Delivered, Product_name) VALUES('NO', 'Hair brush');