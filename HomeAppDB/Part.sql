CREATE TABLE [dbo].[Part]
(
	[partId] INT NOT NULL PRIMARY KEY, 
    [categoryId] INT NOT NULL, 
    [name] VARCHAR(20) NOT NULL, 
    [price] DECIMAL(19, 2) NOT NULL, 
    CONSTRAINT [FK_Part_Category] FOREIGN KEY (categoryId) REFERENCES [Category](categoryId)
)
