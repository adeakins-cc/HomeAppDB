CREATE TABLE [dbo].[Part]
(
	[partId] INT NOT NULL PRIMARY KEY DEFAULT 00000, 
    [categoryId] INT NOT NULL DEFAULT 00000, 
    [name] VARCHAR(100) NOT NULL DEFAULT '', 
    [price] DECIMAL(19, 2) NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Part_Category] FOREIGN KEY (categoryId) REFERENCES [Category](categoryId)
)
