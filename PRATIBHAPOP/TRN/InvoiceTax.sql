﻿CREATE TABLE [TRN].[InvoiceTax] (
    [Id]                      VARCHAR (50)     NOT NULL,
    [InvoiceId]               VARCHAR (50)     NULL,
    [InvoiceDetailId]         VARCHAR (80)     NULL,
    [VoucherDetailId]         VARCHAR (80)     NULL,
    [TaxCategoryId]           VARCHAR (10)     NULL,
    [TaxCodeId]               VARCHAR (10)     NULL,
    [PartyId]                 VARCHAR (10)     NULL,
    [TaxYearId]               VARCHAR (10)     NOT NULL,
    [InvoiceMaterialId]       VARCHAR (80)     NULL,
    [TaxYearPeriodId]         VARCHAR (10)     NOT NULL,
    [SourceType]              VARCHAR (30)     NULL,
    [TaxAutoAmount]           DECIMAL (18, 10) NOT NULL,
    [TaxAmount]               DECIMAL (18, 10) NOT NULL,
    [WrittenOffAmount]        DECIMAL (18, 10) CONSTRAINT [DF__InvoiceTa__Writt__5DA19D89] DEFAULT ((0)) NOT NULL,
    [IsWrittenOff]            BIT              CONSTRAINT [DF__InvoiceTa__IsWri__5E95C1C2] DEFAULT ((0)) NOT NULL,
    [Archive]                 BIT              NOT NULL,
    [AddedBy]                 VARCHAR (30)     NOT NULL,
    [AddedDate]               DATETIME         NOT NULL,
    [AddedFromIP]             VARCHAR (15)     NOT NULL,
    [UpdatedBy]               VARCHAR (30)     NULL,
    [UpdatedDate]             DATETIME         NULL,
    [UpdatedFromIP]           VARCHAR (15)     NULL,
    [PartyPlantId]            VARCHAR (12)     NULL,
    [VoucherId]               VARCHAR (50)     NULL,
    [AdvanceId]               VARCHAR (10)     NULL,
    [EmployeePayableId]       VARCHAR (100)    NULL,
    [EmployeePayableDetailId] VARCHAR (150)    NULL,
    [PurchaseLCId]            VARCHAR (10)     NULL,
    [InvoiceWriteOffId]       VARCHAR (50)     NULL,
    [InvoiceWriteOffDetailId] VARCHAR (80)     NULL,
    CONSTRAINT [PK_InvoiceTax] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InvoiceTax_Advance] FOREIGN KEY ([AdvanceId]) REFERENCES [TRN].[Advance] ([Id]),
    CONSTRAINT [FK_InvoiceTax_EmployeePayable] FOREIGN KEY ([EmployeePayableId]) REFERENCES [TRN].[EmployeePayable] ([Id]),
    CONSTRAINT [FK_InvoiceTax_EmployeePayableDetail] FOREIGN KEY ([EmployeePayableDetailId]) REFERENCES [TRN].[EmployeePayableDetail] ([Id]),
    CONSTRAINT [FK_InvoiceTax_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [TRN].[Invoice] ([Id]),
    CONSTRAINT [FK_InvoiceTax_InvoiceDetail] FOREIGN KEY ([InvoiceDetailId]) REFERENCES [TRN].[InvoiceDetail] ([Id]),
    CONSTRAINT [FK_InvoiceTax_InvoiceMaterial] FOREIGN KEY ([InvoiceMaterialId]) REFERENCES [TRN].[InvoiceMaterial] ([Id]),
    CONSTRAINT [FK_InvoiceTax_InvoiceTax] FOREIGN KEY ([Id]) REFERENCES [TRN].[InvoiceTax] ([Id]),
    CONSTRAINT [FK_InvoiceTax_InvoiceWriteOff] FOREIGN KEY ([InvoiceWriteOffId]) REFERENCES [TRN].[InvoiceWriteOff] ([Id]),
    CONSTRAINT [FK_InvoiceTax_InvoiceWriteOffDetail] FOREIGN KEY ([InvoiceWriteOffDetailId]) REFERENCES [TRN].[InvoiceWriteOffDetail] ([Id]),
    CONSTRAINT [FK_InvoiceTax_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_InvoiceTax_PartyPlant] FOREIGN KEY ([PartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_InvoiceTax_PurchaseLC] FOREIGN KEY ([PurchaseLCId]) REFERENCES [dbo].[PurchaseLC] ([Id]),
    CONSTRAINT [FK_InvoiceTax_TaxCategory] FOREIGN KEY ([TaxCategoryId]) REFERENCES [MST].[TaxCategory] ([Id]),
    CONSTRAINT [FK_InvoiceTax_TaxCode] FOREIGN KEY ([TaxCodeId]) REFERENCES [MST].[TaxCode] ([Id]),
    CONSTRAINT [FK_InvoiceTax_TaxYear] FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id]),
    CONSTRAINT [FK_InvoiceTax_TaxYearPeriod] FOREIGN KEY ([TaxYearPeriodId]) REFERENCES [SCS].[TaxYearPeriod] ([Id]),
    CONSTRAINT [FK_InvoiceTax_Voucher] FOREIGN KEY ([VoucherId]) REFERENCES [TRN].[Voucher] ([Id]),
    CONSTRAINT [FK_InvoiceTax_VoucherDetail] FOREIGN KEY ([VoucherDetailId]) REFERENCES [TRN].[VoucherDetail] ([Id])
);
