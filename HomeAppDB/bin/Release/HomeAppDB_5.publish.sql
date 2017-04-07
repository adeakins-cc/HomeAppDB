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
/*
The column [dbo].[Customer].[contactPhone] is being dropped, data loss could occur.
*/

IF EXISTS (select top 1 1 from [dbo].[Customer])
    RAISERROR (N'Rows were detected. The schema update is terminating because data loss might occur.', 16, 127) WITH NOWAIT

GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__DateAc__4CA06362];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__DateMo__4D94879B];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__contac__4E88ABD4];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__bussin__0E6E26BF];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__contac__0F624AF8];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__fax__10566F31];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__contac__114A936A];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__firstN__286302EC];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__lastNa__29572725];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__compan__2A4B4B5E];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__street__2D27B809];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__postal__2E1BDC42];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__street__30F848ED];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__postal__31EC6D26];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__cityId__32E0915F];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__cityId__33D4B598];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__contac__38996AB5];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__commen__398D8EEE];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__street__07C12930];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__street__08B54D69];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__unitNu__09A971A2];


GO
PRINT N'Dropping unnamed constraint on [dbo].[Customer]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF__Customer__unitNu__0A9D95DB];


GO
PRINT N'Dropping [dbo].[FK_Customer_City_01]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_City_01];


GO
PRINT N'Dropping [dbo].[FK_Customer_City_02]...';


GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_City_02];


GO
PRINT N'Dropping [dbo].[FK_Invoice_Customer]...';


GO
ALTER TABLE [dbo].[Invoice] DROP CONSTRAINT [FK_Invoice_Customer];


GO
PRINT N'Dropping [dbo].[FK_Property_Customer]...';


GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK_Property_Customer];


GO
PRINT N'Starting rebuilding table [dbo].[Customer]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_Customer] (
    [customerId]      INT           NOT NULL,
    [firstName]       VARCHAR (25)  DEFAULT '' NOT NULL,
    [lastName]        VARCHAR (30)  DEFAULT '' NOT NULL,
    [companyName]     VARCHAR (50)  DEFAULT '' NULL,
    [unitNumber01]    VARCHAR (10)  DEFAULT 0 NULL,
    [streetNumber01]  VARCHAR (10)  DEFAULT 0 NOT NULL,
    [streetName_01]   VARCHAR (50)  DEFAULT '' NOT NULL,
    [cityId_01]       INT           DEFAULT 0 NOT NULL,
    [postalCode_01]   VARCHAR (10)  DEFAULT '' NOT NULL,
    [unitNumber_02]   VARCHAR (10)  DEFAULT 0 NULL,
    [streetNumber_02] VARCHAR (10)  DEFAULT 0 NULL,
    [streetName_02]   VARCHAR (50)  DEFAULT '' NULL,
    [cityId_02]       INT           DEFAULT 0 NULL,
    [postalCode_02]   VARCHAR (10)  DEFAULT '' NULL,
    [bussinessPhone]  VARCHAR (15)  DEFAULT '' NULL,
    [homePhone]       VARCHAR (15)  DEFAULT '' NOT NULL,
    [fax]             VARCHAR (15)  DEFAULT '' NULL,
    [contactMobile]   VARCHAR (15)  DEFAULT '' NULL,
    [contactName]     VARCHAR (255) DEFAULT '' NULL,
    [comments]        VARCHAR (255) DEFAULT '' NULL,
    [DateActive]      DATE          DEFAULT GETDATE() NULL,
    [DateModified]    DATE          DEFAULT GETDATE() NULL,
    [contactEmail]    VARCHAR (100) DEFAULT '' NULL,
    PRIMARY KEY CLUSTERED ([customerId] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[Customer])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_Customer] ([customerId], [firstName], [lastName], [companyName], [unitNumber01], [streetNumber01], [streetName_01], [postalCode_01], [unitNumber_02], [streetNumber_02], [streetName_02], [postalCode_02], [cityId_01], [cityId_02], [bussinessPhone], [fax], [contactMobile], [contactName], [comments], [DateActive], [DateModified], [contactEmail])
        SELECT   [customerId],
                 [firstName],
                 [lastName],
                 [companyName],
                 [unitNumber01],
                 [streetNumber01],
                 [streetName_01],
                 [postalCode_01],
                 [unitNumber_02],
                 [streetNumber_02],
                 [streetName_02],
                 [postalCode_02],
                 [cityId_01],
                 [cityId_02],
                 [bussinessPhone],
                 [fax],
                 [contactMobile],
                 [contactName],
                 [comments],
                 [DateActive],
                 [DateModified],
                 [contactEmail]
        FROM     [dbo].[Customer]
        ORDER BY [customerId] ASC;
    END

DROP TABLE [dbo].[Customer];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_Customer]', N'Customer';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


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
PRINT N'Creating [dbo].[FK_Invoice_Customer]...';


GO
ALTER TABLE [dbo].[Invoice] WITH NOCHECK
    ADD CONSTRAINT [FK_Invoice_Customer] FOREIGN KEY ([customerId]) REFERENCES [dbo].[Customer] ([customerId]);


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

ALTER TABLE [dbo].[Invoice] WITH CHECK CHECK CONSTRAINT [FK_Invoice_Customer];

ALTER TABLE [dbo].[Property] WITH CHECK CHECK CONSTRAINT [FK_Property_Customer];


GO
PRINT N'Update complete.';


GO