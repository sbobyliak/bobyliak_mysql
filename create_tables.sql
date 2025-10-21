CREATE DATABASE Rollerskating;
USE Rollerskating;

CREATE TABLE Rollers (
    roller_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    city VARCHAR(50)
);
CREATE TABLE Instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    roller_id INT,
    experience INT,
    num_of_students INT,
    rating INT
);
CREATE TABLE Communities (
    community_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    num_of_people INT,
    city VARCHAR(50)
);
CREATE TABLE Shops (
    shop_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    partner_id INT
);
CREATE TABLE Clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    shop_id INT,
    order_name VARCHAR(50)
);
