CREATE TABLE [dbo].[OrderProcurementCostingOperation] (
    [Id]                           VARCHAR (10)    NOT NULL,
    [CostingItemId]                VARCHAR (10)    NULL,
    [OrderCostingMasterTemplateId] VARCHAR (10)    NULL,
    [Value]                        DECIMAL (18, 5) NULL,
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
    CONSTRAINT [PK_OrderProcurementCostingOperation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TRK0OrderProcurementCostingOperation_CostingItem] FOREIGN KEY ([CostingItemId]) REFERENCES [HKP].[CostingItem] ([Id]),
    CONSTRAINT [FK_TRK0OrderProcurementCostingOperation_EmployeeInformation] FOREIGN KEY ([ResponsiblePersoinId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_TRK0OrderProcurementCostingOperation_OrderCostingMasterTemplate] FOREIGN KEY ([OrderCostingMasterTemplateId]) REFERENCES [dbo].[OrderCostingMasterTemplate] ([Id])
);

