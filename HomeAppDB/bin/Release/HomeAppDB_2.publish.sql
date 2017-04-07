﻿/*
Deployment script for HomeAppDB

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "HomeAppDB"
:setvar DefaultFilePrefix "HomeAppDB"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Creating unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer]
    ADD DEFAULT 01-01-2011 FOR [DateActive];


GO
PRINT N'Creating unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer]
    ADD DEFAULT 01-01-2011 FOR [DateModified];


GO
PRINT N'Creating unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer]
    ADD DEFAULT '' FOR [contactEmail];


GO
PRINT N'Creating unnamed constraint on [dbo].[Finacial]...';


GO
ALTER TABLE [dbo].[Finacial]
    ADD DEFAULT 0 FOR [invoiceId];


GO
PRINT N'Creating unnamed constraint on [dbo].[Finacial]...';


GO
ALTER TABLE [dbo].[Finacial]
    ADD DEFAULT 01-01-2011 FOR [postDate];


GO
PRINT N'Creating unnamed constraint on [dbo].[Finacial]...';


GO
ALTER TABLE [dbo].[Finacial]
    ADD DEFAULT 0 FOR [totalDue];


GO
PRINT N'Creating unnamed constraint on [dbo].[Finacial]...';


GO
ALTER TABLE [dbo].[Finacial]
    ADD DEFAULT 0 FOR [amountPaid];


GO
PRINT N'Creating unnamed constraint on [dbo].[Finacial]...';


GO
ALTER TABLE [dbo].[Finacial]
    ADD DEFAULT '' FOR [chequeNumber];


GO
PRINT N'Creating unnamed constraint on [dbo].[Finacial]...';


GO
ALTER TABLE [dbo].[Finacial]
    ADD DEFAULT '' FOR [chequeName];


GO
PRINT N'Creating unnamed constraint on [dbo].[Finacial]...';


GO
ALTER TABLE [dbo].[Finacial]
    ADD DEFAULT 01-01-2011 FOR [paidDate];


GO
PRINT N'Creating unnamed constraint on [dbo].[Finacial]...';


GO
ALTER TABLE [dbo].[Finacial]
    ADD DEFAULT 01-01-2011 FOR [dateOnCheque];


GO
PRINT N'Creating unnamed constraint on [dbo].[Finacial]...';


GO
ALTER TABLE [dbo].[Finacial]
    ADD DEFAULT '' FOR [notes];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 01-01-2011 FOR [serviceDate];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 01-01-2011 FOR [invoiceDate];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 0 FOR [customerId];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 0 FOR [propertyId];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 0 FOR [technicianId];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 0 FOR [serviceCharge];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 0 FOR [labour];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 0 FOR [partTotal];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 0 FOR [subTotal];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 'Y' FOR [chargeGST];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 0 FOR [GST];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 0 FOR [PST];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT 0 FOR [grossTotal];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT '' FOR [complaints];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT '' FOR [notes];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT '' FOR [poNumber];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT '' FOR [make];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT '' FOR [model];


GO
PRINT N'Creating unnamed constraint on [dbo].[Invoice]...';


GO
ALTER TABLE [dbo].[Invoice]
    ADD DEFAULT '' FOR [serialNumber];


GO
PRINT N'Creating unnamed constraint on [dbo].[Part]...';


GO
ALTER TABLE [dbo].[Part]
    ADD DEFAULT 0 FOR [categoryId];


GO
PRINT N'Creating unnamed constraint on [dbo].[Part]...';


GO
ALTER TABLE [dbo].[Part]
    ADD DEFAULT '' FOR [name];


GO
PRINT N'Creating unnamed constraint on [dbo].[Part]...';


GO
ALTER TABLE [dbo].[Part]
    ADD DEFAULT 0 FOR [price];


GO
PRINT N'Creating unnamed constraint on [dbo].[PartsUsed]...';


GO
ALTER TABLE [dbo].[PartsUsed]
    ADD DEFAULT 0 FOR [invoiceId];


GO
PRINT N'Creating unnamed constraint on [dbo].[PartsUsed]...';


GO
ALTER TABLE [dbo].[PartsUsed]
    ADD DEFAULT 0 FOR [partId];


GO
PRINT N'Creating unnamed constraint on [dbo].[PartsUsed]...';


GO
ALTER TABLE [dbo].[PartsUsed]
    ADD DEFAULT 0 FOR [editPrice];


GO
PRINT N'Creating unnamed constraint on [dbo].[PartsUsed]...';


GO
ALTER TABLE [dbo].[PartsUsed]
    ADD DEFAULT 0 FOR [quantity];


GO
PRINT N'Creating unnamed constraint on [dbo].[PartsUsed]...';


GO
ALTER TABLE [dbo].[PartsUsed]
    ADD DEFAULT '' FOR [categoryName];


GO
PRINT N'Creating unnamed constraint on [dbo].[Property]...';


GO
ALTER TABLE [dbo].[Property]
    ADD DEFAULT 0 FOR [customerId];


GO
PRINT N'Creating unnamed constraint on [dbo].[Property]...';


GO
ALTER TABLE [dbo].[Property]
    ADD DEFAULT 0 FOR [unitNumber];


GO
PRINT N'Creating unnamed constraint on [dbo].[Property]...';


GO
ALTER TABLE [dbo].[Property]
    ADD DEFAULT 0 FOR [streetNumber];


GO
PRINT N'Creating unnamed constraint on [dbo].[Property]...';


GO
ALTER TABLE [dbo].[Property]
    ADD DEFAULT '' FOR [streetName];


GO
PRINT N'Creating unnamed constraint on [dbo].[Property]...';


GO
ALTER TABLE [dbo].[Property]
    ADD DEFAULT 0 FOR [cityId];


GO
PRINT N'Creating unnamed constraint on [dbo].[Property]...';


GO
ALTER TABLE [dbo].[Property]
    ADD DEFAULT '' FOR [superintendent];


GO
PRINT N'Creating unnamed constraint on [dbo].[Property]...';


GO
ALTER TABLE [dbo].[Property]
    ADD DEFAULT 0 FOR [superintendentPhone];


GO
PRINT N'Creating unnamed constraint on [dbo].[Property]...';


GO
ALTER TABLE [dbo].[Property]
    ADD DEFAULT 01-01-2011 FOR [DateActive];


GO
PRINT N'Creating unnamed constraint on [dbo].[Property]...';


GO
ALTER TABLE [dbo].[Property]
    ADD DEFAULT 01-01-2011 FOR [DateModified];


GO
PRINT N'Creating unnamed constraint on [dbo].[Taxes]...';


GO
ALTER TABLE [dbo].[Taxes]
    ADD DEFAULT '' FOR [name];


GO
PRINT N'Creating unnamed constraint on [dbo].[Taxes]...';


GO
ALTER TABLE [dbo].[Taxes]
    ADD DEFAULT 0 FOR [rate];


GO
PRINT N'Creating unnamed constraint on [dbo].[Technician]...';


GO
ALTER TABLE [dbo].[Technician]
    ADD DEFAULT '' FOR [name];


GO
PRINT N'Creating [dbo].[FK_Customer_City_01]...';


GO
ALTER TABLE [dbo].[Customer] WITH NOCHECK
    ADD CONSTRAINT [FK_Customer_City_01] FOREIGN KEY ([cityId_01]) REFERENCES [dbo].[City] ([cityId]);


GO
PRINT N'Creating [dbo].[FK_Customer_City_02]...';


GO
ALTER TABLE [dbo].[Customer] WITH NOCHECK
    ADD CONSTRAINT [FK_Customer_City_02] FOREIGN KEY ([cityId_02]) REFERENCES [dbo].[City] ([cityId]);


GO
PRINT N'Creating [dbo].[FK_Finance_Invoice]...';


GO
ALTER TABLE [dbo].[Finacial] WITH NOCHECK
    ADD CONSTRAINT [FK_Finance_Invoice] FOREIGN KEY ([invoiceId]) REFERENCES [dbo].[Invoice] ([invoiceId]);


GO
PRINT N'Creating [dbo].[FK_Invoice_Customer]...';


GO
ALTER TABLE [dbo].[Invoice] WITH NOCHECK
    ADD CONSTRAINT [FK_Invoice_Customer] FOREIGN KEY ([customerId]) REFERENCES [dbo].[Customer] ([customerId]);


GO
PRINT N'Creating [dbo].[FK_Invoice_Property]...';


GO
ALTER TABLE [dbo].[Invoice] WITH NOCHECK
    ADD CONSTRAINT [FK_Invoice_Property] FOREIGN KEY ([propertyId]) REFERENCES [dbo].[Property] ([propertyId]);


GO
PRINT N'Creating [dbo].[FK_Invoice_Technicain]...';


GO
ALTER TABLE [dbo].[Invoice] WITH NOCHECK
    ADD CONSTRAINT [FK_Invoice_Technicain] FOREIGN KEY ([technicianId]) REFERENCES [dbo].[Technician] ([technicianId]);


GO
PRINT N'Creating [dbo].[FK_Part_Category]...';


GO
ALTER TABLE [dbo].[Part] WITH NOCHECK
    ADD CONSTRAINT [FK_Part_Category] FOREIGN KEY ([categoryId]) REFERENCES [dbo].[Category] ([categoryId]);


GO
PRINT N'Creating [dbo].[FK_PartList_Invoice]...';


GO
ALTER TABLE [dbo].[PartsUsed] WITH NOCHECK
    ADD CONSTRAINT [FK_PartList_Invoice] FOREIGN KEY ([invoiceId]) REFERENCES [dbo].[Invoice] ([invoiceId]);


GO
PRINT N'Creating [dbo].[FK_PartList_Part]...';


GO
ALTER TABLE [dbo].[PartsUsed] WITH NOCHECK
    ADD CONSTRAINT [FK_PartList_Part] FOREIGN KEY ([partId]) REFERENCES [dbo].[Part] ([partId]);


GO
PRINT N'Creating [dbo].[FK_Property_City]...';


GO
ALTER TABLE [dbo].[Property] WITH NOCHECK
    ADD CONSTRAINT [FK_Property_City] FOREIGN KEY ([cityId]) REFERENCES [dbo].[City] ([cityId]);


GO
PRINT N'Creating [dbo].[FK_Property_Customer]...';


GO
ALTER TABLE [dbo].[Property] WITH NOCHECK
    ADD CONSTRAINT [FK_Property_Customer] FOREIGN KEY ([customerId]) REFERENCES [dbo].[Customer] ([customerId]);


GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[Customer] WITH CHECK CHECK CONSTRAINT [FK_Customer_City_01];

ALTER TABLE [dbo].[Customer] WITH CHECK CHECK CONSTRAINT [FK_Customer_City_02];

ALTER TABLE [dbo].[Finacial] WITH CHECK CHECK CONSTRAINT [FK_Finance_Invoice];

ALTER TABLE [dbo].[Invoice] WITH CHECK CHECK CONSTRAINT [FK_Invoice_Customer];

ALTER TABLE [dbo].[Invoice] WITH CHECK CHECK CONSTRAINT [FK_Invoice_Property];

ALTER TABLE [dbo].[Invoice] WITH CHECK CHECK CONSTRAINT [FK_Invoice_Technicain];

ALTER TABLE [dbo].[Part] WITH CHECK CHECK CONSTRAINT [FK_Part_Category];

ALTER TABLE [dbo].[PartsUsed] WITH CHECK CHECK CONSTRAINT [FK_PartList_Invoice];

ALTER TABLE [dbo].[PartsUsed] WITH CHECK CHECK CONSTRAINT [FK_PartList_Part];

ALTER TABLE [dbo].[Property] WITH CHECK CHECK CONSTRAINT [FK_Property_City];

ALTER TABLE [dbo].[Property] WITH CHECK CHECK CONSTRAINT [FK_Property_Customer];


GO
PRINT N'Update complete.';


GO
