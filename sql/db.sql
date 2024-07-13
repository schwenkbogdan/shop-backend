CREATE database mr_not_robot;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE extension IF NOT EXISTS pgcrypto;

CREATE TABLE Roles (
    ID_Roles INT PRIMARY KEY AUTO_INCREMENT,
    Name_role VARCHAR(100)
)

CREATE TABLE users (
    ID_User UUID PRIMARY KEY DEFAULT uuid_generate_v1(),
    Username VARCHAR(100) NOT NULL,
    E-mail VARCHAR(100) NOT NULL UNIQUE,
    Password TEXT NOT NULL,
    Address VARCHAR(100),
    Phone VARCHAR(20),
    Role ENUM('User', 'Seller', 'Admin')
);

-- почему так? 
-- сделать отдельно таблицу с админами и продавцами 
-- сделать таблицу-справочник с ролями 
-- оставить enum
-- что с ролями
-- админ можен назначать админов и продавцем
-- продавец может
-- пользователь может 

CREATE TABLE Category (
    ID_Category  INT PRIMARY KEY AUTO_INCREMENT,  -- Use auto-increment for efficiency
    Name VARCHAR(100)    
);


CREATE TABLE Products (
    ID_Product UUID NOT NULL  PRIMARY KEY,
    Name VARCHAR(100),
    Description Text,
    Price DECIMAL(10, 2),
    Quantity in stock INT,
    Category_ID INT NOT NULL,  -- Use a meaningful name for the foreign key column
    FOREIGN KEY (Category_ID) REFERENCES Category(ID_Category)
);

-- Нормализация:
-- Проанализировать структуру данных и убедиться, 
-- что она не содержит избыточностей и аномалий.