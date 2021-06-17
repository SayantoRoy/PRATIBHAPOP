CREATE TABLE [TRN].[SalesTax] (
    [Id]                             VARCHAR (20)     NOT NULL,
    [SalesId]                        VARCHAR (10)     NOT NULL,
    [SalesMaterialId]                VARCHAR (30)     NULL,
    [SalesServiceId]                 VARCHAR (10)     NULL,
    [TaxCategoryId]                  VARCHAR (10)     NOT NULL,
    [HSNCodeId]                      VARCHAR (10)     NULL,
    [Percentage]                     DECIMAL (18, 10) NOT NULL,
    [Amount]                         DECIMAL (18, 10) NOT NULL,
    [AddedBy]                        VARCHAR (30)     NOT NULL,
    [AddedDate]                      DATETIME         NOT NULL,
    [AddedFromIP]                    VARCHAR (15)     NOT NULL,
    [UpdatedBy]                      VARCHAR (30)     NULL,
    [UpdatedDate]                    DATETIME         NULL,
    [UpdatedFromIP]                  VARCHAR (15)     NULL,
    [BooksCurrencyTransactionAmount] DECIMAL (18, 10) NULL,
    CONSTRAINT [PK_SalesTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalesTax_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_SalesTax_Sales] FOREIGN KEY ([SalesId]) REFERENCES [TRN].[Sales] ([Id]),
    CONSTRAINT [FK_SalesTax_SalesMaterial] FOREIGN KEY ([SalesMaterialId]) REFERENCES [TRN].[SalesMaterial] ([Id]),
    CONSTRAINT [FK_SalesTax_SalesService] FOREIGN KEY ([SalesServiceId]) REFERENCES [TRN].[SalesService] ([Id]),
    CONSTRAINT [FK_SalesTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id])
);

