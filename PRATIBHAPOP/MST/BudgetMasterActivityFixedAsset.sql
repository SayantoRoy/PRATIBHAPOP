CREATE TABLE [MST].[BudgetMasterActivityFixedAsset] (
    [Id]                     INT          IDENTITY (1, 1) NOT NULL,
    [BudgetMasterId]         VARCHAR (20) NOT NULL,
    [BudgetMasterActivityId] VARCHAR (20) NOT NULL,
    [ActivityId]             VARCHAR (10) NOT NULL,
    [FixedAssetMasterId]     VARCHAR (30) NULL,
    [FixedAssetRegisterId]   VARCHAR (30) NULL,
    [AddedBy]                VARCHAR (30) NOT NULL,
    [AddedDate]              DATETIME     NOT NULL,
    [AddedFromIP]            VARCHAR (15) NOT NULL,
    [UpdatedBy]              VARCHAR (30) NULL,
    [UpdatedDate]            DATETIME     NULL,
    [UpdatedFromIP]          VARCHAR (15) NULL,
    [MaterialMasterId]       VARCHAR (30) NULL,
    CONSTRAINT [PK_BudgetMasterActivityFixedAsset] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BudgetMasterActivityFixedAsset_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_BudgetMasterActivityFixedAsset_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_BudgetMasterActivityFixedAsset_BudgetMasterActivity] FOREIGN KEY ([BudgetMasterActivityId]) REFERENCES [MST].[BudgetMasterActivity] ([Id]),
    CONSTRAINT [FK_BudgetMasterActivityFixedAsset_FixedAssetMaster] FOREIGN KEY ([FixedAssetMasterId]) REFERENCES [MST].[FixedAssetMaster] ([Id]),
    CONSTRAINT [FK_BudgetMasterActivityFixedAsset_FixedAssetRegister] FOREIGN KEY ([FixedAssetRegisterId]) REFERENCES [TRN].[FixedAssetRegister] ([Id]),
    CONSTRAINT [FK_BudgetMasterActivityFixedAsset_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id])
);

