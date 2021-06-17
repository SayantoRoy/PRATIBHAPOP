CREATE TABLE [TRN].[SalesOrderTax] (
    [Id]            VARCHAR (20)     NOT NULL,
    [SalesOrderId]  VARCHAR (20)     NULL,
    [TaxCategoryId] VARCHAR (10)     NOT NULL,
    [HSNCodeId]     VARCHAR (10)     NULL,
    [Percentage]    DECIMAL (18, 10) NOT NULL,
    [TaxAmount]     DECIMAL (18, 10) NOT NULL,
    [AddedBy]       VARCHAR (30)     NOT NULL,
    [AddedDate]     DATETIME         NOT NULL,
    [AddedFromIP]   VARCHAR (15)     NOT NULL,
    [UpdatedBy]     VARCHAR (30)     NULL,
    [UpdatedDate]   DATETIME         NULL,
    [UpdatedFromIP] VARCHAR (15)     NULL,
    [SpecialTaxId]  VARCHAR (10)     NULL,
    CONSTRAINT [PK_SalesOrderTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalesOrderTax_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_SalesOrderTax_IrregularTax] FOREIGN KEY ([SpecialTaxId]) REFERENCES [HKP].[SpecialTax] ([Id]),
    CONSTRAINT [FK_SalesOrderTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id])
);

