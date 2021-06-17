﻿CREATE TABLE [TRN].[OpeningBalanceDetailCurrency] (
    [Id]                     VARCHAR (70)     NOT NULL,
    [OpeningBalanceId]       VARCHAR (30)     NOT NULL,
    [OpeningBalanceDetailId] VARCHAR (50)     NOT NULL,
    [ParallelCurrencyId]     VARCHAR (10)     NOT NULL,
    [FromCurrencyId]         VARCHAR (10)     NOT NULL,
    [ToCurrencyId]           VARCHAR (10)     NOT NULL,
    [ToCurrencyRate]         DECIMAL (18, 10) NOT NULL,
    [ToCurrencyConversion]   DECIMAL (18, 10) NOT NULL,
    [Amount]                 DECIMAL (20, 10) NOT NULL,
    [AddedBy]                VARCHAR (30)     NOT NULL,
    [AddedDate]              DATETIME         NOT NULL,
    [AddedFromIP]            VARCHAR (15)     NOT NULL,
    [UpdatedBy]              VARCHAR (30)     NULL,
    [UpdatedDate]            DATETIME         NULL,
    [UpdatedFromIP]          VARCHAR (15)     NULL,
    [DrAmount]               DECIMAL (20, 10) NULL,
    [CrAmount]               DECIMAL (20, 10) NULL,
    CONSTRAINT [PK_OpeningBalanceDetailCurrency] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OpeningBalanceDetailCurrency_CurrencyFrom] FOREIGN KEY ([FromCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_OpeningBalanceDetailCurrency_CurrencyParallel] FOREIGN KEY ([ParallelCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_OpeningBalanceDetailCurrency_CurrencyTo] FOREIGN KEY ([ToCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_OpeningBalanceDetailCurrency_OpeningBalance] FOREIGN KEY ([OpeningBalanceId]) REFERENCES [TRN].[OpeningBalance] ([Id]),
    CONSTRAINT [FK_OpeningBalanceDetailCurrency_OpeningBalanceDetail] FOREIGN KEY ([OpeningBalanceDetailId]) REFERENCES [TRN].[OpeningBalanceDetail] ([Id])
);

