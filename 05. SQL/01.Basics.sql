CREATE DATABASE AIML;
USE AIML;

# Create schema or design (columns)
CREATE TABLE AIMLStudents(
id INT,
rollno INT,
SName VARCHAR(20) 
);

# Set user data (rows) 
INSERT INTO AIMLStudents
VALUES
(1,101,"Alice"),(2,102,"Bob");

# print TABLE
SELECT * FROM AIMLStudents;