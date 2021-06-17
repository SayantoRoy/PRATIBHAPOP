CREATE TABLE [TRN].[InventoryScrapHistory] (
    [Id]                        VARCHAR (50)     NOT NULL,
    [InventoryScrapDetailId]    VARCHAR (50)     NOT NULL,
    [InventoryReceiveDetailId]  VARCHAR (50)     NOT NULL,
    [Qty]                       DECIMAL (18, 10) NOT NULL,
    [Rate]                      DECIMAL (18, 10) NOT NULL,
    [AddedBy]                   VARCHAR (30)     NOT NULL,
    [AddedDate]                 DATETIME         NOT NULL,
    [AddedFromIP]               VARCHAR (15)     NOT NULL,
    [UpdatedBy]                 VARCHAR (30)     NULL,
    [UpdatedDate]               DATETIME         NULL,
    [UpdatedFromIP]             VARCHAR (15)     NULL,
    [IsCapitalize]              BIT              NULL,
    [CapitalizeVoucherDetailId] VARCHAR (80)     NULL,
    [IsRegister]                BIT              NULL,
    [IssueRequestDetailId]      VARCHAR (10)     NULL,
    [TotalAmount]               DECIMAL (18, 10) NULL,
    CONSTRAINT [PK_InventoryScrapHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InventoryScrapDetail_CapitalizeVoucherDetail] FOREIGN KEY ([CapitalizeVoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id]),
    CONSTRAINT [FK_InventoryScrapHistory_InventoryReceiveDetailId] FOREIGN KEY ([InventoryReceiveDetailId]) REFERENCES [TRN].[InventoryReceiveDetail] ([Id]),
    CONSTRAINT [FK_InventoryScrapHistory_InventorySalesDetail] FOREIGN KEY ([InventoryScrapDetailId]) REFERENCES [TRN].[InventoryScrapDetail] ([Id]),
    CONSTRAINT [FK_InventoryScrapHistory_InventoryScrapDetail] FOREIGN KEY ([InventoryScrapDetailId]) REFERENCES [TRN].[InventoryScrapDetail] ([Id])
);

