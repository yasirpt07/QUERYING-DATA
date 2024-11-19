create database Country;

use country;

-- Creating the Country table
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area INT
);

-- Creating the Persons table
CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(50)
);

-- Inserting 10 rows into Country table
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833520),
(2, 'India', 1380000000, 3287263),
(3, 'UK', 67886000, 243610),
(4, 'Canada', 37742154, 9984670),
(5, 'Australia', 25687041, 7692024),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Japan', 126476461, 377975),
(9, 'Russia', 146793744, 17098242),
(10, 'Brazil', 212559417, 8515770);

-- Inserting 10 rows into Persons table
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 1380000000, 4.0, 2, 'India'),
(3, 'Emily', 'Jones', 67886000, 4.8, 3, 'UK'),
(4, 'Michael', 'Brown', 37742154, 4.6, 4, 'Canada'),
(5, 'Sophia', 'Wilson', 25687041, 3.8, 5, 'Australia'),
(6, 'Chris', 'Taylor', 83783942, 5.0, 6, 'Germany'),
(7, 'Olivia', 'Anderson', 65273511, 4.1, 7, 'France'),
(8, 'David', 'Thomas', 126476461, 4.7, 8, 'Japan'),
(9, 'James', 'Moore', NULL, 4.2, NULL, NULL),
(10, 'Anna', 'Davis', NULL, 3.5, NULL, NULL);

select * from persons;

-- distinct country names from the Persons table
SELECT DISTINCT Country_name FROM Persons;

-- first names and last names from the Persons table with aliases
SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;

-- all persons with a rating greater than 4.0
SELECT * FROM Persons WHERE Rating > 4.0;

-- countries with a population greater than 10 lakhs
SELECT * FROM Country WHERE Population > 1000000;


-- persons who are from 'USA' or have a rating greater than 4.5
SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

-- all persons where the country name is NULL
SELECT * FROM Persons WHERE Country_name IS NULL;

-- all persons from the countries 'USA', 'Canada', and 'UK'
SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');

-- all persons not from the countries 'India' and 'Australia'
SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');

-- all countries with a population between 5 lakhs and 20 lakhs
SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;

-- all countries whose names do not start with 'C'
SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';







