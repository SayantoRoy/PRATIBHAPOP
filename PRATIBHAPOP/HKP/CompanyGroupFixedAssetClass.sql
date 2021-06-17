﻿CREATE TABLE [HKP].[CompanyGroupFixedAssetClass] (
    [Id]                VARCHAR (10) NOT NULL,
    [CompanyGroupId]    VARCHAR (10) NOT NULL,
    [FixedAssetClassId] VARCHAR (10) NOT NULL,
    [Active]            BIT          NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupFixedAssetClass] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupFixedAssetClass_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupFixedAssetClass_FixedAssetClass] FOREIGN KEY ([FixedAssetClassId]) REFERENCES [HKP].[FixedAssetClass] ([Id])
);
