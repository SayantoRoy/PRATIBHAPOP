CREATE TABLE [HKP].[CompanyGroupFixedAssetCategory] (
    [Id]                   VARCHAR (10) NOT NULL,
    [CompanyGroupId]       VARCHAR (10) NOT NULL,
    [FixedAssetCategoryId] VARCHAR (10) NOT NULL,
    [Active]               BIT          NOT NULL,
    [Archive]              BIT          NOT NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupFixedAssetCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupFixedAssetCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupFixedAssetCategory_FixedAssetCategory] FOREIGN KEY ([FixedAssetCategoryId]) REFERENCES [HKP].[FixedAssetCategory] ([Id])
);

