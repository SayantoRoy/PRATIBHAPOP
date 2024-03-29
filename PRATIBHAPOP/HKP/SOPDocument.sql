﻿CREATE TABLE [HKP].[SOPDocument] (
    [Id]                       VARCHAR (10)    NOT NULL,
    [CompanyGroupId]           VARCHAR (10)    NULL,
    [Sequence]                 DECIMAL (18, 2) NOT NULL,
    [Code]                     VARCHAR (10)    NOT NULL,
    [ShortName]                VARCHAR (15)    NULL,
    [StandardName]             VARCHAR (50)    NULL,
    [UserName]                 VARCHAR (50)    NOT NULL,
    [DataSourceCategory]       VARCHAR (50)    NOT NULL,
    [DocumentFormate]          VARCHAR (50)    NOT NULL,
    [FileName]                 VARCHAR (50)    NULL,
    [FileId]                   VARCHAR (50)    NULL,
    [Description]              VARCHAR (250)   NULL,
    [Remarks]                  VARCHAR (250)   NULL,
    [Active]                   BIT             NOT NULL,
    [Archive]                  BIT             NOT NULL,
    [AddedBy]                  VARCHAR (30)    NOT NULL,
    [AddedDate]                DATETIME        NOT NULL,
    [AddedFromIP]              VARCHAR (15)    NOT NULL,
    [UpdatedBy]                VARCHAR (30)    NULL,
    [UpdatedDate]              DATETIME        NULL,
    [UpdatedFromIP]            VARCHAR (15)    NULL,
    [SOPDocumentCategoryId]    VARCHAR (10)    NULL,
    [SOPDocumentSubCategoryId] VARCHAR (10)    NULL,
    [Printable]                BIT             DEFAULT ((0)) NOT NULL,
    [IsSystemGenerated]        BIT             NULL,
    [ModuleId]                 VARCHAR (10)    NULL,
    CONSTRAINT [PK_aplos.SOPDocument] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SOPDocument_SOPDocumentCategory] FOREIGN KEY ([SOPDocumentCategoryId]) REFERENCES [HKP].[SOPDocumentCategory] ([Id]),
    CONSTRAINT [FK_SOPDocument_SOPDocumentSubCategory] FOREIGN KEY ([SOPDocumentSubCategoryId]) REFERENCES [HKP].[SOPDocumentSubCategory] ([Id]),
    CONSTRAINT [FK_SOPDocuments_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

