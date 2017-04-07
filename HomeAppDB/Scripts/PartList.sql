﻿CREATE TABLE [dbo].[PartsUsed]
(
	[partListId] INT NOT NULL PRIMARY KEY , 
    [invoiceId] INT NOT NULL DEFAULT 0, 
    [partId] INT NOT NULL DEFAULT 0, 
    [editPrice] DECIMAL(19, 2) NOT NULL DEFAULT 0, 
    [quantity] INT NOT NULL DEFAULT 0, 
    [categoryName] VARCHAR(100) NOT NULL DEFAULT '', 
    CONSTRAINT [FK_PartList_Invoice] FOREIGN KEY (invoiceId) REFERENCES [Invoice](invoiceId), 
    CONSTRAINT [FK_PartList_Part] FOREIGN KEY (partId) REFERENCES [Part](partId)
)