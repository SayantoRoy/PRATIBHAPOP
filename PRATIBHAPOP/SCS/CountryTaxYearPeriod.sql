CREATE TABLE [SCS].[CountryTaxYearPeriod] (
    [Id]                      VARCHAR (10) NOT NULL,
    [CountryTaxYearId]        VARCHAR (10) NOT NULL,
    [TaxYearPeriodId]         VARCHAR (10) NOT NULL,
    [IsBudgetLocked]          BIT          NOT NULL,
    [IsTransationLocked]      BIT          NOT NULL,
    [IsExchangeRateConfirmed] BIT          NOT NULL,
    [Active]                  BIT          NOT NULL,
    [Archive]                 BIT          NOT NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    CONSTRAINT [PK_CountryTaxYearPeriod] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CountryTaxYearPeriod_CompanyTaxYear] FOREIGN KEY ([CountryTaxYearId]) REFERENCES [SCS].[CountryTaxYear] ([Id]),
    CONSTRAINT [FK_CountryTaxYearPeriod_CountryTaxYearPeriod] FOREIGN KEY ([TaxYearPeriodId]) REFERENCES [SCS].[TaxYearPeriod] ([Id])
);

