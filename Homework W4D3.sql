CREATE DATABASE aNewDatabase
USE NORTHWND
CREATE TABLE aNewTable (ID INT NOT NULL PRIMARY KEY, Name VARCHAR(200) NOT NULL, Breed VARCHAR(200))
INSERT INTO aNewTable(ID, Name, Breed) VALUES (1, 'Cordelia', 'Pomeranian')
INSERT INTO aNewTable(ID, Name, Breed) VALUES (2, 'Odin', 'Lhasa Apso')
INSERT INTO aNewTable(ID, Name, Breed) VALUES (3, 'Charlie', 'Miniature Schnauzer')
INSERT INTO aNewTable(ID, Name, Breed) VALUES (4, 'Pupper', 'Miniature Schnauzer')
INSERT INTO aNewTable(ID, Name, Breed) VALUES (5, 'Doggo', 'Miniature Schnauzer')
SELECT Name, Breed FROM aNewTable
DELETE FROM aNewTable WHERE Breed = 'Miniature Schnauzer' AND NAME <> 'Charlie'
UPDATE aNewTable SET Name = 'Cordelia, BEST DOG' WHERE ID = 1
ALTER TABLE aNewTable ADD IsBest bit NULL
ALTER TABLE aNewTable DROP COLUMN IsBest
ALTER TABLE aNewTable ADD IsBest varchar(10) NULL
UPDATE aNewTable SET IsBest = 'NO' WHERE ID BETWEEN 2 AND 5
UPDATE aNewTable SET IsBest ='YES!!!' WHERE Name LIKE '%BEST%'
ALTER DATABASE NORTHWND MODIFY NAME = Northwind
CREATE INDEX i1 ON aNewTable (Name)
ALTER TABLE aNewTable ADD Coolness int NULL
ALTER TABLE aNewTable ADD DEFAULT('1') FOR Coolness
UPDATE aNewTable SET Coolness = 1 where Coolness is null
UPDATE aNewTable SET Coolness = Coolness + 5 WHERE Breed = 'Pomeranian'
UPDATE aNewTable SET Coolness = Coolness - 1 WHERE Breed = 'Lhasa Apso'
ALTER TABLE aNewTable ADD MathOne int NOT NULL DEFAULT 10
ALTER TABLE aNewTable ADD MathTwo int NOT NULL DEFAULT 2
ALTER TABLE aNewTable ADD MathSum int NOT NULL DEFAULT 0
UPDATE aNewTable SET MathSum = MathOne * MathTwo Where MathSum = 0 AND ID = 1
UPDATE aNewTable SET MathSum = MathOne / MathTwo Where MathSum = 0 AND ID = 2
UPDATE aNewTable SET MathSum = MathOne % MathTwo Where MathSum = 0 AND ID = 3

ALTER TABLE aNewTable ADD MathSumASF int NOT NULL DEFAULT 0
UPDATE aNewTable SET MathSumASF = ABS(MathOne) Where ID = 1
UPDATE aNewTable SET MathSumASF = SIGN(MathOne) Where ID = 2
UPDATE aNewTable SET MathSumASF = FLOOR(MathOne) Where ID = 3

ALTER TABLE aNewTable ADD MathSumCPR int NOT NULL DEFAULT 0
UPDATE aNewTable SET MathSumCPR = CEILING(MathOne) Where ID = 1
UPDATE aNewTable SET MathSumCPR = POWER(MathOne, 1) Where ID = 2
UPDATE aNewTable SET MathSumCPR = ROUND(MathOne, 1) Where ID = 3
UPDATE aNewTable SET MathSumCPR = SQRT(64) Where ID = 3

DROP INDEX i1 ON aNewTable
SELECT MAX(Coolness) AS Coolest FROM aNewTable GROUP BY Coolness

DROP TABLE aNewTable
SELECT * FROM aNewTable