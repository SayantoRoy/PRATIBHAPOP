﻿CREATE TABLE [TRN].[SecurityDeposit] (
    [Id]                 VARCHAR (80)     NOT NULL,
    [CompanyGroupId]     VARCHAR (10)     NOT NULL,
    [CompanyId]          VARCHAR (10)     NOT NULL,
    [PlantId]            VARCHAR (10)     NOT NULL,
    [EntityId]           VARCHAR (10)     NULL,
    [CurrencyId]         VARCHAR (10)     NOT NULL,
    [VoucherId]          VARCHAR (50)     NULL,
    [OpeningBalanceId]   VARCHAR (30)     NULL,
    [CashMasterId]       VARCHAR (10)     NULL,
    [EmployeeId]         VARCHAR (30)     NULL,
    [PartyId]            VARCHAR (10)     NULL,
    [PartyType]          VARCHAR (10)     NOT NULL,
    [SourceType]         VARCHAR (30)     NOT NULL,
    [PaymentSource]      VARCHAR (20)     NULL,
    [PostingDate]        DATETIME         NOT NULL,
    [DocDate]            DATETIME         NOT NULL,
    [DocRefNo]           VARCHAR (50)     NOT NULL,
    [Narration]          VARCHAR (250)    NOT NULL,
    [Amount]             DECIMAL (18, 10) NOT NULL,
    [WrittenOffAmount]   DECIMAL (18, 10) NOT NULL,
    [IsWrittenOff]       BIT              NOT NULL,
    [IsPark]             BIT              NOT NULL,
    [Archive]            BIT              NOT NULL,
    [AddedBy]            VARCHAR (30)     NOT NULL,
    [AddedDate]          DATETIME         NOT NULL,
    [AddedFromIP]        VARCHAR (15)     NOT NULL,
    [UpdatedBy]          VARCHAR (30)     NULL,
    [UpdatedDate]        DATETIME         NULL,
    [UpdatedFromIP]      VARCHAR (15)     NULL,
    [SecurityDepositNo]  VARCHAR (30)     NULL,
    [FiscalYearId]       VARCHAR (10)     NULL,
    [FiscalYearPeriodId] VARCHAR (10)     NULL,
    [TaxYearId]          VARCHAR (10)     NULL,
    [TaxYearPeriodId]    VARCHAR (10)     NULL,
    [VoucherTypeId]      VARCHAR (10)     NULL,
    [PartyPlantId]       VARCHAR (12)     NULL,
    [FinancingTypeId]    VARCHAR (10)     NOT NULL,
    [VoucherDate]        DATETIME         NOT NULL,
    [BankMasterId]       VARCHAR (10)     NULL,
    [BankAmount]         DECIMAL (20, 10) NULL,
    CONSTRAINT [PK_SecurityDeposit] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SecurityDeposit_BankMaster] FOREIGN KEY ([BankMasterId]) REFERENCES [MST].[BankMaster] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_CashMaster] FOREIGN KEY ([CashMasterId]) REFERENCES [MST].[CashMaster] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_SecurityDeposit_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_FinancingType] FOREIGN KEY ([FinancingTypeId]) REFERENCES [HKP].[FinancingType] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_FiscalYear] FOREIGN KEY ([FiscalYearId]) REFERENCES [SCS].[FiscalYear] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_FiscalYearPeriod] FOREIGN KEY ([FiscalYearPeriodId]) REFERENCES [SCS].[FiscalYearPeriod] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_OpeningBalance] FOREIGN KEY ([OpeningBalanceId]) REFERENCES [TRN].[OpeningBalance] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_PartyPlant] FOREIGN KEY ([PartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_TaxYear] FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_TaxYearPeriod] FOREIGN KEY ([TaxYearPeriodId]) REFERENCES [SCS].[TaxYearPeriod] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_Voucher] FOREIGN KEY ([VoucherId]) REFERENCES [TRN].[Voucher] ([Id]),
    CONSTRAINT [FK_SecurityDeposit_VoucherType] FOREIGN KEY ([VoucherTypeId]) REFERENCES [SCS].[VoucherType] ([Id])
);

