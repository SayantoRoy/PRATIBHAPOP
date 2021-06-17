﻿CREATE TABLE [TRN].[EmployeeSalaryAdvance] (
    [Id]                           VARCHAR (20)     NOT NULL,
    [CompanyGroupId]               VARCHAR (10)     NOT NULL,
    [CompanyId]                    VARCHAR (10)     NOT NULL,
    [PlantId]                      VARCHAR (10)     NOT NULL,
    [VoucherDetailId]              VARCHAR (80)     NULL,
    [EmployeeId]                   VARCHAR (30)     NULL,
    [EntityId]                     VARCHAR (10)     NULL,
    [CurrencyId]                   VARCHAR (10)     NOT NULL,
    [VoucherId]                    VARCHAR (50)     NULL,
    [FinancingId]                  VARCHAR (10)     NULL,
    [PartyType]                    VARCHAR (10)     NOT NULL,
    [PartyId]                      VARCHAR (10)     NULL,
    [PartyPlantId]                 VARCHAR (12)     NULL,
    [FiscalYearId]                 VARCHAR (10)     NULL,
    [FiscalYearPeriodId]           VARCHAR (10)     NULL,
    [TransactionType]              VARCHAR (30)     NULL,
    [VoucherTypeId]                VARCHAR (10)     NULL,
    [SourceType]                   VARCHAR (30)     NOT NULL,
    [PaymentSource]                VARCHAR (20)     NULL,
    [VoucherDate]                  DATETIME         NULL,
    [PostingDate]                  DATETIME         NOT NULL,
    [DocDate]                      DATETIME         NOT NULL,
    [DocRefNo]                     VARCHAR (50)     NOT NULL,
    [Narration]                    VARCHAR (250)    NOT NULL,
    [Amount]                       DECIMAL (20, 10) NOT NULL,
    [IsPosted]                     BIT              NOT NULL,
    [IsPark]                       BIT              NOT NULL,
    [Archive]                      BIT              NOT NULL,
    [AddedBy]                      VARCHAR (30)     NOT NULL,
    [AddedDate]                    DATETIME         NOT NULL,
    [AddedFromIP]                  VARCHAR (15)     NOT NULL,
    [UpdatedBy]                    VARCHAR (30)     NULL,
    [UpdatedDate]                  DATETIME         NULL,
    [UpdatedFromIP]                VARCHAR (15)     NULL,
    [EmployeeAdvanceRequisitionId] VARCHAR (10)     NULL,
    CONSTRAINT [PK_EmployeeSalaryAdvance] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeSalaryAdvance_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_EmployeeAdvanceRequisition] FOREIGN KEY ([EmployeeAdvanceRequisitionId]) REFERENCES [TRN].[EmployeeAdvanceRequisition] ([SystemId]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_Financing] FOREIGN KEY ([FinancingId]) REFERENCES [TRN].[Financing] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_FiscalYear] FOREIGN KEY ([FiscalYearId]) REFERENCES [SCS].[FiscalYear] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_FiscalYearPeriod] FOREIGN KEY ([FiscalYearPeriodId]) REFERENCES [SCS].[FiscalYearPeriod] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_PartyPlant] FOREIGN KEY ([PartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_Voucher] FOREIGN KEY ([VoucherId]) REFERENCES [TRN].[Voucher] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_VoucherDetail] FOREIGN KEY ([VoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id]),
    CONSTRAINT [FK_EmployeeSalaryAdvance_VoucherType] FOREIGN KEY ([VoucherTypeId]) REFERENCES [SCS].[VoucherType] ([Id])
);

