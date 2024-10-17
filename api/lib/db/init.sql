-- run this script on your database

CREATE DATABASE IF NOT EXISTS socialdb;
USE socialdb;

DROP TABLE IF EXISTS users;

CREATE TABLE users(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    nickname VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL UNIQUE,
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
) ENGINE=INNODB;