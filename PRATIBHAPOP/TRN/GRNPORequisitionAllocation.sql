CREATE TABLE [TRN].[GRNPORequisitionAllocation] (
    [Id]             VARCHAR (50)     NOT NULL,
    [GRNID]          VARCHAR (50)     NOT NULL,
    [POReqDetailsID] VARCHAR (10)     NULL,
    [Qty]            DECIMAL (18, 10) NULL,
    [BaseQty]        DECIMAL (18, 10) NULL,
    [AddedBy]        VARCHAR (10)     NOT NULL,
    [AddedDate]      DATETIME         NOT NULL,
    [AddedFromIP]    VARCHAR (15)     NOT NULL,
    [UpdatedBy]      VARCHAR (10)     NULL,
    [UpdatedDate]    DATETIME         NULL,
    [UpdatedFromIP]  VARCHAR (15)     NULL,
    [RejectQty]      DECIMAL (18, 4)  NULL,
    [RejectBaseQty]  DECIMAL (18, 4)  NULL,
    [SalesOrderId]   VARCHAR (20)     NULL,
    CONSTRAINT [PK_GRNPORequisitionAllocation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_GRNPORequisitionAllocation_InventoryReceiveDetail] FOREIGN KEY ([GRNID]) REFERENCES [TRN].[InventoryReceiveDetail] ([Id]),
    CONSTRAINT [FK_GRNPORequisitionAllocation_SalesOrderId] FOREIGN KEY ([SalesOrderId]) REFERENCES [TRN].[SalesOrder] ([Id])
);

