CREATE TABLE [HKP].[CompanyGroupFixedAssetSubClass] (
    [Id]                   VARCHAR (10) NOT NULL,
    [CompanyGroupId]       VARCHAR (10) NOT NULL,
    [FixedAssetSubClassId] VARCHAR (10) NOT NULL,
    [Active]               BIT          NULL,
    [AddedBy]              VARCHAR (30) NOT NULL,
    [AddedDate]            DATETIME     NOT NULL,
    [AddedFromIP]          VARCHAR (15) NOT NULL,
    [UpdatedBy]            VARCHAR (30) NULL,
    [UpdatedDate]          DATETIME     NULL,
    [UpdatedFromIP]        VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupFixedAssetSubClass] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupFixedAssetSubClass_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupFixedAssetSubClass_FixedAssetSubClass] FOREIGN KEY ([FixedAssetSubClassId]) REFERENCES [HKP].[FixedAssetSubClass] ([Id])
);

