CREATE TABLE [dbo].[OrderPreCostingDirectProcess] (
    [Id]                           VARCHAR (10)    NOT NULL,
    [CostingItemId]                VARCHAR (10)    NULL,
    [OrderCostingMasterTemplateId] VARCHAR (10)    NULL,
    [ExecutionType]                VARCHAR (20)    NULL,
    [Value]                        DECIMAL (18, 5) NULL,
    [Rate]                         DECIMAL (18, 5) NULL,
    [Amount]                       DECIMAL (18, 5) NULL,
    [Description]                  VARCHAR (250)   NULL,
    [AddedBy]                      VARCHAR (30)    NOT NULL,
    [AddedDate]                    DATETIME        NOT NULL,
    [AddedFromIP]                  VARCHAR (15)    NOT NULL,
    [UpdatedBy]                    VARCHAR (30)    NULL,
    [UpdatedDate]                  DATETIME        NULL,
    [UpdatedFromIP]                VARCHAR (15)    NULL,
    [ResponsiblePersoinId]         VARCHAR (30)    NULL,
    [FileName]                     NVARCHAR (100)  NULL,
    [FileOriginalName]             NVARCHAR (100)  NULL,
    CONSTRAINT [PK_OrderPreCostingDirectProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TRKOrderPreCostingDirectProcess_CostingItem] FOREIGN KEY ([CostingItemId]) REFERENCES [HKP].[CostingItem] ([Id]),
    CONSTRAINT [FK_TRKOrderPreCostingDirectProcess_EmployeeInformation] FOREIGN KEY ([ResponsiblePersoinId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_TRKOrderPreCostingDirectProcess_OrderCostingMasterTemplate] FOREIGN KEY ([OrderCostingMasterTemplateId]) REFERENCES [dbo].[OrderCostingMasterTemplate] ([Id])
);

