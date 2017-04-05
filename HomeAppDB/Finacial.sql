CREATE TABLE [dbo].[Finacial]
(
	[finacialId] INT NOT NULL PRIMARY KEY, 
    [invoiceId] INT NOT NULL, 
    [postDate] DATETIME NOT NULL, 
    [totalDue] DECIMAL(19, 2) NULL, 
    [amountPaid] DECIMAL(19, 2) NULL, 
    [chequeNumber] VARCHAR(50) NULL, 
    [paidDate] DATETIME NULL, 
    [dateOnCheque] DATETIME NULL, 
    [notes] VARCHAR(250) NULL, 
    CONSTRAINT [FK_Finance_Invoice] FOREIGN KEY (invoiceId) REFERENCES [Invoice](invoiceId)
)
