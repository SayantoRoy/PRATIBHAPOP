CREATE TABLE [dbo].[ItemConsumtionMaster] (
    [Id]              VARCHAR (30)    NOT NULL,
    [ProductMasterId] VARCHAR (10)    NULL,
    [CostingItemId]   VARCHAR (10)    NULL,
    [AddedBy]         VARCHAR (30)    NOT NULL,
    [AddedDate]       DATETIME        NOT NULL,
    [AddedFromIP]     VARCHAR (15)    NOT NULL,
    [UpdatedBy]       VARCHAR (30)    NULL,
    [UpdatedDate]     DATETIME        NULL,
    [UpdatedFromIP]   VARCHAR (15)    NULL,
    [GSMValue]        DECIMAL (18, 4) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CostingItemId]) REFERENCES [HKP].[CostingItem] ([Id]),
    FOREIGN KEY ([ProductMasterId]) REFERENCES [MST].[ProductMaster] ([Id])
);

