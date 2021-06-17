CREATE TABLE [SCS].[CompanyFiscalYearPeriod] (
    [Id]                      VARCHAR (10) NOT NULL,
    [CompanyFiscalYearId]     VARCHAR (10) NOT NULL,
    [FiscalYearPeriodId]      VARCHAR (10) NOT NULL,
    [IsBudgetLocked]          BIT          NOT NULL,
    [IsTransationLocked]      BIT          NOT NULL,
    [IsExchangeRateConfirmed] BIT          NOT NULL,
    [Active]                  BIT          NOT NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyFiscalYearPeriod] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyFiscalYearPeriod_CompanyFiscalYear] FOREIGN KEY ([CompanyFiscalYearId]) REFERENCES [SCS].[CompanyFiscalYear] ([Id]),
    CONSTRAINT [FK_CompanyFiscalYearPeriod_FiscalYearPeriod] FOREIGN KEY ([FiscalYearPeriodId]) REFERENCES [SCS].[FiscalYearPeriod] ([Id])
);

