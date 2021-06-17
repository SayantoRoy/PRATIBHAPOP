﻿CREATE TABLE [TRN].[Voucher] (
    [Id]                 VARCHAR (50)  NOT NULL,
    [CompanyGroupId]     VARCHAR (10)  NOT NULL,
    [CompanyId]          VARCHAR (10)  NOT NULL,
    [PlantId]            VARCHAR (10)  NOT NULL,
    [EntityId]           VARCHAR (10)  NULL,
    [FiscalYearId]       VARCHAR (10)  NOT NULL,
    [FiscalYearPeriodId] VARCHAR (10)  NOT NULL,
    [TaxYearId]          VARCHAR (10)  NULL,
    [TaxYearPeriodId]    VARCHAR (10)  NULL,
    [VoucherTypeId]      VARCHAR (10)  NOT NULL,
    [CurrencyId]         VARCHAR (10)  NULL,
    [SourceType]         VARCHAR (30)  NULL,
    [VoucherNo]          VARCHAR (50)  NULL,
    [VoucherDate]        DATETIME      NOT NULL,
    [TransactionRefNo]   VARCHAR (50)  NULL,
    [PostingDate]        DATETIME      NOT NULL,
    [DocRefNo]           VARCHAR (50)  NULL,
    [DocDate]            DATETIME      NULL,
    [Narration]          VARCHAR (500) NOT NULL,
    [IsPark]             BIT           NOT NULL,
    [Archive]            BIT           NOT NULL,
    [AddedBy]            VARCHAR (30)  NOT NULL,
    [AddedDate]          DATETIME      NOT NULL,
    [AddedFromIP]        VARCHAR (15)  NOT NULL,
    [UpdatedBy]          VARCHAR (30)  NULL,
    [UpdatedDate]        DATETIME      NULL,
    [UpdatedFromIP]      VARCHAR (15)  NULL,
    [PostedBy]           VARCHAR (30)  NULL,
    [PostedDate]         DATETIME      NULL,
    [PostedFromIP]       VARCHAR (15)  NULL,
    [ExchangeType]       VARCHAR (15)  NULL,
    CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Voucher_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_Voucher_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_Voucher_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_Voucher_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_Voucher_FiscalYear] FOREIGN KEY ([FiscalYearId]) REFERENCES [SCS].[FiscalYear] ([Id]),
    CONSTRAINT [FK_Voucher_FiscalYearPeriod] FOREIGN KEY ([FiscalYearPeriodId]) REFERENCES [SCS].[FiscalYearPeriod] ([Id]),
    CONSTRAINT [FK_Voucher_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_Voucher_TaxYear] FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id]),
    CONSTRAINT [FK_Voucher_TaxYearPeriod] FOREIGN KEY ([TaxYearPeriodId]) REFERENCES [SCS].[TaxYearPeriod] ([Id]),
    CONSTRAINT [FK_Voucher_VoucherType] FOREIGN KEY ([VoucherTypeId]) REFERENCES [SCS].[VoucherType] ([Id])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ACCIF13', @level0type = N'SCHEMA', @level0name = N'TRN', @level1type = N'TABLE', @level1name = N'Voucher';

