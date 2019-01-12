CREATE DATABASE dietapp;
USE dietapp;

CREATE TABLE customers (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    surname VARCHAR(45) NOT NULL,
    phoneNumber VARCHAR(45) NOT NULL,
    gender VARCHAR(45) NOT NULL,
    age FLOAT NOT NULL,
    height FLOAT NOT NULL,
    weight FLOAT NOT NULL,
    activity FLOAT NOT NULL,
    goal VARCHAR(45) NOT NULL,
    proteinPerKgOfBodyMass FLOAT NOT NULL,
    percOfCalsFromFats FLOAT NOT NULL);
    
    SELECT * FROM customers;