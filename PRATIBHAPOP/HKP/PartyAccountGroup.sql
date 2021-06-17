﻿CREATE TABLE [HKP].[PartyAccountGroup] (
    [Id]                              VARCHAR (10)    NOT NULL,
    [CompanyGroupId]                  VARCHAR (10)    NULL,
    [PartnerDeterminationProcedureId] VARCHAR (10)    NULL,
    [AccountType]                     VARCHAR (10)    NOT NULL,
    [Sequence]                        DECIMAL (18, 4) NOT NULL,
    [Code]                            VARCHAR (10)    NOT NULL,
    [ShortName]                       VARCHAR (15)    NOT NULL,
    [StandardName]                    VARCHAR (50)    NOT NULL,
    [UserName]                        VARCHAR (50)    NOT NULL,
    [Description]                     VARCHAR (250)   NULL,
    [Remarks]                         VARCHAR (250)   NULL,
    [Active]                          BIT             NOT NULL,
    [Archive]                         BIT             NOT NULL,
    [AddedBy]                         VARCHAR (30)    NOT NULL,
    [AddedDate]                       DATETIME        NOT NULL,
    [AddedFromIP]                     VARCHAR (15)    NOT NULL,
    [UpdatedBy]                       VARCHAR (30)    NULL,
    [UpdatedDate]                     DATETIME        NULL,
    [UpdatedFromIP]                   VARCHAR (15)    NULL,
    [IsInterCompany]                  BIT             NULL,
    CONSTRAINT [PK_PartyAccountGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PartyAccountGroup_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PartyAccountGroup_PartnerDeterminationProcedure] FOREIGN KEY ([PartnerDeterminationProcedureId]) REFERENCES [HKP].[PartnerDeterminationProcedure] ([Id])
);

