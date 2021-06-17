﻿CREATE TABLE [HKP].[RecruitmentGroup] (
    [Id]             VARCHAR (10)    NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [CompanyId]      VARCHAR (10)    NOT NULL,
    [PlantId]        VARCHAR (10)    NOT NULL,
    [Sequence]       DECIMAL (18, 2) NOT NULL,
    [Code]           VARCHAR (10)    NOT NULL,
    [ShortName]      VARCHAR (15)    NOT NULL,
    [StandardName]   VARCHAR (50)    NOT NULL,
    [UserName]       VARCHAR (50)    NOT NULL,
    [Description]    VARCHAR (250)   NULL,
    [Remarks]        VARCHAR (250)   NULL,
    [OnBoardDate]    DATETIME        NOT NULL,
    [Active]         BIT             NOT NULL,
    [Archive]        BIT             NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_RecruitmentGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RecruitmentGroup_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_RecruitmentGroup_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_RecruitmentGroup_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);
