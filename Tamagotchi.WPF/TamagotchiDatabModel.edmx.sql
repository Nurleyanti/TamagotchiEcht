
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/18/2016 19:21:17
-- Generated from EDMX file: c:\users\nurleyanti\documents\visual studio 2015\Projects\Tamagotchi.WCF\Tamagotchi.WPF\TamagotchiDatabModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TamagotchiDatabase];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TamagotchiSet'
CREATE TABLE [dbo].[TamagotchiSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Age] nvarchar(max)  NOT NULL,
    [Hunger] nvarchar(max)  NOT NULL,
    [Sleep] nvarchar(max)  NOT NULL,
    [Boredom] nvarchar(max)  NOT NULL,
    [Health] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RuleSet'
CREATE TABLE [dbo].[RuleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RuleTamagotchi'
CREATE TABLE [dbo].[RuleTamagotchi] (
    [Rule_Id] int  NOT NULL,
    [Tamagotchi_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'TamagotchiSet'
ALTER TABLE [dbo].[TamagotchiSet]
ADD CONSTRAINT [PK_TamagotchiSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RuleSet'
ALTER TABLE [dbo].[RuleSet]
ADD CONSTRAINT [PK_RuleSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Rule_Id], [Tamagotchi_Id] in table 'RuleTamagotchi'
ALTER TABLE [dbo].[RuleTamagotchi]
ADD CONSTRAINT [PK_RuleTamagotchi]
    PRIMARY KEY CLUSTERED ([Rule_Id], [Tamagotchi_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Rule_Id] in table 'RuleTamagotchi'
ALTER TABLE [dbo].[RuleTamagotchi]
ADD CONSTRAINT [FK_RuleTamagotchi_Rule]
    FOREIGN KEY ([Rule_Id])
    REFERENCES [dbo].[RuleSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tamagotchi_Id] in table 'RuleTamagotchi'
ALTER TABLE [dbo].[RuleTamagotchi]
ADD CONSTRAINT [FK_RuleTamagotchi_Tamagotchi]
    FOREIGN KEY ([Tamagotchi_Id])
    REFERENCES [dbo].[TamagotchiSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuleTamagotchi_Tamagotchi'
CREATE INDEX [IX_FK_RuleTamagotchi_Tamagotchi]
ON [dbo].[RuleTamagotchi]
    ([Tamagotchi_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------