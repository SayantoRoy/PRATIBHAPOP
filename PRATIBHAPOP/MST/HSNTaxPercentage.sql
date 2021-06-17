CREATE TABLE [MST].[HSNTaxPercentage] (
    [Id]            VARCHAR (10)    NOT NULL,
    [CountryId]     VARCHAR (10)    NULL,
    [HSNCodeId]     VARCHAR (10)    NULL,
    [TaxCategoryId] VARCHAR (10)    NULL,
    [Percentage]    DECIMAL (18, 4) NULL,
    [EffectiveDate] DATE            NULL,
    [AddedBy]       VARCHAR (30)    NOT NULL,
    [AddedDate]     DATETIME        NOT NULL,
    [AddedFromIP]   VARCHAR (15)    NOT NULL,
    [UpdatedBy]     VARCHAR (30)    NULL,
    [UpdatedDate]   DATETIME        NULL,
    [UpdatedFromIP] VARCHAR (15)    NULL,
    [SpecialTaxId]  VARCHAR (10)    NULL,
    CONSTRAINT [PK_HSNTaxCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_HSNTaxCategory_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_HSNTaxCategory_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id]),
    CONSTRAINT [FK_HSNTaxPercentage_Country] FOREIGN KEY ([CountryId]) REFERENCES [SCS].[Country] ([Id]),
    CONSTRAINT [FK_HSNTaxPercentage_IrregularTax] FOREIGN KEY ([SpecialTaxId]) REFERENCES [HKP].[SpecialTax] ([Id])
);

