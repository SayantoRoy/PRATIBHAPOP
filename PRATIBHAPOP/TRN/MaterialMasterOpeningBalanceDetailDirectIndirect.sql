﻿CREATE TABLE [TRN].[MaterialMasterOpeningBalanceDetailDirectIndirect] (
    [Id]                                   VARCHAR (70)     NOT NULL,
    [OpeningBalanceId]                     VARCHAR (30)     NOT NULL,
    [MaterialMasterOpeningBalanceDetailId] VARCHAR (50)     NULL,
    [ParallelCurrencyId]                   VARCHAR (10)     NOT NULL,
    [FromCurrencyId]                       VARCHAR (10)     NOT NULL,
    [ToCurrencyId]                         VARCHAR (10)     NOT NULL,
    [Amount]                               DECIMAL (18, 10) NOT NULL,
    [ToCurrencyRate]                       DECIMAL (18, 10) NOT NULL,
    [ToCurrencyConversion]                 DECIMAL (18, 10) NOT NULL,
    [Quantity]                             DECIMAL (18, 10) NOT NULL,
    [GLType]                               VARCHAR (20)     NOT NULL,
    [Type]                                 VARCHAR (20)     NOT NULL,
    [AddedBy]                              VARCHAR (30)     NOT NULL,
    [AddedDate]                            DATETIME         NOT NULL,
    [AddedFromIP]                          VARCHAR (15)     NOT NULL,
    [UpdatedBy]                            VARCHAR (30)     NULL,
    [UpdatedDate]                          DATETIME         NULL,
    [UpdatedFromIP]                        VARCHAR (15)     NULL,
    CONSTRAINT [PK_MaterialMasterOpeningBalanceDetailDirectIndirect] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterOpeningBalanceDetailDirectIndirect_FromCurrency] FOREIGN KEY ([FromCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_MaterialMasterOpeningBalanceDetailDirectIndirect_MaterialMasterOpeningBalanceDetail] FOREIGN KEY ([MaterialMasterOpeningBalanceDetailId]) REFERENCES [TRN].[MaterialMasterOpeningBalanceDetail] ([Id]),
    CONSTRAINT [FK_MaterialMasterOpeningBalanceDetailDirectIndirect_MaterialMasterOpeningBalanceDetailDirectIndirect] FOREIGN KEY ([Id]) REFERENCES [TRN].[MaterialMasterOpeningBalanceDetailDirectIndirect] ([Id]),
    CONSTRAINT [FK_MaterialMasterOpeningBalanceDetailDirectIndirect_OpeningBalance] FOREIGN KEY ([OpeningBalanceId]) REFERENCES [TRN].[OpeningBalance] ([Id]),
    CONSTRAINT [FK_MaterialMasterOpeningBalanceDetailDirectIndirect_ParallelCurrency] FOREIGN KEY ([ParallelCurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_MaterialMasterOpeningBalanceDetailDirectIndirect_ToCurrency] FOREIGN KEY ([ToCurrencyId]) REFERENCES [SCS].[Currency] ([Id])
);

