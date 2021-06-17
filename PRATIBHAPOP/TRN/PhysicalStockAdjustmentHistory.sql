﻿CREATE TABLE [TRN].[PhysicalStockAdjustmentHistory] (
    [Id]                              VARCHAR (50)     NOT NULL,
    [PhysicalStockAdjustmentDetailId] VARCHAR (10)     NOT NULL,
    [InventoryReceiveDetailId]        VARCHAR (50)     NOT NULL,
    [Qty]                             DECIMAL (18, 10) NOT NULL,
    [Rate]                            DECIMAL (18, 10) NOT NULL,
    [AddedBy]                         VARCHAR (30)     NOT NULL,
    [AddedDate]                       DATETIME         NOT NULL,
    [AddedFromIP]                     VARCHAR (15)     NOT NULL,
    [UpdatedBy]                       VARCHAR (30)     NULL,
    [UpdatedDate]                     DATETIME         NULL,
    [UpdatedFromIP]                   VARCHAR (15)     NULL,
    [IsCapitalize]                    BIT              NULL,
    [CapitalizeVoucherDetailId]       VARCHAR (80)     NULL,
    [IsRegister]                      BIT              NULL,
    [IssueRequestDetailId]            VARCHAR (10)     NULL,
    [IssueReturnQty]                  DECIMAL (18, 2)  NULL,
    [TotalAmount]                     DECIMAL (18, 10) NULL,
    CONSTRAINT [PK_PhysicalStockAdjustmentHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PhysicalStockAdjustmentHistory_CapitalizeVoucherDetail] FOREIGN KEY ([CapitalizeVoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id]),
    CONSTRAINT [FK_PhysicalStockAdjustmentHistory_InventoryReceiveDetail] FOREIGN KEY ([InventoryReceiveDetailId]) REFERENCES [TRN].[InventoryReceiveDetail] ([Id]),
    CONSTRAINT [FK_PhysicalStockAdjustmentHistory_IssueRequestDetailId] FOREIGN KEY ([IssueRequestDetailId]) REFERENCES [TRN].[IssueRequest] ([Id]),
    CONSTRAINT [FK_PhysicalStockAdjustmentHistory_PhysicalStockAdjustmentDetailId] FOREIGN KEY ([PhysicalStockAdjustmentDetailId]) REFERENCES [TRN].[PhysicalStockAdjustmentDetail] ([Id])
);
