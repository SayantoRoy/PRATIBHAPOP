CREATE TABLE [SCS].[FabricRollMasterIncrementValue] (
    [Id]             INT IDENTITY (1, 1) NOT NULL,
    [Year]           INT NOT NULL,
    [Month]          INT NOT NULL,
    [Day]            INT NOT NULL,
    [IncrementValue] INT NOT NULL,
    CONSTRAINT [PK_FabricRollMasterIncrementValue] PRIMARY KEY CLUSTERED ([Id] ASC)
);

