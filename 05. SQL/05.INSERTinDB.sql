create database if not exists InstagramDB;

use InstagramDB;

CREATE TABLE IF NOT EXISTS Instagramuser(
id INT PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
Email VARCHAR(20) ,
AGE INT
);

INSERT INTO Instagramuser(id, Name, Email, AGE)
VALUES
(101,"alpha", "alpha1@gmail.com", 17),
(102,"beta", "beta1@yahoo.com" , 18);


SELECT * FROM Instagramuser;