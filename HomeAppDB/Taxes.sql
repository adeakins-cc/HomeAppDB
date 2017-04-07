CREATE TABLE [dbo].[Taxes]
(
	[taxId] INT NOT NULL PRIMARY KEY, 
    [name] VARCHAR(3) NOT NULL, 
    [rate] DECIMAL(10, 2) NOT NULL
)