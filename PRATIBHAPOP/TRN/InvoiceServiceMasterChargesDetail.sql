CREATE TABLE [TRN].[InvoiceServiceMasterChargesDetail] (
    [Id]                            VARCHAR (80)     NOT NULL,
    [InvoiceServiceMasterChargesId] VARCHAR (80)     NOT NULL,
    [TransactionAmount]             DECIMAL (18, 10) NOT NULL,
    [TotalTaxAmount]                DECIMAL (18, 10) NOT NULL,
    [Narration]                     VARCHAR (250)    NULL,
    [AddedBy]                       VARCHAR (30)     NOT NULL,
    [AddedDate]                     DATETIME         NOT NULL,
    [AddedFromIP]                   VARCHAR (15)     NOT NULL,
    [UpdatedBy]                     VARCHAR (30)     NULL,
    [UpdatedDate]                   DATETIME         NULL,
    [UpdatedFromIP]                 VARCHAR (15)     NULL,
    CONSTRAINT [PK_InvoiceServiceMasterChargesDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceServiceMasterChargesDetail_InvoiceServiceMasterCharges] FOREIGN KEY ([InvoiceServiceMasterChargesId]) REFERENCES [TRN].[InvoiceServiceMasterCharges] ([Id])
);

