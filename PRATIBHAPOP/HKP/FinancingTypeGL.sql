﻿CREATE TABLE [HKP].[FinancingTypeGL] (
    [Id]                            VARCHAR (10)  NOT NULL,
    [COAId]                         VARCHAR (10)  NOT NULL,
    [FinancingTypeId]               VARCHAR (10)  NOT NULL,
    [AssetGLId]                     VARCHAR (10)  NULL,
    [AssetBudgetMasterId]           VARCHAR (20)  NULL,
    [AssetActivityId]               VARCHAR (10)  NULL,
    [RevenueGLId]                   VARCHAR (10)  NULL,
    [RevenueBudgetMasterId]         VARCHAR (20)  NULL,
    [RevenueActivityId]             VARCHAR (10)  NULL,
    [LiabilityGLId]                 VARCHAR (10)  NULL,
    [LiabilityBudgetMasterId]       VARCHAR (20)  NULL,
    [LiabilityActivityId]           VARCHAR (10)  NULL,
    [ExpensesGLId]                  VARCHAR (10)  NULL,
    [ExpensesBudgetMasterId]        VARCHAR (20)  NULL,
    [ExpensesActivityId]            VARCHAR (10)  NULL,
    [Remarks]                       VARCHAR (250) NULL,
    [Active]                        BIT           NOT NULL,
    [AddedBy]                       VARCHAR (30)  NOT NULL,
    [AddedDate]                     DATETIME      NOT NULL,
    [AddedFromIP]                   VARCHAR (15)  NOT NULL,
    [UpdatedBy]                     VARCHAR (30)  NULL,
    [UpdatedDate]                   DATETIME      NULL,
    [UpdatedFromIP]                 VARCHAR (15)  NULL,
    [ExpensesPayableGLId]           VARCHAR (10)  NULL,
    [ExpensesPayableActivityId]     VARCHAR (10)  NULL,
    [ExpensesPayableBudgetMasterId] VARCHAR (20)  NULL,
    [ChargesPayableGLId]            VARCHAR (10)  NULL,
    [ChargesPayableBudgetMasterId]  VARCHAR (20)  NULL,
    [ChargesPayableActivityId]      VARCHAR (10)  NULL,
    CONSTRAINT [PK_FinancingTypeGL] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_FinancingTypeGL_Activity_Asset] FOREIGN KEY ([AssetActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_Activity_Expenses] FOREIGN KEY ([ExpensesActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_Activity_ExpensesPayable] FOREIGN KEY ([ExpensesPayableActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_Activity_Liability] FOREIGN KEY ([LiabilityActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_Activity_Revenue] FOREIGN KEY ([RevenueActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_AssetBudgetMaster] FOREIGN KEY ([AssetBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_Budget_ExpensePayableBudgetMaster] FOREIGN KEY ([ExpensesPayableBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_ChargesPayableActivity] FOREIGN KEY ([ChargesPayableActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_ChargesPayableBudgetMaster] FOREIGN KEY ([ChargesPayableBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_COA] FOREIGN KEY ([COAId]) REFERENCES [HKP].[COA] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_ExpensesBudgetMaster] FOREIGN KEY ([ExpensesBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_FinancingType] FOREIGN KEY ([FinancingTypeId]) REFERENCES [HKP].[FinancingType] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_GLGeneralInfo_Asset] FOREIGN KEY ([AssetGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_GLGeneralInfo_ChargesPayable] FOREIGN KEY ([ChargesPayableGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_GLGeneralInfo_Expenses] FOREIGN KEY ([ExpensesGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_GLGeneralInfo_ExpensesPayable] FOREIGN KEY ([ExpensesPayableGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_GLGeneralInfo_Liability] FOREIGN KEY ([LiabilityGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_GLGeneralInfo_Revenue] FOREIGN KEY ([RevenueGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_LiabilityBudgetMaster] FOREIGN KEY ([LiabilityBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_FinancingTypeGL_RevenueBudgetMaster] FOREIGN KEY ([RevenueBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id])
);
