CREATE TABLE [dbo].[Finacial]
(
	[finacialId] INT NOT NULL PRIMARY KEY , 
    [invoiceId] INT NOT NULL DEFAULT 0, 
    [postDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [totalDue] DECIMAL(19, 2) NOT NULL DEFAULT 0, 
    [amountPaid] DECIMAL(19, 2) NULL DEFAULT 0, 
    [chequeNumber] VARCHAR(50) NULL DEFAULT '', 
	[chequeName] VARCHAR(50) NULL DEFAULT '',
    [paidDate] DATETIME NULL DEFAULT GETDATE(), 
    [dateOnCheque] DATETIME NULL DEFAULT GETDATE(), 
    [notes] VARCHAR(250) NULL DEFAULT '',  
    CONSTRAINT [FK_Finance_Invoice] FOREIGN KEY (invoiceId) REFERENCES [Invoice](invoiceId)
)
