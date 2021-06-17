CREATE TABLE [TRN].[ProductionOrderDetail] (
    [Id]                   VARCHAR (30) NOT NULL,
    [ProductionOrderId]    VARCHAR (30) NOT NULL,
    [SalesOrderId]         VARCHAR (20) NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    [RecipeGlobalMasterId] VARCHAR (30) NULL,
    CONSTRAINT [PK_ProductionBatchDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductionOrderDetail_ProductionOrder] FOREIGN KEY ([ProductionOrderId]) REFERENCES [TRN].[ProductionOrder] ([Id]),
    CONSTRAINT [FK_ProductionOrderDetail_SalesOrder] FOREIGN KEY ([SalesOrderId]) REFERENCES [TRN].[SalesOrder] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [Ind_ProductionOrderDetail_ProductionOrderSalesOrderId]
    ON [TRN].[ProductionOrderDetail]([ProductionOrderId] ASC, [SalesOrderId] ASC);

