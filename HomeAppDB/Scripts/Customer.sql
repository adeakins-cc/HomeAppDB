﻿CREATE TABLE [dbo].[Customer]
(
	[customerId] INT NOT NULL PRIMARY KEY , 
    [firstName] VARCHAR(25) NOT NULL DEFAULT '', 
    [lastName] VARCHAR(30) NOT NULL DEFAULT '', 
	[companyName] VARCHAR(50) NULL DEFAULT '', 
	[unitNumber01] VARCHAR(10) NULL DEFAULT 0, 
    [streetNumber01] VARCHAR(10) NOT NULL DEFAULT 0, 
    [streetName_01] VARCHAR(50) NOT NULL DEFAULT '', 
    [postalCode_01] VARCHAR(10) NOT NULL DEFAULT '', 
	[unitNumber_02] VARCHAR(10) NULL DEFAULT 0, 
    [streetNumber_02] VARCHAR(10) NULL DEFAULT 0, 
    [streetName_02] VARCHAR(50) NULL DEFAULT '', 
    [postalCode_02] VARCHAR(10) NULL DEFAULT '', 
	[cityId_01] INT NOT NULL DEFAULT 0, 
	[cityId_02] INT NULL DEFAULT 0,
	[bussinessPhone] BIGINT NULL DEFAULT 0, 
	[contactPhone] BIGINT NOT NULL DEFAULT 0,
	[fax] BIGINT NULL DEFAULT 0, 
    [contactMobile] BIGINT NULL DEFAULT 0, 
    [contactName] VARCHAR(255) NULL DEFAULT '',
    [comments] VARCHAR(255) NULL DEFAULT '',
    [DateActive] DATE NULL DEFAULT GETDATE(), 
    [DateModified] DATE NULL DEFAULT GETDATE(), 
	[contactEmail] VARCHAR(100) NULL DEFAULT '', 
    CONSTRAINT [FK_Customer_City_01] FOREIGN KEY (cityId_01) REFERENCES [City](cityId),
	CONSTRAINT [FK_Customer_City_02] FOREIGN KEY (cityId_02) REFERENCES [City](cityId)
)
