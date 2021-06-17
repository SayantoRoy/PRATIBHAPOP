CREATE TABLE [dbo].[PurchaseLCCharges] (
    [Id]                  VARCHAR (10)    NOT NULL,
    [PurchaseLCId]        VARCHAR (10)    NULL,
    [LCChargesTypeGLId]   VARCHAR (10)    NULL,
    [OpeningBankMasterId] VARCHAR (10)    NULL,
    [VoucherId]           VARCHAR (50)    NULL,
    [ChargesValue]        DECIMAL (18, 2) NULL,
    [CurrencyId]          VARCHAR (10)    NULL,
    [Version]             DECIMAL (18, 2) NULL,
    [BankAmount]          DECIMAL (18, 2) NULL,
    [Rate]                DECIMAL (18, 2) NULL,
    [Remarks]             VARCHAR (250)   NULL,
    [AddedBy]             VARCHAR (30)    NOT NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NOT NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    CONSTRAINT [PK_PurchaseLCCharges] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PurchaseLCCharges_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_PurchaseLCCharges_PurchaseLC] FOREIGN KEY ([PurchaseLCId]) REFERENCES [dbo].[PurchaseLC] ([Id]),
    CONSTRAINT [FK_PurchaseLCCharges_Voucher] FOREIGN KEY ([VoucherId]) REFERENCES [TRN].[Voucher] ([Id])
);

