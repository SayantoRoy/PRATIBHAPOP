CREATE TABLE [HKP].[OverHeadTypeGL] (
    [Id]                     VARCHAR (10)  NOT NULL,
    [COAId]                  VARCHAR (10)  NOT NULL,
    [OverHeadTypeId]         VARCHAR (10)  NOT NULL,
    [ExpensesGLId]           VARCHAR (10)  NULL,
    [ExpensesActivityId]     VARCHAR (10)  NULL,
    [Remarks]                VARCHAR (250) NULL,
    [AddedBy]                VARCHAR (30)  NOT NULL,
    [AddedDate]              DATETIME      NOT NULL,
    [AddedFromIP]            VARCHAR (15)  NOT NULL,
    [UpdatedBy]              VARCHAR (30)  NULL,
    [UpdatedDate]            DATETIME      NULL,
    [UpdatedFromIP]          VARCHAR (15)  NULL,
    [ExpensesBudgetMasterId] VARCHAR (20)  NULL,
    [GLType]                 VARCHAR (30)  NULL,
    CONSTRAINT [PK_OverHeadTypeGL] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OverHeadTypeGL_Activity_Expenses] FOREIGN KEY ([ExpensesActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_OverHeadTypeGL_COA] FOREIGN KEY ([COAId]) REFERENCES [HKP].[COA] ([Id]),
    CONSTRAINT [FK_OverHeadTypeGL_ExpensesBudgetMaster] FOREIGN KEY ([ExpensesBudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_OverHeadTypeGL_GLGeneralInfo_Expenses] FOREIGN KEY ([ExpensesGLId]) REFERENCES [HKP].[GLGeneralInfo] ([Id]),
    CONSTRAINT [FK_OverHeadTypeGL_LCChargesType] FOREIGN KEY ([OverHeadTypeId]) REFERENCES [HKP].[OverHeadType] ([Id])
);

