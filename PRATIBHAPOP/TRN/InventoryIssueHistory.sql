﻿CREATE TABLE [TRN].[InventoryIssueHistory] (
    [Id]                               VARCHAR (100)    NOT NULL,
    [InventoryIssueDetailId]           VARCHAR (10)     NOT NULL,
    [InventoryReceiveDetailId]         VARCHAR (50)     NOT NULL,
    [Qty]                              DECIMAL (18, 10) NOT NULL,
    [Rate]                             DECIMAL (18, 10) NOT NULL,
    [AddedBy]                          VARCHAR (30)     NOT NULL,
    [AddedDate]                        DATETIME         NOT NULL,
    [AddedFromIP]                      VARCHAR (15)     NOT NULL,
    [UpdatedBy]                        VARCHAR (30)     NULL,
    [UpdatedDate]                      DATETIME         NULL,
    [UpdatedFromIP]                    VARCHAR (15)     NULL,
    [IsCapitalize]                     BIT              NULL,
    [CapitalizeVoucherDetailId]        VARCHAR (80)     NULL,
    [IsRegister]                       BIT              NULL,
    [IssueRequestDetailId]             VARCHAR (10)     NULL,
    [IssueReturnQty]                   DECIMAL (18, 2)  NULL,
    [TotalAmount]                      DECIMAL (18, 10) NULL,
    [BooksCurrencyBaseRate]            DECIMAL (18, 10) NULL,
    [TotalMaterialBooksCurrencyAmount] DECIMAL (18, 10) NULL,
    CONSTRAINT [PK_InventoryIssueHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InventoryIssueHistory_CapitalizeVoucherDetail] FOREIGN KEY ([CapitalizeVoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id]),
    CONSTRAINT [FK_InventoryIssueHistory_InventoryIssueDetail] FOREIGN KEY ([InventoryIssueDetailId]) REFERENCES [TRN].[InventoryIssueDetail] ([Id]),
    CONSTRAINT [FK_InventoryIssueHistory_InventoryReceiveDetail] FOREIGN KEY ([InventoryReceiveDetailId]) REFERENCES [TRN].[InventoryReceiveDetail] ([Id]),
    CONSTRAINT [FK_InventoryIssueHistory_IssueRequestDetailId] FOREIGN KEY ([IssueRequestDetailId]) REFERENCES [TRN].[IssueRequest] ([Id])
);
