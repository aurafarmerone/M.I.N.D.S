create database if not exists InstagramDB;

use InstagramDB;

CREATE TABLE InstagramUsers(
id INT PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
Email VARCHAR(20) UNIQUE
);

CREATE TABLE Followers(
Fid INT PRIMARY KEY,
uid INT , 
Followers INT,
FOREIGN KEY (uid) references InstagramUsers(id)
); 

SELECT * FROM InstagramUsers;