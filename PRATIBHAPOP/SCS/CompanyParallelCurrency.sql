CREATE TABLE [SCS].[CompanyParallelCurrency] (
    [Id]                   VARCHAR (10) NOT NULL,
    [CompanyId]            VARCHAR (10) NOT NULL,
    [CurrencyId]           VARCHAR (10) NOT NULL,
    [ParallelCurrencyType] VARCHAR (25) NOT NULL,
    [Active]               BIT          NOT NULL,
    [Archive]              BIT          NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyParallelCurrency] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyParallelCurrency_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CompanyParallelCurrency_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id])
);

