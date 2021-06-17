CREATE TABLE [MST].[MaterialMasterUsage] (
    [Id]               VARCHAR (10) NOT NULL,
    [MaterialMasterId] VARCHAR (30) NOT NULL,
    [BOM]              BIT          NOT NULL,
    [Recipe]           BIT          NOT NULL,
    CONSTRAINT [PK_MaterialMasterUsage] PRIMARY KEY CLUSTERED ([Id] ASC)
);

