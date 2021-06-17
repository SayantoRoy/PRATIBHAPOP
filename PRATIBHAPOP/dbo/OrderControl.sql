CREATE TABLE [dbo].[OrderControl] (
    [Id]                VARCHAR (30) NOT NULL,
    [ControlTypeId]     VARCHAR (30) NULL,
    [SalesOrderId]      VARCHAR (20) NULL,
    [ProductionOrderId] VARCHAR (30) NULL,
    [CriticalityLevel]  VARCHAR (30) NULL,
    [Status]            VARCHAR (30) NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_OrderControl] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OrderControl_OrderControlTypes] FOREIGN KEY ([ControlTypeId]) REFERENCES [dbo].[OrderControlTypes] ([Id]),
    CONSTRAINT [FK_OrderControl_ProductionOrder] FOREIGN KEY ([ProductionOrderId]) REFERENCES [TRN].[ProductionOrder] ([Id]),
    CONSTRAINT [FK_OrderControl_SalesOrder] FOREIGN KEY ([SalesOrderId]) REFERENCES [TRN].[SalesOrder] ([Id])
);

