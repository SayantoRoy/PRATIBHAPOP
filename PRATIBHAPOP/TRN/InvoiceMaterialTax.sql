CREATE TABLE [TRN].[InvoiceMaterialTax] (
    [Id]                VARCHAR (80)    NOT NULL,
    [InvoiceMaterialId] VARCHAR (80)    NOT NULL,
    [MaterialMasterId]  VARCHAR (30)    NOT NULL,
    [TaxCategoryId]     VARCHAR (10)    NOT NULL,
    [TaxAmount]         DECIMAL (18, 4) NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    CONSTRAINT [PK_InvoiceMaterialTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceMaterialTax_InvoiceMaterial] FOREIGN KEY ([InvoiceMaterialId]) REFERENCES [TRN].[InvoiceMaterial] ([Id]),
    CONSTRAINT [FK_InvoiceMaterialTax_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_InvoiceMaterialTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id])
);

