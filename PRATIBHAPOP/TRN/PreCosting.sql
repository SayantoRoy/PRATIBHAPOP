﻿CREATE TABLE [TRN].[PreCosting] (
    [Id]                      VARCHAR (10)    NOT NULL,
    [CompanyGroupId]          VARCHAR (10)    NOT NULL,
    [BuyerId]                 VARCHAR (10)    NOT NULL,
    [MaterialMasterId]        VARCHAR (30)    NOT NULL,
    [MaterialMasterArticleId] VARCHAR (10)    NULL,
    [SPT]                     INT             NULL,
    [Remarks]                 VARCHAR (250)   NULL,
    [CriticalId]              VARCHAR (10)    NULL,
    [CurrencyId]              VARCHAR (10)    NOT NULL,
    [SellingPrice]            DECIMAL (18, 4) NOT NULL,
    [IsInquiryLinked]         BIT             NOT NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    CONSTRAINT [PK_PreCosting] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PreCosting_Buyer] FOREIGN KEY ([BuyerId]) REFERENCES [HKP].[Buyer] ([Id]),
    CONSTRAINT [FK_PreCosting_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PreCosting_Critical] FOREIGN KEY ([CriticalId]) REFERENCES [HKP].[Critical] ([Id]),
    CONSTRAINT [FK_PreCosting_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_PreCosting_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_PreCosting_MaterialMasterArticle] FOREIGN KEY ([MaterialMasterArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id])
);

