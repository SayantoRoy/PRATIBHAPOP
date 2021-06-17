CREATE TABLE [dbo].[CostingBOQItems] (
    [Id]                                      VARCHAR (30) NOT NULL,
    [SalesOrderId]                            VARCHAR (20) NULL,
    [CostingBOQMasterId]                      VARCHAR (30) NULL,
    [OrderProcurementCostingDirectMaterialId] VARCHAR (10) NULL,
    [BOMMaterialRefNo]                        VARCHAR (20) NULL,
    [AddedBy]                                 VARCHAR (30) NULL,
    [AddedDate]                               DATETIME     NULL,
    [AddedFromIP]                             VARCHAR (15) NULL,
    [UpdatedBy]                               VARCHAR (30) NULL,
    [UpdatedDate]                             DATETIME     NULL,
    [UpdatedFromIP]                           VARCHAR (15) NULL,
    [CostingItemId]                           VARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CostingBOQMasterId]) REFERENCES [dbo].[CostingBOQMaster] ([Id]),
    FOREIGN KEY ([CostingItemId]) REFERENCES [HKP].[CostingItem] ([Id]),
    FOREIGN KEY ([OrderProcurementCostingDirectMaterialId]) REFERENCES [dbo].[OrderProcurementCostingDirectMaterial] ([Id]),
    FOREIGN KEY ([SalesOrderId]) REFERENCES [TRN].[SalesOrder] ([Id])
);

