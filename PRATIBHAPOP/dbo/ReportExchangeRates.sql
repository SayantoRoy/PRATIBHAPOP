CREATE TABLE [dbo].[ReportExchangeRates] (
    [Id]             INT             IDENTITY (1, 1) NOT NULL,
    [FromCurrencyId] VARCHAR (10)    NULL,
    [ToCurrencyId]   VARCHAR (10)    NULL,
    [ExchangeRate]   DECIMAL (18, 8) NULL,
    [PlantId]        VARCHAR (10)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([FromCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    FOREIGN KEY ([ToCurrencyId]) REFERENCES [SCS].[Currency] ([Id])
);

