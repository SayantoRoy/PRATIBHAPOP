CREATE TABLE [TRN].[InvoiceDetailCharges] (
    [Id]                            VARCHAR (80)     NOT NULL,
    [InvoiceServiceMasterChargesId] VARCHAR (80)     NULL,
    [InvoiceId]                     VARCHAR (50)     NOT NULL,
    [InvoiceDetailId]               VARCHAR (80)     NOT NULL,
    [InvoiceType]                   VARCHAR (25)     NULL,
    [Amount]                        DECIMAL (18, 10) NOT NULL,
    [DistributedAmount]             DECIMAL (18, 10) NOT NULL,
    [AddedBy]                       VARCHAR (30)     NOT NULL,
    [AddedDate]                     DATETIME         NOT NULL,
    [AddedFromIP]                   VARCHAR (15)     NOT NULL,
    [UpdatedBy]                     VARCHAR (30)     NULL,
    [UpdatedDate]                   DATETIME         NULL,
    [UpdatedFromIP]                 VARCHAR (15)     NULL,
    CONSTRAINT [PK_InvoiceDetailCharges] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceDetailCharges_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [TRN].[Invoice] ([Id]),
    CONSTRAINT [FK_InvoiceDetailCharges_InvoiceDetail] FOREIGN KEY ([InvoiceDetailId]) REFERENCES [TRN].[InvoiceDetail] ([Id]),
    CONSTRAINT [FK_InvoiceDetailCharges_InvoiceServiceMasterCharges] FOREIGN KEY ([InvoiceServiceMasterChargesId]) REFERENCES [TRN].[InvoiceServiceMasterCharges] ([Id])
);

