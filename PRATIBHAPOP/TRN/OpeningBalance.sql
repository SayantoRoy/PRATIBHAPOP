﻿CREATE TABLE [TRN].[OpeningBalance] (
    [Id]                        VARCHAR (30)  NOT NULL,
    [CompanyGroupId]            VARCHAR (10)  NOT NULL,
    [CompanyId]                 VARCHAR (10)  NOT NULL,
    [PlantId]                   VARCHAR (10)  NOT NULL,
    [EntityId]                  VARCHAR (10)  NULL,
    [VoucherId]                 VARCHAR (50)  NULL,
    [EmployeeTransactionTypeId] VARCHAR (10)  NULL,
    [FinancingTypeId]           VARCHAR (10)  NULL,
    [MaterialStorageId]         VARCHAR (10)  NULL,
    [RefId]                     VARCHAR (30)  NULL,
    [SourceType]                VARCHAR (30)  NOT NULL,
    [PartyType]                 VARCHAR (30)  NULL,
    [PostingDate]               DATETIME      NOT NULL,
    [DocRefNo]                  VARCHAR (50)  NOT NULL,
    [DocDate]                   DATETIME      NOT NULL,
    [Narration]                 VARCHAR (250) NOT NULL,
    [IsPark]                    BIT           NOT NULL,
    [IsPosted]                  BIT           CONSTRAINT [DF__OpeningBa__IsPos__1566D3BF] DEFAULT ((0)) NOT NULL,
    [Archive]                   BIT           NOT NULL,
    [AddedBy]                   VARCHAR (30)  NOT NULL,
    [AddedDate]                 DATETIME      NOT NULL,
    [AddedFromIP]               VARCHAR (15)  NOT NULL,
    [UpdatedBy]                 VARCHAR (30)  NULL,
    [UpdatedDate]               DATETIME      NULL,
    [UpdatedFromIP]             VARCHAR (15)  NULL,
    [TransactionType]           VARCHAR (30)  NULL,
    [IsFinancial]               BIT           NULL,
    CONSTRAINT [PK_OpeningBalance] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OpeningBalance_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_OpeningBalance_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_OpeningBalance_EmployeeTransactionType] FOREIGN KEY ([EmployeeTransactionTypeId]) REFERENCES [HKP].[EmployeeTransactionType] ([Id]),
    CONSTRAINT [FK_OpeningBalance_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_OpeningBalance_FinancingType] FOREIGN KEY ([FinancingTypeId]) REFERENCES [HKP].[FinancingType] ([Id]),
    CONSTRAINT [FK_OpeningBalance_MaterialStorage] FOREIGN KEY ([MaterialStorageId]) REFERENCES [HKP].[MaterialStorage] ([Id]),
    CONSTRAINT [FK_OpeningBalance_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_OpeningBalance_Voucher] FOREIGN KEY ([VoucherId]) REFERENCES [TRN].[Voucher] ([Id])
);

