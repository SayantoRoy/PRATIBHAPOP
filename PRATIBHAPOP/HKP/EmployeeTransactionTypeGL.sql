﻿CREATE TABLE [HKP].[EmployeeTransactionTypeGL] (
    [Id]                        VARCHAR (20) NOT NULL,
    [EmployeeTransactionTypeId] VARCHAR (10) NOT NULL,
    [COAId]                     VARCHAR (10) NOT NULL,
    [AdvanceGLId]               VARCHAR (10) NULL,
    [AdvanceBudgetMasterId]     VARCHAR (20) NULL,
    [AdvanceActivityId]         VARCHAR (10) NULL,
    [PayableGLId]               VARCHAR (10) NULL,
    [PayableBudgetMasterId]     VARCHAR (20) NULL,
    [PayableActivityId]         VARCHAR (10) NULL,
    [IsExpensesBooking]         BIT          CONSTRAINT [DF__EmployeeT__IsExp__32EC49AE] DEFAULT ((0)) NOT NULL,
    [AddedBy]                   VARCHAR (30) NOT NULL,
    [AddedDate]                 DATETIME     NOT NULL,
    [AddedFromIP]               VARCHAR (15) NOT NULL,
    [UpdatedBy]                 VARCHAR (30) NULL,
    [UpdatedDate]               DATETIME     NULL,
    [UpdatedFromIP]             VARCHAR (15) NULL,
    CONSTRAINT [PK_EmployeeTransactionTypeGL] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeTransactionTypeGL_Activity_AdvanceActivityId] FOREIGN KEY ([AdvanceActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_EmployeeTransactionTypeGL_Activity_PayableActivityId] FOREIGN KEY ([PayableActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_EmployeeTransactionTypeGL_AdvanceBudgetMaster] FOREIGN KEY ([AdvanceBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_EmployeeTransactionTypeGL_COA] FOREIGN KEY ([COAId]) REFERENCES [HKP].[COA] ([Id]),
    CONSTRAINT [FK_EmployeeTransactionTypeGL_EmployeeTransactionType] FOREIGN KEY ([EmployeeTransactionTypeId]) REFERENCES [HKP].[EmployeeTransactionType] ([Id]),
    CONSTRAINT [FK_EmployeeTransactionTypeGL_GLGeneralInfo_AdvanceGLId] FOREIGN KEY ([AdvanceGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_EmployeeTransactionTypeGL_GLGeneralInfo_PayableGLId] FOREIGN KEY ([PayableGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_EmployeeTransactionTypeGL_PayableBudgetMaster] FOREIGN KEY ([PayableBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id])
);

