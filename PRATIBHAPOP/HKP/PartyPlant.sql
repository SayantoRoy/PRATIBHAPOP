﻿CREATE TABLE [HKP].[PartyPlant] (
    [Id]                VARCHAR (12)    NOT NULL,
    [PartyId]           VARCHAR (10)    NOT NULL,
    [PlantId]           VARCHAR (10)    NULL,
    [AddressMasterId]   VARCHAR (20)    NULL,
    [LanguageId]        VARCHAR (5)     NULL,
    [Code]              VARCHAR (20)    NOT NULL,
    [Sequence]          DECIMAL (18, 2) NOT NULL,
    [ShortName]         VARCHAR (15)    NOT NULL,
    [StandardName]      VARCHAR (100)   NULL,
    [UserName]          VARCHAR (100)   NULL,
    [VATResistrationNo] VARCHAR (20)    NULL,
    [GSTIN]             VARCHAR (20)    NULL,
    [Description]       VARCHAR (250)   NULL,
    [Remarks]           VARCHAR (250)   NULL,
    [Active]            BIT             NOT NULL,
    [IsDefault]         BIT             NOT NULL,
    [AddedBy]           VARCHAR (30)    NOT NULL,
    [AddedDate]         DATETIME        NOT NULL,
    [AddedFromIP]       VARCHAR (15)    NOT NULL,
    [UpdatedBy]         VARCHAR (30)    NULL,
    [UpdatedDate]       DATETIME        NULL,
    [UpdatedFromIP]     VARCHAR (15)    NULL,
    CONSTRAINT [PK_PartyPlant] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PartyPlant_AddressMaster] FOREIGN KEY ([AddressMasterId]) REFERENCES [MST].[AddressMaster] ([Id]),
    CONSTRAINT [FK_PartyPlant_Language] FOREIGN KEY ([LanguageId]) REFERENCES [SCS].[Language] ([Id]),
    CONSTRAINT [FK_PartyPlant_Party] FOREIGN KEY ([PartyId]) REFERENCES [HKP].[Party] ([Id]),
    CONSTRAINT [FK_PartyPlant_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);
