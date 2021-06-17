﻿CREATE TABLE [HKP].[MaterialMasterGL] (
    [Id]                                    VARCHAR (10) NOT NULL,
    [COAId]                                 VARCHAR (10) NULL,
    [MaterialMasterId]                      VARCHAR (30) NULL,
    [AssetGLId]                             VARCHAR (10) NULL,
    [AssetBudgetMasterId]                   VARCHAR (20) NULL,
    [AssetActivityId]                       VARCHAR (10) NULL,
    [AccumulatedDepreciationGLId]           VARCHAR (10) NULL,
    [AccumulatedDepreciationBudgetMasterId] VARCHAR (20) NULL,
    [AccumulatedDepreciationActivityId]     VARCHAR (10) NULL,
    [DepreciationGLId]                      VARCHAR (10) NULL,
    [DepreciationBudgetMasterId]            VARCHAR (20) NULL,
    [DepreciationActivityId]                VARCHAR (10) NULL,
    [AssetUnderConstructionGLId]            VARCHAR (10) NULL,
    [AssetUnderConstructionBudgetMasterId]  VARCHAR (20) NULL,
    [AssetUnderConstructionActivityId]      VARCHAR (10) NULL,
    [DownPaymentGLId]                       VARCHAR (10) NULL,
    [DownPaymentBudgetMasterId]             VARCHAR (20) NULL,
    [DownPaymentActivityId]                 VARCHAR (10) NULL,
    [ClearingAccountGLId]                   VARCHAR (10) NULL,
    [ClearingAccountBudgetMasterId]         VARCHAR (20) NULL,
    [ClearingAccountActivityId]             VARCHAR (10) NULL,
    [GainOnSaleOfAssetGLId]                 VARCHAR (10) NULL,
    [GainOnSaleOfAssetBudgetMasterId]       VARCHAR (20) NULL,
    [GainOnSaleOfAssetActivityId]           VARCHAR (10) NULL,
    [LossOnSaleOfAssetGLId]                 VARCHAR (10) NULL,
    [LossOnSaleOfAssetBudgetMasterId]       VARCHAR (20) NULL,
    [LossOnSaleOfAssetActivityId]           VARCHAR (10) NULL,
    [LossOnDisposalAssetGLId]               VARCHAR (10) NULL,
    [LossOnDisposalAssetBudgetMasterId]     VARCHAR (20) NULL,
    [LossOnDisposalAssetActivityId]         VARCHAR (10) NULL,
    [LessValueAssetGLId]                    VARCHAR (10) NULL,
    [LessValueAssetBudgetMasterId]          VARCHAR (20) NULL,
    [LessValueAssetActivityId]              VARCHAR (10) NULL,
    [AddedBy]                               VARCHAR (30) NOT NULL,
    [AddedDate]                             DATETIME     NOT NULL,
    [AddedFromIP]                           VARCHAR (15) NOT NULL,
    [UpdatedBy]                             VARCHAR (30) NULL,
    [UpdatedDate]                           DATETIME     NULL,
    [UpdatedFromIP]                         VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialMasterGL] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterGL_AccumulatedDepreciationBudgetMaster] FOREIGN KEY ([AccumulatedDepreciationBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_Activity_AccumulatedDepreciationActivityId] FOREIGN KEY ([AccumulatedDepreciationActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_Activity_AssetActivityId] FOREIGN KEY ([AssetActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_Activity_AssetUnderConstructionActivityId] FOREIGN KEY ([AssetUnderConstructionActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_Activity_ClearingAccountActivityId] FOREIGN KEY ([ClearingAccountActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_Activity_DepreciationActivityId] FOREIGN KEY ([DepreciationActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_Activity_DownPaymentActivityId] FOREIGN KEY ([DownPaymentActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_Activity_GainOnSaleOfAssetActivityId] FOREIGN KEY ([GainOnSaleOfAssetActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_Activity_LessValueAssetActivityId] FOREIGN KEY ([LessValueAssetActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_Activity_LossOnDisposalAssetActivityId] FOREIGN KEY ([LossOnDisposalAssetActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_Activity_LossOnSaleOfAssetActivityId] FOREIGN KEY ([LossOnSaleOfAssetActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_AssetBudgetMaster] FOREIGN KEY ([AssetBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_AssetUnderConstructionBudgetMaster] FOREIGN KEY ([AssetUnderConstructionBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_ClearingAccountBudgetMaster] FOREIGN KEY ([ClearingAccountBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_COA] FOREIGN KEY ([COAId]) REFERENCES [HKP].[COA] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_DepreciationBudgetMaster] FOREIGN KEY ([DepreciationBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_DownPaymentBudgetMaster] FOREIGN KEY ([DownPaymentBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GainOnSaleOfAssetBudgetMaster] FOREIGN KEY ([GainOnSaleOfAssetBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GLGeneralInfo_AccumulatedDepreciationGLId] FOREIGN KEY ([AccumulatedDepreciationGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GLGeneralInfo_AssetGLId] FOREIGN KEY ([AssetGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GLGeneralInfo_AssetUnderConstructionGLId] FOREIGN KEY ([AssetUnderConstructionGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GLGeneralInfo_ClearingAccountGLId] FOREIGN KEY ([ClearingAccountGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GLGeneralInfo_DepreciationGLId] FOREIGN KEY ([DepreciationGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GLGeneralInfo_DownPaymentGLId] FOREIGN KEY ([DownPaymentGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GLGeneralInfo_GainOnSaleOfAssetGLId] FOREIGN KEY ([GainOnSaleOfAssetGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GLGeneralInfo_LessValueAssetGLId] FOREIGN KEY ([LessValueAssetGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GLGeneralInfo_LossOnDisposalAssetGLId] FOREIGN KEY ([LossOnDisposalAssetGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_GLGeneralInfo_LossOnSaleOfAssetGLId] FOREIGN KEY ([LossOnSaleOfAssetGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_LessValueAssetBudgetMaster] FOREIGN KEY ([LessValueAssetBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_LossOnDisposalAssetBudgetMaster] FOREIGN KEY ([LossOnDisposalAssetBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_LossOnSaleOfAssetBudgetMaster] FOREIGN KEY ([LossOnSaleOfAssetBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterGL_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id])
);
