﻿CREATE TABLE [TRN].[MultiplePayment] (
    [Id]             VARCHAR (100) NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [CompanyId]      VARCHAR (10)  NOT NULL,
    [PlantId]        VARCHAR (10)  NULL,
    [EntityId]       VARCHAR (10)  NULL,
    [SourceType]     VARCHAR (30)  NULL,
    [ApprovalStatus] VARCHAR (20)  NOT NULL,
    [ApprovedBy]     VARCHAR (30)  NULL,
    [ApprovedDate]   DATETIME      NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    [TentativeDate]  DATETIME      NULL,
    [DueUpToDate]    DATETIME      NULL,
    [IsPark]         BIT           NULL,
    [IsFifo]         BIT           NULL,
    [BankMasterId]   VARCHAR (10)  NULL,
    CONSTRAINT [PK_MultiplePayment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MultiplePayment_BankMaster] FOREIGN KEY ([BankMasterId]) REFERENCES [MST].[BankMaster] ([Id]),
    CONSTRAINT [FK_MultiplePayment_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_MultiplePayment_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_MultiplePayment_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_MultiplePayment_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);
