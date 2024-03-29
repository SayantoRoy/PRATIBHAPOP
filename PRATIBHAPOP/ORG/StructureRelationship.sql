﻿CREATE TABLE [ORG].[StructureRelationship] (
    [Id]             VARCHAR (10)  NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [CompanyId]      VARCHAR (10)  NULL,
    [RType]          VARCHAR (30)  NOT NULL,
    [Sequence]       INT           NOT NULL,
    [StandardName]   VARCHAR (50)  NOT NULL,
    [UserName]       VARCHAR (50)  NOT NULL,
    [URL]            VARCHAR (250) NOT NULL,
    [SchemaName]     VARCHAR (10)  NULL,
    [Description]    VARCHAR (250) NULL,
    [Remarks]        VARCHAR (250) NULL,
    [Active]         BIT           NOT NULL,
    [Archive]        BIT           NOT NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_StructureRelationship] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_StructureRelationship_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_StructureRelationship_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

