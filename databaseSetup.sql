CREATE DATABASE Vaultex_Db
GO;

USE Vaultex_Db;

CREATE TABLE Organisation(
OrganisationName VARCHAR (50),
OrganisationNumber VARCHAR (20) NOT NULL PRIMARY KEY,
AddressLine1 VARCHAR (50),
AddressLine2 VARCHAR (50),
AddressLine3 VARCHAR (50),
AddressLine4 VARCHAR (50),
Town VARCHAR (50),
Postcode VARCHAR (10)	
 );
CREATE TABLE Employee(
OrganisationNumber VARCHAR (20) FOREIGN KEY REFERENCES Organisation(OrganisationNumber),
FirstName VARCHAR (50),
LastName VARCHAR (50)
 );
