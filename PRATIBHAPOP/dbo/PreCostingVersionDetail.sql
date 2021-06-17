CREATE TABLE [dbo].[PreCostingVersionDetail] (
    [Id]                        VARCHAR (10)    NOT NULL,
    [CostingItemId]             VARCHAR (10)    NULL,
    [PreCostingVersionMasterId] VARCHAR (10)    NULL,
    [Sequence]                  DECIMAL (18, 2) NULL,
    [CostingValue]              DECIMAL (18, 2) NULL,
    [BuyerTarget]               DECIMAL (18, 2) NULL,
    [AddedBy]                   VARCHAR (30)    NOT NULL,
    [AddedDate]                 DATETIME        NOT NULL,
    [AddedFromIP]               VARCHAR (15)    NOT NULL,
    [UpdatedBy]                 VARCHAR (30)    NULL,
    [UpdatedDate]               DATETIME        NULL,
    [UpdatedFromIP]             VARCHAR (15)    NULL,
    CONSTRAINT [PK_PreCostingVersionDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PreCostingVersionDetail_CostingItem] FOREIGN KEY ([CostingItemId]) REFERENCES [HKP].[CostingItem] ([Id]),
    CONSTRAINT [FK_PreCostingVersionDetail_PreCostingVersionMaster] FOREIGN KEY ([PreCostingVersionMasterId]) REFERENCES [dbo].[PreCostingVersionMaster] ([Id])
);

