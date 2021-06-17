﻿CREATE TABLE [TRN].[SalesOrder] (
    [Id]                          VARCHAR (20)     NOT NULL,
    [MasterOrderItemId]           VARCHAR (10)     NOT NULL,
    [DeliveryDate]                DATE             NULL,
    [DestinationId]               VARCHAR (10)     NULL,
    [CommitmentDate]              DATE             NULL,
    [ShipmentModeId]              VARCHAR (10)     NULL,
    [CustomerPOId]                VARCHAR (20)     NULL,
    [UpCharge]                    DECIMAL (18)     NOT NULL,
    [OrderStatusId]               VARCHAR (10)     NULL,
    [OrderCategoryId]             VARCHAR (10)     NULL,
    [SOType]                      VARCHAR (20)     NULL,
    [ResponsiblePersonId]         VARCHAR (10)     NULL,
    [Qty]                         DECIMAL (18, 2)  NULL,
    [Rate]                        DECIMAL (18, 4)  NULL,
    [IsFirstEntry]                BIT              NOT NULL,
    [AddedBy]                     VARCHAR (30)     NOT NULL,
    [AddedDate]                   DATETIME         NOT NULL,
    [AddedFromIP]                 VARCHAR (15)     NOT NULL,
    [UpdatedBy]                   VARCHAR (30)     NULL,
    [UpdatedDate]                 DATETIME         NULL,
    [UpdatedFromIP]               VARCHAR (15)     NULL,
    [ConfirmDate]                 DATE             NULL,
    [TotalTaxAmount]              DECIMAL (18, 10) NOT NULL,
    [Discount]                    DECIMAL (18, 2)  DEFAULT ((0)) NULL,
    [IsConfirm]                   BIT              DEFAULT ((0)) NOT NULL,
    [ConfirmationEntryDate]       DATETIME         NULL,
    [ConfirmationEntryBy]         VARCHAR (30)     NULL,
    [LSD]                         DATETIME         NULL,
    [ParentId]                    VARCHAR (20)     NULL,
    [MainRawMaterialInhouseDate]  DATETIME         NULL,
    [OtherRawMaterialInhouseDate] DATETIME         NULL,
    [Description]                 VARCHAR (250)    NULL,
    [CM]                          DECIMAL (18, 2)  NULL,
    [SalesOrderYear]              VARCHAR (9)      NULL,
    [WeekNo]                      INT              NULL,
    [PlanExFactoryDate]           DATETIME         NULL,
    [Reason]                      VARCHAR (250)    NULL,
    [OrderStatus]                 VARCHAR (10)     NULL,
    [ProductionBookingLevel]      VARCHAR (15)     NULL,
    [ProductionBookedQty]         DECIMAL (18, 2)  DEFAULT ((0)) NULL,
    [OrderStatusChangedBy]        VARCHAR (30)     NULL,
    [OrderStatusChangedDate]      DATETIME         NULL,
    [OrderStatusChangedFromIP]    VARCHAR (30)     NULL,
    [DestinationDescription]      VARCHAR (250)    NULL,
    [SalesExpense]                DECIMAL (18, 4)  NULL,
    CONSTRAINT [PK_SalesOrder] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalesOrder_CustomerPO] FOREIGN KEY ([CustomerPOId]) REFERENCES [TRN].[CustomerPO] ([Id]),
    CONSTRAINT [FK_SalesOrder_Destination] FOREIGN KEY ([DestinationId]) REFERENCES [MST].[Destination] ([Id]),
    CONSTRAINT [FK_SalesOrder_MasterOrderItem] FOREIGN KEY ([MasterOrderItemId]) REFERENCES [TRN].[MasterOrderItem] ([Id]),
    CONSTRAINT [FK_SalesOrder_OrderCategory] FOREIGN KEY ([OrderCategoryId]) REFERENCES [HKP].[OrderCategory] ([Id]),
    CONSTRAINT [FK_SalesOrder_OrderStatus] FOREIGN KEY ([OrderStatusId]) REFERENCES [HKP].[OrderStatus] ([Id]),
    CONSTRAINT [FK_SalesOrder_ShipMode] FOREIGN KEY ([ShipmentModeId]) REFERENCES [MST].[ShipMode] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [Ind_SalesOrder_MasterOrderItemId]
    ON [TRN].[SalesOrder]([Id] ASC, [MasterOrderItemId] ASC);
