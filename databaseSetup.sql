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

Insert into Organisation (OrganisationName,OrganisationNumber,AddressLine1,Town,Postcode)
VALUES
('Barclays UK PLC','09740322','1 Churchill Place','London','E14 5HP'),
('HSBC BANK PLC','00014259','8 Canada Square','London','E14 5HQ'),
('LLOYDS BANK PLC','00002065','25 Gresham Street','London','EC2V 7HN'),
('TSB BANK PLC','SC095237','Henry Duncan House','Edinburgh','EH2 4LH'),
('CLYDESDALE BANK PLC','SC001111','30 St Vincent Place','Glasgow','G1 2HL'),
('STANDARD CHARTERED PLC','00966425','1 Basinghall Avenue','London','EC2V 5DD'),
('BANK OF SCOTLAND PLC','SC327000','The Mound','Edinburgh','EH1 1YZ')

Insert into Employee
VALUES
('09740322','Janet','Smith'),
('09740322','Frank','Bloswick'),
('09740322','Tonya','Bazinaw'),
('09740322','Mike','St. Onge'),
('09740322','Jackie','Jones'),
('09740322','Darren','Tillbrooke'),
('09740322','Stephanie','Holsinger'),
('09740322','Rene','Hughey'),
('09740322','Robert','Rogers'),
('09740322','Richard','LaPine'),
('09740322','Kathy','Summerfield'),
('09740322','Kathy','Bodwin'),
('00002065','Mitch','Krause'),
('00002065','George','Dow'),
('00002065','Jack','Malone'),
('00002065','Bill','Schweiz'),
('00002065','Mark','Gunter'),
('00002065','Bob','Anderson'),
('00002065','Scott','Simpson'),
('00002065','Phil','Dingman'),
('00002065','Chad','Leiker'),
('00002065','Ian','Benson'),
('00002065','Nicole','Lane'),
('00002065','Steve','Lundeen'),
('00002065','Erica','Black'),
('00002065','Xenos','Mathis'),
('00002065','Kyle','Good'),
('00002065','Raja','Dejesus'),
('00002065','Timothy','Frazier'),
('00002065','Francine','Morrison'),
('SC095237','Avram','Pate'),
('SC095237','Hammett','Coffey'),
('SC095237','Hasad','Wise'),
('SC095237','Cullen','Riddle'),
('SC095237','Kato','Delgado'),
('SC095237','Todd','Wright'),
('SC095237','Troy','Mccoy'),
('SC095237','Gil','Duncan'),
('SC095237','Lionel','Espinoza'),
('SC095237','Victor','Merrill'),
('SC001111','Gennifer','Vance'),
('SC001111','Chancellor','Warner'),
('SC001111','Davis','Wolf'),
('00966425','Carlos','Clarke'),
('00966425','Dolan','Mercado'),
('00966425','Helen','Guthrie'),
('00966425','Elmo','Douglas'),
('00966425','Kane','Rice'),
('00966425','Colt','Rowland'),
('00966425','John','Rose'),
('00966425','Alfonso','Hopkins'),
('00966425','Ida','Watts'),
('00966425','Jennifer','Coleman'),
('00966425','Ciaran','Newton'),
('00966425','Hiram','Carrillo'),
('00966425','Devin','Russell'),
('00966425','Arsenio','Jensen'),
('00966425','Otto','Gibbs'),
('00966425','Hiram','Vega'),
('SC327000','Jarrod','Randolph'),
('SC327000','Josiah','Gates'),
('SC327000','Brandon','Stanley'),
('SC327000','Kennedy','Nunez'),
('SC327000','Lewis','Sanchez'),
('SC327000','Kassie','Chaney'),
('SC327000','Lance','Knox'),
('SC327000','Lamar','Harrison'),
('SC327000','Honorato','Montgomery'),
('00014259','Lisa','Nielsen'),
('00014259','Layla','Barr'),
('00014259','Nancy','Mcclain'),
('00014259','Kato','Delgado'),
('00014259','Todd','Wright'),
('00014259','Troy','Mccoy'),
('00014259','Gil','Duncan'),
('00014259','Lionel','Espinoza')



select *
,(select count(*) from Employee where Employee.OrganisationNumber = Organisation.OrganisationNumber)
from Organisation
order by OrganisationNumber
select * from Employee

 