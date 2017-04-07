CREATE TABLE [dbo].[Invoice]
(
	[invoiceId] INT NOT NULL PRIMARY KEY DEFAULT 00000, 
    [serviceDate] DATETIME NOT NULL DEFAULT 0000-00-00, 
    [invoiceDate] DATETIME NOT NULL DEFAULT 0000-00-00, 
    [customerId] INT NOT NULL DEFAULT 00000, 
    [propertyId] INT NOT NULL DEFAULT 00000, 
    [technicianId] INT NOT NULL DEFAULT 0, 
    [serviceCharge] DECIMAL(19, 2) NULL DEFAULT 0, 
    [labour] DECIMAL(19, 2) NULL DEFAULT 0, 
    [partTotal] DECIMAL(19, 2) NULL DEFAULT 0, 
    [subTotal] DECIMAL(19, 2) NOT NULL DEFAULT 0, 
    [chargeGST] CHAR(1) NULL DEFAULT 'Y', 
    [GST] DECIMAL(19, 2) NOT NULL DEFAULT 0, 
	[PST] DECIMAL(19, 2) NULL DEFAULT 0,
    [grossTotal] DECIMAL(19, 2) NOT NULL DEFAULT 0, 
    [complaints] VARCHAR(250) NULL DEFAULT '', 
    [notes] VARCHAR(250) NULL DEFAULT '', 
    [poNumber] VARCHAR(40) NULL DEFAULT '', 
    [make] VARCHAR(30) NULL DEFAULT '',
	[model] VARCHAR(30) NULL DEFAULT '', 
	[serialNumber] VARCHAR(30) NULL DEFAULT '', 
     
    CONSTRAINT [FK_Invoice_Customer] FOREIGN KEY (customerId) REFERENCES [Customer](customerId), 
    CONSTRAINT [FK_Invoice_Property] FOREIGN KEY (propertyId) REFERENCES [Property](propertyId), 
    CONSTRAINT [FK_Invoice_Technicain] FOREIGN KEY (technicianId) REFERENCES [Technician](technicianId)
)
