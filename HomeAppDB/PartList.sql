CREATE TABLE [dbo].[PartsUsed]
(
	[partListId] INT NOT NULL PRIMARY KEY, 
    [invoiceId] INT NOT NULL, 
    [partId] INT NOT NULL, 
    [editPrice] DECIMAL(19, 2) NULL, 
    [quantity] INT NOT NULL, 
    CONSTRAINT [FK_PartList_Invoice] FOREIGN KEY (invoiceId) REFERENCES [Invoice](invoiceId), 
    CONSTRAINT [FK_PartList_Part] FOREIGN KEY (partId) REFERENCES [Part](partId)
)
