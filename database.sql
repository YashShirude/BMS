CREATE DATABASE bankmanagementsystem;

USE bankmanagementsystem;

CREATE TABLE personalDetails(
appnNo varchar(5) PRIMARY KEY,
name varchar(20),
dob varchar(20),
gender varchar(6),
email varchar(30),
mobile varchar(10),
state varchar(25)
); 

CREATE TABLE financialDetails(
accNo varchar(10) PRIMARY KEY,
aadhar varchar(12),
pan varchar(10),
accType varchar(7),
balance varchar(10),
pin varchar(10),
appnNo varchar(5),
FOREIGN KEY (appnNo) REFERENCES personalDetails(appnNo)
); 

CREATE TABLE transactionDetails(
accNo varchar(10),
message varchar(40),
amount varchar(10),
tranType varchar(10),
balance varchar(10),
time datetime,
FOREIGN KEY (accNo) REFERENCES financialDetails(accNo)
); 

CREATE TABLE transaction(
accNo varchar(10),
accType varchar(10),
remainingtrans int,
remainingOverdraft int,
time datetime,
FOREIGN KEY (accNo) REFERENCES financialDetails(accNo)
); 

CREATE TABLE deposit(
accNo varchar(10),
accType varchar(10),
principal int,
rate float,
tenure int,
interest float,
time datetime,
FOREIGN KEY (accNo) REFERENCES financialDetails(accNo)
); 

SELECT * FROM personaldetails;
SELECT * FROM financialdetails;
SELECT * FROM transactionDetails;
SELECT * FROM transaction;
SELECT * FROM deposit;

show tables;