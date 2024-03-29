﻿CREATE TABLE [TRN].[BankJournal] (
    [Id]                        VARCHAR (20)     NOT NULL,
    [CompanyGroupId]            VARCHAR (10)     NOT NULL,
    [CompanyId]                 VARCHAR (10)     NOT NULL,
    [PlantId]                   VARCHAR (10)     NOT NULL,
    [EntityId]                  VARCHAR (10)     NULL,
    [VoucherId]                 VARCHAR (50)     NULL,
    [CurrencyId]                VARCHAR (10)     NULL,
    [BankMasterId]              VARCHAR (10)     NULL,
    [SourceType]                VARCHAR (30)     NULL,
    [BankJournalType]           VARCHAR (20)     NULL,
    [PaymentSource]             VARCHAR (20)     NULL,
    [PostingDate]               DATETIME         NOT NULL,
    [DocDate]                   DATETIME         NOT NULL,
    [DocRefNo]                  VARCHAR (50)     NOT NULL,
    [Narration]                 VARCHAR (250)    NULL,
    [Amount]                    DECIMAL (18, 4)  NOT NULL,
    [Archive]                   BIT              NOT NULL,
    [IsPark]                    BIT              NOT NULL,
    [AddedBy]                   VARCHAR (30)     NOT NULL,
    [AddedDate]                 DATETIME         NOT NULL,
    [AddedFromIP]               VARCHAR (15)     NOT NULL,
    [UpdatedBy]                 VARCHAR (30)     NULL,
    [UpdatedDate]               DATETIME         NULL,
    [UpdatedFromIP]             VARCHAR (15)     NULL,
    [CashMasterId]              VARCHAR (10)     NULL,
    [EmployeeTransactionTypeId] VARCHAR (10)     NULL,
    [PartyType]                 VARCHAR (10)     NULL,
    [EmployeeId]                VARCHAR (30)     NULL,
    [PartyId]                   VARCHAR (10)     NULL,
    [PartyPlantId]              VARCHAR (12)     NULL,
    [IsWrittenOff]              BIT              NOT NULL,
    [WrittenOffAmount]          DECIMAL (18, 10) NOT NULL,
    [IsReverse]                 BIT              NOT NULL,
    CONSTRAINT [PK_BankJournal] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BankJournal_BankMaster] FOREIGN KEY ([BankMasterId]) REFERENCES [MST].[BankMaster] ([Id]),
    CONSTRAINT [FK_BankJournal_CashMaster] FOREIGN KEY ([CashMasterId]) REFERENCES [MST].[CashMaster] ([Id]),
    CONSTRAINT [FK_BankJournal_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_BankJournal_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_BankJournal_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_BankJournal_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_BankJournal_EmployeeTransactionType] FOREIGN KEY ([EmployeeTransactionTypeId]) REFERENCES [HKP].[EmployeeTransactionType] ([Id]),
    CONSTRAINT [FK_BankJournal_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_BankJournal_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_BankJournal_PartyPlant] FOREIGN KEY ([PartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id]),
    CONSTRAINT [FK_BankJournal_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_BankJournal_Voucher] FOREIGN KEY ([VoucherId]) REFERENCES [TRN].[Voucher] ([Id])
);

