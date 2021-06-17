CREATE TABLE [TRN].[MultiplePaymentDetail] (
    [Id]                VARCHAR (100)   NOT NULL,
    [MultiplePaymentId] VARCHAR (100)   NOT NULL,
    [InvoiceId]         VARCHAR (50)    NOT NULL,
    [InvoiceDetailId]   VARCHAR (80)    NOT NULL,
    [Amount]            DECIMAL (18, 4) NOT NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    [IsPark]            BIT             NULL,
    [PartyId]           VARCHAR (10)    NULL,
    [PartyPlantId]      VARCHAR (12)    NULL,
    CONSTRAINT [PK_MultiplePaymentDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MultiplePaymentDetail_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [TRN].[Invoice] ([Id]),
    CONSTRAINT [FK_MultiplePaymentDetail_InvoiceDetail] FOREIGN KEY ([InvoiceDetailId]) REFERENCES [TRN].[InvoiceDetail] ([Id]),
    CONSTRAINT [FK_MultiplePaymentDetail_MultiplePayment] FOREIGN KEY ([MultiplePaymentId]) REFERENCES [TRN].[MultiplePayment] ([Id]),
    CONSTRAINT [FK_MultiplePaymentDetail_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_MultiplePaymentDetail_PartyPlant] FOREIGN KEY ([PartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id])
);

