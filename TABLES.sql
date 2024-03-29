CREATE DATABASE Blood_Donation_Management
GO

CREATE SCHEMA Blood_Donation_Management
GO
CREATE TABLE Patients 
	(  Patient_Id int Primary Key Identity (1, 1), 
	   First_Name  varchar (30) NOT NULL,
	   Middle_Name varchar (20) NOT NULL,
	   Last_Name  varchar (30) NOT NULL,
	   Date_of_Birth Date NOT NULL,
	   Gender varchar (10) NOT NUll,
	   City varchar(20) NOT NULL, 
	   Province  varchar(20) NOT NULL,
	   Country  varchar (30) NOT NULL,
	   Postal_code char(6) NOT NULL,
	   Contact_Number tinyint  NOT NULL,
	   Blood_Group varchar (3) NOT NULL,
	   Allergies varchar(30) NOT NULL,
	   Height_in_foot Decimal(2,2) NOT NULL,
	   Weight_in_kg  Decimal(3,2) NOT NULL,
	   Disease varchar (30) NOT NULL,
	   Emergency_Contact_number tinyint NOT NULL,

	);
	GO

	CREATE TABLE Donors
	(  Donor_Id int Primary Key Identity (1, 1), 
	   First_Name  varchar (30) NOT NULL,
	   Middle_Name varchar (20) NOT NULL,
	   Last_Name  varchar (30) NOT NULL,
	   Gender varchar (10) NOT NUll,
	   Date_of_Birth Date NOT NULL,
	   City varchar(20) NOT NULL, 
	   Province  varchar(20) NOT NULL,
	   Country  varchar (30) NOT NULL,
	   Postal_code char(6) NOT NULL,
	   Contact_Number tinyint  NOT NULL,
	   Blood_Group varchar (3) NOT NULL,
	   Allergies varchar(30) NOT NULL,
	   Height_in_foot Decimal(2,2) NOT NULL,
	   Weight_in_kg  Decimal(3,2) NOT NULL,
	   Disease varchar (30) NOT NULL,
	   Emergency_Contact_number tinyint NOT NULL,
	   Last_Donate_Date Date NOT NULL,

	);
GO
	CREATE TABLE BLOOD_BANKS
	(	Blood_Bank_Id int Primary Key Identity (1,1),
		Blood_Bank_Name varchar(40)	NOT NULL,
		Address_Street varchar(20) NOT NULL,	
		City varchar(20) NOT NULL,
		Province varchar(20) NOT NULL,
		Country varchar(20) NOT NULL,
		Number_Of_Donors tinyint NOT NULL,
	);
GO
CREATE TABLE Patient_Blood_Bank
(
	Blood_Bank_Id int NOT NULL,
	Patient_Id int NOT NULL
);

GO 
CREATE TABLE Donor_Blood_Bank
(
	Blood_Bank_Id int NOT NULL,
	Donor_Id int NOT NULL,
);

ALTER TABLE Blood_Donation_Management.Patients_Donors
	ADD CONSTRAINT FKPatient_Id
	FOREIGN KEY (Patient_Id) REFERENCES Blood_Donation_Management.Patients(Patient_Id);




























