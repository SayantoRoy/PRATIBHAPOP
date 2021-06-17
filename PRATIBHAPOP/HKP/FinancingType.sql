﻿CREATE TABLE [HKP].[FinancingType] (
    [Id]                  VARCHAR (10)    NOT NULL,
    [Sequence]            DECIMAL (18, 2) NOT NULL,
    [Code]                VARCHAR (10)    NOT NULL,
    [ShortName]           VARCHAR (15)    NOT NULL,
    [StandardName]        VARCHAR (50)    NOT NULL,
    [AssetUserName]       VARCHAR (50)    NULL,
    [LiabilityUserName]   VARCHAR (50)    NULL,
    [RevenueUserName]     VARCHAR (50)    NULL,
    [ExpensesUserName]    VARCHAR (50)    NULL,
    [SourceType]          VARCHAR (20)    NULL,
    [Description]         VARCHAR (250)   NULL,
    [Remarks]             VARCHAR (250)   NULL,
    [IsInterCompany]      BIT             NOT NULL,
    [IsInterPlant]        BIT             NOT NULL,
    [IsOthers]            BIT             NOT NULL,
    [Active]              BIT             NOT NULL,
    [AddedBy]             VARCHAR (30)    NOT NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NOT NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    [IsAtSourceDeduction] BIT             NOT NULL,
    [PartyType]           VARCHAR (10)    NULL,
    CONSTRAINT [PK_FinancingType] PRIMARY KEY CLUSTERED ([Id] ASC)
);
