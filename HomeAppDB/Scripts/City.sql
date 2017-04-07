CREATE TABLE [dbo].[City]
(
	[cityId] INT NOT NULL PRIMARY KEY , 
    [name] VARCHAR(40) NOT NULL DEFAULT '', 
    [province] CHAR(2) NOT NULL DEFAULT 'ON', 
    [counrty] VARCHAR(30) NOT NULL DEFAULT 'CANADA' 
)
