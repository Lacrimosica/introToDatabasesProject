SET storage_engine=InnoDB;
SET FOREIGN_KEY_CHECKS=1;
CREATE DATABASE IF NOT EXISTS MULTIMEDIA_COMP;

USE MULTIMEDIA_COMP;

DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS CONTENT;
DROP TABLE IF EXISTS RATING;

SET AUTOCOMMIT=0;

CREATE TABLE USERS (
    SSN CHAR(20) NOT NULL,
    Name CHAR(50) NOT NULL,
    Surname CHAR(50) NOT NULL,
    YearOfBirth YEAR NOT NULL,

    PRIMARY KEY (SSN)
);

CREATE TABLE CONTENT (
    CodC INT NOT NULL,
    Category CHAR(20) NOT NULL,
    Duration INT NOT NULL,
    Title CHAR(50) NOT NULL,
    Description CHAR(100) NULL,

    PRIMARY KEY (CodC)
);

CREATE TABLE RATING (
    SSN CHAR(20) NOT NULL,
    CodC INT NOT NULL,
    Date DATE NOT NULL,
    Evaluation INT NOT NULL
    CHECK (Evaluation>=1 and Evaluation<=10),
        
    PRIMARY KEY (SSN, CodC, Date),
    FOREIGN KEY (SSN) REFERENCES USERS(SSN)
    FOREIGN KEY (CodC) REFERENCES CONTENT (CodC)
);


INSERT INTO USERS (SSN,Name,Surname,YearOfBirth)
VALUES ('SMTPLA80N31B791Z','James','Jones','1980');
INSERT INTO USERS (SSN,Name,Surname,YearOfBirth)
VALUES ('SMTPLA90B21B791Z','Anna','Kamila','1982');
INSERT INTO USERS (SSN,Name,Surname,YearOfBirth)
VALUES ('SMTPSA80N31B791Z','Bob','Hope','2000');
INSERT INTO USERS (SSN,Name,Surname,YearOfBirth)
VALUES ('SMTPLA80L98B791Z','Sarah','Oreily','1998');
INSERT INTO USERS (SSN,Name,Surname,YearOfBirth)
VALUES ('SMTPLA80N31B723V','Helena','Novak','1987');
INSERT INTO USERS (SSN,Name,Surname,YearOfBirth)
VALUES ('SMTPLALB249JN23B','Thomas','Vinterberg','2002');
INSERT INTO USERS (SSN,Name,Surname,YearOfBirth)
VALUES ('SMTPLA804G83791Z','Elena','Meyer','1976');
INSERT INTO USERS (SSN,Name,Surname,YearOfBirth)
VALUES ('SMTPLA80N31N4B39','Lara','Cohen','1996');
INSERT INTO USERS (SSN,Name,Surname,YearOfBirth)
VALUES ('SMTPLA80N318291Z','Janet','jackson','1980');
INSERT INTO USERS (SSN,Name,Surname,YearOfBirth)
VALUES ('SMTPLA765MSB791Z','James','Karlile','2003');




INSERT INTO CONTENT (CodC,Category,Duration,Title,Description)
VALUES (1,'Horror',100,'28 Days Later',NULL);
INSERT INTO CONTENT (CodC,Category,Duration,Title,Description)
VALUES (2,'Romance',110,'Before Sunrise',NULL);
INSERT INTO CONTENT (CodC,Category,Duration,Title,Description)
VALUES (3,'Horror',130,'Zombie Land',NULL);
INSERT INTO CONTENT (CodC,Category,Duration,Title,Description)
VALUES (4,'Comedy',120,'Trueman Show',NULL);
INSERT INTO CONTENT (CodC,Category,Duration,Title,Description)
VALUES (5,'Horror',120,'28 Months Later','Existential Crisis');
INSERT INTO CONTENT (CodC,Category,Duration,Title,Description)
VALUES (6,'Horror',100,'Satans Tnago',NULL);
INSERT INTO CONTENT (CodC,Category,Duration,Title,Description)
VALUES (7,'Fiction',110,'Rosemary Baby',NULL);
INSERT INTO CONTENT (CodC,Category,Duration,Title,Description)
VALUES (8,'Fiction',120,'Lucy',NULL);
INSERT INTO CONTENT (CodC,Category,Duration,Title,Description)
VALUES (9,'Romance',90,'About Time',NULL);
INSERT INTO CONTENT (CodC,Category,Duration,Title,Description)
VALUES (10,'Comedy',100,'Dumb and Dumber','A dumb Movie');




INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N31N4B39',1,'2020-12-10',7);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N31N4B39',1,'2021-02-13',9);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N31B791Z',1,'2020-12-10',8);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N31B791Z',10,'2018-12-10',7);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N31B723V',2,'2019-12-10',5);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N31B791Z',5,'2020-12-10',7);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80L98B791Z',3,'2021-03-10',9);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA765MSB791Z',6,'2020-11-10',7);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N31B723V',7,'2017-12-10',5);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N318291Z',2,'2020-12-10',7);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA804G83791Z',3,'1998-12-10',9);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N31B791Z',6,'2019-06-5',7);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N318291Z',7,'2020-12-7',5);
INSERT INTO RATING (SSN,CodC,Date,Evaluation)
VALUES ('SMTPLA80N318291Z',2,'2016-12-10',7);
