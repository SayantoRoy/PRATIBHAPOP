CREATE TABLE [TRN].[GLTransactionDetail] (
    [Id]              VARCHAR (90)     NOT NULL,
    [ReconcileId]     VARCHAR (50)     NULL,
    [BankMasterId]    VARCHAR (10)     NULL,
    [CashMasterId]    VARCHAR (10)     NULL,
    [VoucherDetailId] VARCHAR (80)     NULL,
    [SourceType]      VARCHAR (30)     NULL,
    [DrAmount]        DECIMAL (20, 10) NOT NULL,
    [CrAmount]        DECIMAL (18, 10) NOT NULL,
    [ReconcileDate]   DATETIME         NULL,
    [AddedBy]         VARCHAR (30)     NOT NULL,
    [AddedDate]       DATETIME         NOT NULL,
    [AddedFromIP]     VARCHAR (15)     NOT NULL,
    [UpdatedBy]       VARCHAR (30)     NULL,
    [UpdatedDate]     DATETIME         NULL,
    [UpdatedFromIP]   VARCHAR (15)     NULL,
    CONSTRAINT [PK_GLTransactionDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_GLTransactionDetail_BankMaster] FOREIGN KEY ([BankMasterId]) REFERENCES [MST].[BankMaster] ([Id]),
    CONSTRAINT [FK_GLTransactionDetail_BankReconciliation] FOREIGN KEY ([ReconcileId]) REFERENCES [TRN].[BankReconciliation] ([Id]),
    CONSTRAINT [FK_GLTransactionDetail_CashMaster] FOREIGN KEY ([CashMasterId]) REFERENCES [MST].[CashMaster] ([Id]),
    CONSTRAINT [FK_GLTransactionDetail_VoucherDetail] FOREIGN KEY ([VoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id])
);

