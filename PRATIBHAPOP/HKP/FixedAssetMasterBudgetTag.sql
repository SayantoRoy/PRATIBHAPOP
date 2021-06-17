CREATE TABLE [HKP].[FixedAssetMasterBudgetTag] (
    [Id]                 VARCHAR (10) NOT NULL,
    [COAId]              VARCHAR (10) NULL,
    [FixedAssetMasterId] VARCHAR (30) NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    [BudgetMasterId]     VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_FixedAssetMasterBudgetTag] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FixedAssetMasterBudgetTag_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_FixedAssetMasterBudgetTag_COA] FOREIGN KEY ([COAId]) REFERENCES [HKP].[COA] ([Id]),
    CONSTRAINT [FK_FixedAssetMasterBudgetTag_FixedAssetMaster] FOREIGN KEY ([FixedAssetMasterId]) REFERENCES [MST].[FixedAssetMaster] ([Id])
);

