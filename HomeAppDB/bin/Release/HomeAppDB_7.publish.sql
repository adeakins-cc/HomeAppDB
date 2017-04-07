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
PRINT N'Creating [dbo].[PartsList]...';


GO
CREATE TABLE [dbo].[PartsList] (
    [partListId]   INT             NOT NULL,
    [invoiceId]    INT             NOT NULL,
    [partId]       INT             NOT NULL,
    [editPrice]    DECIMAL (19, 2) NOT NULL,
    [quantity]     INT             NOT NULL,
    [categoryName] VARCHAR (100)   NOT NULL,
    PRIMARY KEY CLUSTERED ([partListId] ASC)
);


GO
PRINT N'Creating unnamed constraint on [dbo].[PartsList]...';


GO
ALTER TABLE [dbo].[PartsList]
    ADD DEFAULT 0 FOR [invoiceId];


GO
PRINT N'Creating unnamed constraint on [dbo].[PartsList]...';


GO
ALTER TABLE [dbo].[PartsList]
    ADD DEFAULT 0 FOR [partId];


GO
PRINT N'Creating unnamed constraint on [dbo].[PartsList]...';


GO
ALTER TABLE [dbo].[PartsList]
    ADD DEFAULT 0 FOR [editPrice];


GO
PRINT N'Creating unnamed constraint on [dbo].[PartsList]...';


GO
ALTER TABLE [dbo].[PartsList]
    ADD DEFAULT 0 FOR [quantity];


GO
PRINT N'Creating unnamed constraint on [dbo].[PartsList]...';


GO
ALTER TABLE [dbo].[PartsList]
    ADD DEFAULT '' FOR [categoryName];


GO
PRINT N'Creating [dbo].[FK_PartList_Invoice]...';


GO
ALTER TABLE [dbo].[PartsList] WITH NOCHECK
    ADD CONSTRAINT [FK_PartList_Invoice] FOREIGN KEY ([invoiceId]) REFERENCES [dbo].[Invoice] ([invoiceId]);


GO
PRINT N'Creating [dbo].[FK_PartList_Part]...';


GO
ALTER TABLE [dbo].[PartsList] WITH NOCHECK
    ADD CONSTRAINT [FK_PartList_Part] FOREIGN KEY ([partId]) REFERENCES [dbo].[Part] ([partId]);


GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[PartsList] WITH CHECK CHECK CONSTRAINT [FK_PartList_Invoice];

ALTER TABLE [dbo].[PartsList] WITH CHECK CHECK CONSTRAINT [FK_PartList_Part];


GO
PRINT N'Update complete.';


GO
