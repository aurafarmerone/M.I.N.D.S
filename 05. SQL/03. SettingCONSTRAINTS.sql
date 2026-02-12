create database if not exists InstagramDB;

use InstagramDB;

CREATE TABLE InstagramUser(
id INT,
Name VARCHAR(20) NOT NULL,
Email VARCHAR(20) UNIQUE,
Follower INT DEFAULT 0,
AGE INT,
constraint AGECHECK CHECK (AGE >= 13)
);

SELECT * FROM InstagramUser;