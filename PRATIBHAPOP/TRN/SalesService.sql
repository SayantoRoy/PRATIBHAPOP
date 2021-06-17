CREATE TABLE [TRN].[SalesService] (
    [Id]                             VARCHAR (10)     NOT NULL,
    [SalesId]                        VARCHAR (10)     NOT NULL,
    [ServiceMasterId]                VARCHAR (12)     NOT NULL,
    [Amount]                         DECIMAL (18, 10) NOT NULL,
    [TaxAmount]                      DECIMAL (18, 10) NOT NULL,
    [NetAmount]                      DECIMAL (18, 10) NOT NULL,
    [AddedBy]                        VARCHAR (30)     NOT NULL,
    [AddedDate]                      DATETIME         NOT NULL,
    [AddedFromIP]                    VARCHAR (15)     NOT NULL,
    [UpdatedBy]                      VARCHAR (30)     NULL,
    [UpdatedDate]                    DATETIME         NULL,
    [UpdatedFromIP]                  VARCHAR (15)     NULL,
    [VoucherDetailId]                VARCHAR (80)     NULL,
    [BooksCurrencyTransactionAmount] DECIMAL (18, 10) NULL,
    [BooksCurrencyTaxAmount]         DECIMAL (18, 10) NULL,
    CONSTRAINT [PK_SalesService] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SalesService_Sales] FOREIGN KEY ([SalesId]) REFERENCES [TRN].[Sales] ([Id]),
    CONSTRAINT [FK_SalesService_ServiceMaster] FOREIGN KEY ([ServiceMasterId]) REFERENCES [HKP].[ServiceMaster] ([Id]),
    CONSTRAINT [FK_SalesService_VoucherDetail] FOREIGN KEY ([VoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id])
);

