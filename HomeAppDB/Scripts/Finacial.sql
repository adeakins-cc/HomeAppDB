CREATE TABLE [dbo].[Finacial]
(
	[finacialId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [postDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [invoiceId] INT NOT NULL DEFAULT 0,  
    [totalDue] DECIMAL(19, 2) NOT NULL DEFAULT 0, 
    [amountPaid] DECIMAL(19, 2) NULL DEFAULT 0, 
	[notes] VARCHAR(250) NULL DEFAULT '',
	[paidDate] DATETIME NULL DEFAULT GETDATE(),
	[chequeName] VARCHAR(50) NULL DEFAULT '',
    [chequeNumber] VARCHAR(50) NULL DEFAULT '',
    [dateOnCheque] DATETIME NULL DEFAULT GETDATE(), 
      
    CONSTRAINT [FK_Finance_Invoice] FOREIGN KEY (invoiceId) REFERENCES [Invoice](invoiceId)
)
