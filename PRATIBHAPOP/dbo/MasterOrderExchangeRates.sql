CREATE TABLE [dbo].[MasterOrderExchangeRates] (
    [Id]             INT             IDENTITY (1, 1) NOT NULL,
    [TransactionId]  VARCHAR (10)    NULL,
    [FromCurrencyId] VARCHAR (10)    NULL,
    [ToCurrencyId]   VARCHAR (10)    NULL,
    [ExchangeRate]   DECIMAL (18, 8) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([FromCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    FOREIGN KEY ([ToCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    FOREIGN KEY ([TransactionId]) REFERENCES [TRN].[MasterOrder] ([Id])
);

