CREATE TABLE [TRN].[SalesAdditionalTax] (
    [Id]                     VARCHAR (50)     NOT NULL,
    [SalesId]                VARCHAR (10)     NOT NULL,
    [TaxCategoryId]          VARCHAR (10)     NULL,
    [TaxCodeId]              VARCHAR (10)     NULL,
    [Percentage]             DECIMAL (18, 10) NOT NULL,
    [TaxAmount]              DECIMAL (18, 10) NOT NULL,
    [AddedBy]                VARCHAR (30)     NOT NULL,
    [AddedDate]              DATETIME         NOT NULL,
    [AddedFromIP]            VARCHAR (15)     NOT NULL,
    [UpdatedBy]              VARCHAR (30)     NULL,
    [UpdatedDate]            DATETIME         NULL,
    [UpdatedFromIP]          VARCHAR (15)     NULL,
    [BooksCurrencyTaxAmount] DECIMAL (18, 10) NULL,
    CONSTRAINT [PK_SalesAdditionalTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalesAdditional_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id]),
    CONSTRAINT [FK_SalesAdditionalTax_Sales] FOREIGN KEY ([SalesId]) REFERENCES [TRN].[Sales] ([Id]),
    CONSTRAINT [FK_SalesAdditionalTax_TaxCodeId] FOREIGN KEY ([TaxCodeId]) REFERENCES [MST].[TaxCode] ([Id])
);

