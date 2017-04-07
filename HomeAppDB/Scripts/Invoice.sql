CREATE TABLE [dbo].[Invoice]
(
	[invoiceId] INT NOT NULL PRIMARY KEY , 
    [customerId] INT NOT NULL DEFAULT 0, 
    [propertyId] INT NOT NULL DEFAULT 0, 
    [serviceDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [invoiceDate] DATETIME NOT NULL DEFAULT GETDATE(), 
    [technicianId] INT NOT NULL DEFAULT 0, 
	[complaints] VARCHAR(250) NULL DEFAULT '', 
    [notes] VARCHAR(250) NULL DEFAULT '', 
    [partTotal] DECIMAL(19, 2) NULL DEFAULT 0, 
	[labour] DECIMAL(19, 2) NULL DEFAULT 0, 
    [serviceCharge] DECIMAL(19, 2) NULL DEFAULT 0, 
    [GST] DECIMAL(19, 2) NOT NULL DEFAULT 0, 
	[PST] DECIMAL(19, 2) NULL DEFAULT 0,
    [subTotal] DECIMAL(19, 2) NOT NULL DEFAULT 0, 
    [grossTotal] DECIMAL(19, 2) NOT NULL DEFAULT 0,  
    [poNumber] VARCHAR(40) NULL DEFAULT '', 
	[PSTExempt] varchar(20) NULL,
    [make] VARCHAR(30) NULL DEFAULT '',
	[model] VARCHAR(30) NULL DEFAULT '', 
	[serialNumber] VARCHAR(30) NULL DEFAULT '', 
     
    CONSTRAINT [FK_Invoice_Customer] FOREIGN KEY (customerId) REFERENCES [Customer](customerId), 
    CONSTRAINT [FK_Invoice_Property] FOREIGN KEY (propertyId) REFERENCES [Property](propertyId), 
    CONSTRAINT [FK_Invoice_Technicain] FOREIGN KEY (technicianId) REFERENCES [Technician](technicianId)
)
