CREATE TABLE [MST].[CompanyFixedAssetDepreciationRule] (
    [Id]                 VARCHAR (10) NOT NULL,
    [DepreciationRuleId] VARCHAR (10) NOT NULL,
    [FixedAssetMasterId] VARCHAR (30) NOT NULL,
    [CompanyId]          VARCHAR (10) NOT NULL,
    [Active]             BIT          NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyFixedAssetDepreciationRule] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyFixedAssetDepreciationRule_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CompanyFixedAssetDepreciationRule_FixedAssetDepreciationRule] FOREIGN KEY ([DepreciationRuleId]) REFERENCES [MST].[FixedAssetDepreciationRule] ([Id]),
    CONSTRAINT [FK_CompanyFixedAssetDepreciationRule_FixedAssetMaster] FOREIGN KEY ([FixedAssetMasterId]) REFERENCES [MST].[FixedAssetMaster] ([Id])
);

