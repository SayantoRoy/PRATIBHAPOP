﻿CREATE TABLE [TRN].[BankJournalDetail] (
    [Id]                        VARCHAR (30)     NOT NULL,
    [BankJournalId]             VARCHAR (20)     NOT NULL,
    [BankMasterId]              VARCHAR (10)     NULL,
    [Amount]                    DECIMAL (18, 4)  NOT NULL,
    [AddedBy]                   VARCHAR (30)     NOT NULL,
    [AddedDate]                 DATETIME         NOT NULL,
    [AddedFromIP]               VARCHAR (15)     NOT NULL,
    [UpdatedBy]                 VARCHAR (30)     NULL,
    [UpdatedDate]               DATETIME         NULL,
    [UpdatedFromIP]             VARCHAR (15)     NULL,
    [CashMasterId]              VARCHAR (10)     NULL,
    [FinancingTypeId]           VARCHAR (10)     NULL,
    [GLGeneralInfoId]           VARCHAR (10)     NULL,
    [BudgetMasterId]            VARCHAR (20)     NULL,
    [ActivityId]                VARCHAR (10)     NULL,
    [EmployeeTransactionTypeId] VARCHAR (10)     NULL,
    [PartyType]                 VARCHAR (10)     NULL,
    [EmployeeId]                VARCHAR (30)     NULL,
    [PartyId]                   VARCHAR (10)     NULL,
    [PartyPlantId]              VARCHAR (12)     NULL,
    [IsWrittenOff]              BIT              NOT NULL,
    [WrittenOffAmount]          DECIMAL (18, 10) NOT NULL,
    CONSTRAINT [PK_BankJournalDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BankJournalDetail_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_BankJournalDetail_BankJournal] FOREIGN KEY ([BankJournalId]) REFERENCES [TRN].[BankJournal] ([Id]),
    CONSTRAINT [FK_BankJournalDetail_BankMaster] FOREIGN KEY ([BankMasterId]) REFERENCES [MST].[BankMaster] ([Id]),
    CONSTRAINT [FK_BankJournalDetail_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_BankJournalDetail_CashMaster] FOREIGN KEY ([CashMasterId]) REFERENCES [MST].[CashMaster] ([Id]),
    CONSTRAINT [FK_BankJournalDetail_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_BankJournalDetail_EmployeeTransactionType] FOREIGN KEY ([EmployeeTransactionTypeId]) REFERENCES [HKP].[EmployeeTransactionType] ([Id]),
    CONSTRAINT [FK_BankJournalDetail_FinancingType] FOREIGN KEY ([FinancingTypeId]) REFERENCES [HKP].[FinancingType] ([Id]),
    CONSTRAINT [FK_BankJournalDetail_GLGeneralInfo] FOREIGN KEY ([GLGeneralInfoId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_BankJournalDetail_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_BankJournalDetail_PartyPlant] FOREIGN KEY ([PartyPlantId]) REFERENCES [HKP].[PartyPlant] ([Id])
);

