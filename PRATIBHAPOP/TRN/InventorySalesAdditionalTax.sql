CREATE TABLE [TRN].[InventorySalesAdditionalTax] (
    [Id]                     VARCHAR (50)     NOT NULL,
    [TaxCodeId]              VARCHAR (10)     NULL,
    [Percentage]             DECIMAL (18, 10) NOT NULL,
    [TaxAmount]              DECIMAL (18, 10) NOT NULL,
    [AddedBy]                VARCHAR (30)     NOT NULL,
    [AddedDate]              DATETIME         NOT NULL,
    [AddedFromIP]            VARCHAR (15)     NOT NULL,
    [UpdatedBy]              VARCHAR (30)     NULL,
    [UpdatedDate]            DATETIME         NULL,
    [UpdatedFromIP]          VARCHAR (15)     NULL,
    [InventorySalesId]       VARCHAR (50)     NOT NULL,
    [TaxCategoryId]          VARCHAR (10)     NULL,
    [BooksCurrencyTaxAmount] DECIMAL (18, 2)  NULL,
    CONSTRAINT [PK_InventorySalesAdditionalTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InventorySalesAdditionalTax_InventoryReceive] FOREIGN KEY ([InventorySalesId]) REFERENCES [TRN].[InventorySales] ([Id]),
    CONSTRAINT [FK_InventorySalesAdditionalTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id]),
    CONSTRAINT [FK_InventorySalesAdditionalTax_TaxCodeId] FOREIGN KEY ([TaxCodeId]) REFERENCES [MST].[TaxCode] ([Id])
);

