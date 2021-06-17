CREATE TABLE [TRN].[SalesOrderItem] (
    [Id]                VARCHAR (30) NOT NULL,
    [SalesId]           VARCHAR (10) NOT NULL,
    [MasterOrderId]     VARCHAR (10) NOT NULL,
    [MasterOrderItemId] VARCHAR (10) NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_SalesOrderItem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [SalesOrderItem_MasterOrder] FOREIGN KEY ([MasterOrderId]) REFERENCES [TRN].[MasterOrder] ([Id]),
    CONSTRAINT [SalesOrderItem_MasterOrderItem] FOREIGN KEY ([MasterOrderItemId]) REFERENCES [TRN].[MasterOrderItem] ([Id]),
    CONSTRAINT [SalesOrderItem_Sales] FOREIGN KEY ([SalesId]) REFERENCES [TRN].[Sales] ([Id])
);

