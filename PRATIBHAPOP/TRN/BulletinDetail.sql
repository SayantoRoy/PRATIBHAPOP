﻿CREATE TABLE [TRN].[BulletinDetail] (
    [Id]                      VARCHAR (30)    NOT NULL,
    [CompanyGroupId]          VARCHAR (10)    NOT NULL,
    [CompanyId]               VARCHAR (10)    NOT NULL,
    [BulletinMasterId]        VARCHAR (30)    NOT NULL,
    [ZoneId]                  VARCHAR (10)    NOT NULL,
    [ComponentId]             VARCHAR (10)    NOT NULL,
    [OperationActionId]       VARCHAR (10)    NOT NULL,
    [Manpowertype]            VARCHAR (10)    NULL,
    [OperationId]             VARCHAR (10)    NOT NULL,
    [MaterialMasterArticleId] VARCHAR (10)    NULL,
    [MachineExecutiontype]    VARCHAR (10)    NOT NULL,
    [UserDefinedSPT]          DECIMAL (18, 3) NULL,
    [AllotedWorkstation]      DECIMAL (18)    NULL,
    [AllotedManpower]         DECIMAL (18)    NULL,
    [Sequence]                DECIMAL (18)    NULL,
    [IsPrintable]             BIT             NOT NULL,
    [IsDirect]                BIT             NOT NULL,
    [IsLastOperation]         BIT             NOT NULL,
    [Remark]                  VARCHAR (150)   NULL,
    [Archive]                 BIT             NOT NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    [ProcessId]               VARCHAR (10)    NOT NULL,
    CONSTRAINT [PK_BulletinDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BulletinDetail_BulletinDetail] FOREIGN KEY ([BulletinMasterId]) REFERENCES [TRN].[BulletinMaster] ([Id]),
    CONSTRAINT [FK_BulletinDetail_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_BulletinDetail_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_BulletinDetail_FGComponent] FOREIGN KEY ([ComponentId]) REFERENCES [HKP].[FGComponent] ([Id]),
    CONSTRAINT [FK_BulletinDetail_FGZone] FOREIGN KEY ([ZoneId]) REFERENCES [HKP].[FGZone] ([Id]),
    CONSTRAINT [FK_BulletinDetail_MaterialMasterArticle] FOREIGN KEY ([MaterialMasterArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_BulletinDetail_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id])
);

