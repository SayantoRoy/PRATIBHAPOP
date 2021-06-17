CREATE TABLE [TRN].[InvoiceServiceMasterChargesTax] (
    [Id]                                  VARCHAR (80)     NOT NULL,
    [InvoiceServiceMasterChargesId]       VARCHAR (80)     NOT NULL,
    [InvoiceServiceMasterChargesDetailId] VARCHAR (80)     NOT NULL,
    [TaxCategoryId]                       VARCHAR (10)     NOT NULL,
    [HSNCodeId]                           VARCHAR (10)     NULL,
    [Percentage]                          DECIMAL (18, 10) NOT NULL,
    [TaxAmount]                           DECIMAL (18, 10) NOT NULL,
    [AddedBy]                             VARCHAR (30)     NOT NULL,
    [AddedDate]                           DATETIME         NOT NULL,
    [AddedFromIP]                         VARCHAR (15)     NOT NULL,
    [UpdatedBy]                           VARCHAR (30)     NULL,
    [UpdatedDate]                         DATETIME         NULL,
    [UpdatedFromIP]                       VARCHAR (15)     NULL,
    CONSTRAINT [PK_InvoiceServiceMasterChargesTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceServiceMasterChargesTax_HSNCode] FOREIGN KEY ([HSNCodeId]) REFERENCES [HKP].[HSNCode] ([Id]),
    CONSTRAINT [FK_InvoiceServiceMasterChargesTax_InvoiceServiceMasterCharges] FOREIGN KEY ([InvoiceServiceMasterChargesId]) REFERENCES [TRN].[InvoiceServiceMasterCharges] ([Id]),
    CONSTRAINT [FK_InvoiceServiceMasterChargesTax_InvoiceServiceMasterChargesDetail] FOREIGN KEY ([InvoiceServiceMasterChargesDetailId]) REFERENCES [TRN].[InvoiceServiceMasterChargesDetail] ([Id]),
    CONSTRAINT [FK_InvoiceServiceMasterChargesTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id])
);

