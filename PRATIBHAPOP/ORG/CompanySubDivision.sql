﻿CREATE TABLE [ORG].[CompanySubDivision] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [CompanyId]      VARCHAR (10) NOT NULL,
    [SubDivisionId]  VARCHAR (10) NOT NULL,
    [Archive]        BIT          NOT NULL,
    [Active]         BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanySubDivision] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanySubDivision_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CompanySubDivision_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanySubDivision_SubDivision] FOREIGN KEY ([SubDivisionId]) REFERENCES [ORG].[SubDivision] ([Id])
);

