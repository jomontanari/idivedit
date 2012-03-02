DELIMITER $$

USE dive_sites $$

DROP TABLE IF EXISTS Ratings $$
DROP TABLE IF EXISTS Reviews $$
DROP TABLE IF EXISTS DiveSites $$
DROP TABLE IF EXISTS Resorts $$
DROP TABLE IF EXISTS Countries $$

CREATE TABLE Countries (
    id int PRIMARY KEY AUTO_INCREMENT,
    name nvarchar(100)
) $$

CREATE TABLE Resorts ( 
    id int PRIMARY KEY AUTO_INCREMENT,
    name nvarchar(300),
    countryid int REFERENCES Countries(id)
) $$

CREATE TABLE DiveSites (
    id int PRIMARY KEY AUTO_INCREMENT,
    name nvarchar(500),
    resortid int REFERENCES Resorts(id),
    countryid int REFERENCES Countries(id)
) $$

CREATE TABLE Reviews (
    id int PRIMARY KEY AUTO_INCREMENT,
    name nvarchar(300),
    divesiteid int REFERENCES DiveSites(id)
) $$

CREATE TABLE Ratings (
    id int PRIMARY KEY AUTO_INCREMENT,
    name nvarchar(300),
    divesiteid int REFERENCES DiveSites(id),
    reviewid int REFERENCES Reviews(id)
) $$

INSERT INTO Countries (name) VALUES ('Egypt') $$
INSERT INTO Countries (name) VALUES ('Australia') $$
INSERT INTO Countries (name) VALUES ('United Kingdom') $$
INSERT INTO Countries (name) VALUES ('Malta') $$
INSERT INTO Countries (name) VALUES ('Bonaire') $$
INSERT INTO Countries (name) VALUES ('Maldives') $$