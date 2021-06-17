﻿CREATE TABLE [MST].[FixedAssetMaster] (
    [Id]                      VARCHAR (30)  NOT NULL,
    [CompanyGroupId]          VARCHAR (10)  NOT NULL,
    [FixedAssetCategoryId]    VARCHAR (10)  NULL,
    [FixedAssetSubCategoryId] VARCHAR (10)  NULL,
    [Code]                    VARCHAR (10)  NULL,
    [ShortName]               VARCHAR (15)  NULL,
    [StandardName]            VARCHAR (100) NOT NULL,
    [UserName]                VARCHAR (100) NULL,
    [Description]             VARCHAR (250) NULL,
    [Remarks]                 VARCHAR (250) NULL,
    [Active]                  BIT           NULL,
    [AddedBy]                 VARCHAR (30)  NOT NULL,
    [AddedDate]               DATETIME      NOT NULL,
    [AddedFromIP]             VARCHAR (15)  NOT NULL,
    [UpdatedBy]               VARCHAR (30)  NULL,
    [UpdatedDate]             DATETIME      NULL,
    [UpdatedFromIP]           VARCHAR (15)  NULL,
    [AssetType]               VARCHAR (30)  NULL,
    CONSTRAINT [PK_FixedAssetMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_FixedAssetMaster_FixedAssetCategory] FOREIGN KEY ([FixedAssetCategoryId]) REFERENCES [HKP].[FixedAssetCategory] ([Id]),
    CONSTRAINT [FK_FixedAssetMaster_FixedAssetSubCategory] FOREIGN KEY ([FixedAssetSubCategoryId]) REFERENCES [HKP].[FixedAssetSubCategory] ([Id])
);
