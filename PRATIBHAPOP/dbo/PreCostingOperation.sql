CREATE TABLE [dbo].[PreCostingOperation] (
    [Id]                      VARCHAR (10)    NOT NULL,
    [CostingItemId]           VARCHAR (10)    NULL,
    [CostingMasterTemplateId] VARCHAR (10)    NULL,
    [Value]                   DECIMAL (18, 5) NULL,
    [Description]             VARCHAR (250)   NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    [ResponsiblePersoinId]    VARCHAR (30)    NULL,
    CONSTRAINT [PK_PreCostingOperation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PreCostingOperation_CostingItem] FOREIGN KEY ([CostingItemId]) REFERENCES [HKP].[CostingItem] ([Id]),
    CONSTRAINT [FK_PreCostingOperation_CostingMasterTemplate] FOREIGN KEY ([CostingMasterTemplateId]) REFERENCES [dbo].[CostingMasterTemplate] ([Id]),
    CONSTRAINT [FK_PreCostingOperation_EmployeeInformation] FOREIGN KEY ([ResponsiblePersoinId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

