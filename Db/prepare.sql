CREATE DATABASE `product-db` /*!40100 COLLATE 'latin1_swedish_ci' */;

USE `product-db`;

CREATE TABLE `product` (
	`Id` INT NOT NULL AUTO_INCREMENT,
	`Name` TEXT NOT NULL,
	`Description` TEXT NOT NULL,
	INDEX `Id` (`Id`)
)
COLLATE='latin1_swedish_ci';

INSERT IGNORE INTO product (Id, Name, Description)
VALUES 
(1, "Dependency Injection Principles, Practices, and Patterns", "Book by Steven van Deursen and Mark Seemann"),
(2, "Agile Software Development, Principles, Patterns, and Practices", "Book by Robert C. Martin"); 

