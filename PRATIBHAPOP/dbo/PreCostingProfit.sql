﻿CREATE TABLE [dbo].[PreCostingProfit] (
    [Id]                      VARCHAR (10)    NOT NULL,
    [CostingItemId]           VARCHAR (10)    NULL,
    [CostingMasterTemplateId] VARCHAR (10)    NULL,
    [ResponsiblePersoinId]    VARCHAR (30)    NULL,
    [Type]                    VARCHAR (20)    NULL,
    [Value]                   DECIMAL (18, 5) NULL,
    [Amount]                  DECIMAL (18, 5) NULL,
    [Description]             VARCHAR (250)   NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CostingItemId]) REFERENCES [HKP].[CostingItem] ([Id]),
    FOREIGN KEY ([CostingMasterTemplateId]) REFERENCES [dbo].[CostingMasterTemplate] ([Id]),
    FOREIGN KEY ([ResponsiblePersoinId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

