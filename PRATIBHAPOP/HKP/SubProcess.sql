﻿CREATE TABLE [HKP].[SubProcess] (
    [Id]                   VARCHAR (10)    NOT NULL,
    [CompanyGroupId]       VARCHAR (10)    NOT NULL,
    [ProcessId]            VARCHAR (10)    NOT NULL,
    [SubProcessCategoryId] VARCHAR (10)    NULL,
    [Sequence]             DECIMAL (18, 2) NOT NULL,
    [Code]                 VARCHAR (10)    NOT NULL,
    [UserName]             VARCHAR (50)    NOT NULL,
    [Remarks]              VARCHAR (250)   NULL,
    [Active]               BIT             NOT NULL,
    [Archive]              BIT             NOT NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    [ShortName]            VARCHAR (15)    NOT NULL,
    [StandardName]         VARCHAR (50)    NOT NULL,
    CONSTRAINT [PK_SubProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SubProcess_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SubProcess_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_SubProcess_SubProcessCategory] FOREIGN KEY ([SubProcessCategoryId]) REFERENCES [HKP].[SubProcessCategory] ([Id])
);

