CREATE TABLE [TRN].[PurchaseLCTax] (
    [Id]                  VARCHAR (20)     NOT NULL,
    [PurchaseLCId]        VARCHAR (10)     NULL,
    [PurchaseLCChargesId] VARCHAR (10)     NULL,
    [TaxCategoryId]       VARCHAR (10)     NOT NULL,
    [HSNCodeId]           VARCHAR (10)     NULL,
    [Percentage]          DECIMAL (18, 10) NOT NULL,
    [TaxAmount]           DECIMAL (18, 10) NOT NULL,
    [AddedBy]             VARCHAR (30)     NOT NULL,
    [AddedDate]           DATETIME         NOT NULL,
    [AddedFromIP]         VARCHAR (15)     NOT NULL,
    [UpdatedBy]           VARCHAR (30)     NULL,
    [UpdatedDate]         DATETIME         NULL,
    [UpdatedFromIP]       VARCHAR (15)     NULL,
    CONSTRAINT [PK_PurchaseLCTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PurchaseLCTax_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_PurchaseLCTax_PurchaseLC] FOREIGN KEY ([PurchaseLCId]) REFERENCES [dbo].[PurchaseLC] ([Id]),
    CONSTRAINT [FK_PurchaseLCTax_PurchaseLCCharges] FOREIGN KEY ([PurchaseLCChargesId]) REFERENCES [dbo].[PurchaseLCCharges] ([Id]),
    CONSTRAINT [FK_PurchaseLCTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id])
);

