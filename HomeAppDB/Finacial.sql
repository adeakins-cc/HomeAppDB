CREATE TABLE [dbo].[Finacial]
(
	[finacialId] INT NOT NULL PRIMARY KEY DEFAULT 00000, 
    [invoiceId] INT NOT NULL DEFAULT 00000, 
    [postDate] DATETIME NOT NULL DEFAULT 0000-00-00, 
    [totalDue] DECIMAL(19, 2) NOT NULL DEFAULT 0, 
    [amountPaid] DECIMAL(19, 2) NULL DEFAULT 0, 
    [chequeNumber] VARCHAR(50) NULL DEFAULT '', 
	[chequeName] VARCHAR(50) NULL DEFAULT '',
    [paidDate] DATETIME NULL DEFAULT 0000-00-00, 
    [dateOnCheque] DATETIME NULL DEFAULT 0000-00-00, 
    [notes] VARCHAR(250) NULL DEFAULT '',  
    CONSTRAINT [FK_Finance_Invoice] FOREIGN KEY (invoiceId) REFERENCES [Invoice](invoiceId)
)
