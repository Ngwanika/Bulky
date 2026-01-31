

--update-database 
--add-migration addCategoryTableToDB
--add-migration seedCategoryTable

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
CREATE TABLE [dbo].[Categories] (
	[Id]          INT           IDENTITY (1, 1) NOT NULL,
	[Name]        NVARCHAR (50) NOT NULL,
	[DisplayOrder] INT          NOT NULL,
	CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED ([Id] ASC)
);