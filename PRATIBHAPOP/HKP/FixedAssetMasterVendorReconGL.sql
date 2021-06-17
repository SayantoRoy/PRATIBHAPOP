CREATE TABLE [HKP].[FixedAssetMasterVendorReconGL] (
    [Id]                        VARCHAR (10) NOT NULL,
    [FixedAssetMasterId]        VARCHAR (30) NULL,
    [PartyAccountGroupId]       VARCHAR (10) NULL,
    [FixedAssetMasterGLId]      VARCHAR (10) NULL,
    [VendorReconGLId]           VARCHAR (10) NULL,
    [VendorReconBudgetMasterId] VARCHAR (20) NULL,
    [VendorReconActivityId]     VARCHAR (10) NULL,
    [AddedBy]                   VARCHAR (30) NOT NULL,
    [AddedDate]                 DATETIME     NOT NULL,
    [AddedFromIP]               VARCHAR (15) NOT NULL,
    [UpdatedBy]                 VARCHAR (30) NULL,
    [UpdatedDate]               DATETIME     NULL,
    [UpdatedFromIP]             VARCHAR (15) NULL,
    CONSTRAINT [PK_FixedAssetMasterVendorReconGL] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetMasterVendorReconGL_Activity] FOREIGN KEY ([VendorReconActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_FixedAssetMasterVendorReconGL_FixedAssetMaster] FOREIGN KEY ([FixedAssetMasterId]) REFERENCES [MST].[FixedAssetMaster] ([Id]),
    CONSTRAINT [FK_FixedAssetMasterVendorReconGL_FixedAssetMasterGL] FOREIGN KEY ([FixedAssetMasterGLId]) REFERENCES [HKP].[FixedAssetMasterGL] ([Id]),
    CONSTRAINT [FK_FixedAssetMasterVendorReconGL_GLGeneralInfo_VendorReconGLId] FOREIGN KEY ([VendorReconGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_FixedAssetMasterVendorReconGL_PartyAccountGroup] FOREIGN KEY ([PartyAccountGroupId]) REFERENCES [HKP].[PartyAccountGroup] ([Id]),
    CONSTRAINT [FK_FixedAssetMasterVendorReconGL_VendorReconBudgetMaster] FOREIGN KEY ([VendorReconBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id])
);

