CREATE TABLE [MST].[AnnualBudgetOtherHead] (
    [Id]             VARCHAR (20)    NOT NULL,
    [AnnualBudgetId] VARCHAR (20)    NOT NULL,
    [BudgetMasterId] VARCHAR (20)    NOT NULL,
    [Percentage]     DECIMAL (18, 2) NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_AnnualBudgetOtherHead] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AnnualBudgetOtherHead_AnnualBudget] FOREIGN KEY ([AnnualBudgetId]) REFERENCES [MST].[AnnualBudget] ([Id]),
    CONSTRAINT [FK_AnnualBudgetOtherHead_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id])
);

