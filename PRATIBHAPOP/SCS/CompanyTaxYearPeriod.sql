CREATE TABLE [SCS].[CompanyTaxYearPeriod] (
    [Id]                      VARCHAR (10) NOT NULL,
    [CompanyTaxYearId]        VARCHAR (10) NOT NULL,
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
    CONSTRAINT [PK_CompanyTaxYearPeriod] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyTaxYearPeriod_CompanyTaxYear] FOREIGN KEY ([CompanyTaxYearId]) REFERENCES [SCS].[CompanyTaxYear] ([Id]),
    CONSTRAINT [FK_CompanyTaxYearPeriod_CompanyTaxYearPeriod] FOREIGN KEY ([TaxYearPeriodId]) REFERENCES [SCS].[TaxYearPeriod] ([Id])
);

