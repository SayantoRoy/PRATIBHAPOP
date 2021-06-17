CREATE TABLE [MST].[FixedAssetMasterMachineType] (
    [Id]                 VARCHAR (30) NOT NULL,
    [CompanyGroupId]     VARCHAR (10) NOT NULL,
    [CompanyId]          VARCHAR (10) NOT NULL,
    [MachineTypeId]      VARCHAR (10) NOT NULL,
    [FixedAssetMasterId] VARCHAR (30) NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_FixedAssetMasterMachineType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetMasterMachineType_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_FixedAssetMasterMachineType_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_FixedAssetMasterMachineType_FixedAssetMaster] FOREIGN KEY ([FixedAssetMasterId]) REFERENCES [MST].[FixedAssetMaster] ([Id]),
    CONSTRAINT [FK_FixedAssetMasterMachineType_FixedAssetMasterMachineType] FOREIGN KEY ([Id]) REFERENCES [MST].[FixedAssetMasterMachineType] ([Id])
);

