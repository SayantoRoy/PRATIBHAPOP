﻿CREATE TABLE [TRN].[OperationTimeCaptureMaster] (
    [Id]                      VARCHAR (20)  NOT NULL,
    [EmpCode]                 VARCHAR (10)  NULL,
    [EmpName]                 VARCHAR (10)  NULL,
    [Line]                    VARCHAR (10)  NULL,
    [Unit]                    VARCHAR (10)  NULL,
    [FileName]                VARCHAR (100) NULL,
    [OperationId]             VARCHAR (10)  NOT NULL,
    [CompanyGroupId]          VARCHAR (10)  NOT NULL,
    [OperationVideoUploadId]  VARCHAR (50)  NULL,
    [FileExtension]           VARCHAR (5)   NULL,
    [Active]                  BIT           NOT NULL,
    [Archive]                 BIT           NOT NULL,
    [AddedBy]                 VARCHAR (30)  NOT NULL,
    [AddedDate]               DATETIME      NOT NULL,
    [AddedFromIP]             VARCHAR (15)  NOT NULL,
    [UpdatedBy]               VARCHAR (30)  NULL,
    [UpdatedDate]             DATETIME      NULL,
    [UpdatedFromIP]           VARCHAR (15)  NULL,
    [NoOfVariant]             VARCHAR (1)   NOT NULL,
    [FirstVariant]            VARCHAR (1)   NULL,
    [SecondVariant]           VARCHAR (1)   NULL,
    [ThirdVariant]            VARCHAR (1)   NULL,
    [MaterialMasterArticleId] VARCHAR (10)  NULL,
    CONSTRAINT [PK_OperationTimeCapture] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OperationTimeCaptureMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_OperationTimeCaptureMaster_MaterialMasterArticle] FOREIGN KEY ([MaterialMasterArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id])
);

