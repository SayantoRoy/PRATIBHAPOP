CREATE TABLE [MST].[AnnualBudgetActivity] (
    [Id]             VARCHAR (30)    NOT NULL,
    [AnnualBudgetId] VARCHAR (20)    NOT NULL,
    [ActivityId]     VARCHAR (10)    NULL,
    [Amount]         DECIMAL (18, 2) NOT NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_AnnualBudgetActivity] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AnnualBudgetActivity_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_AnnualBudgetActivityy_AnnualBudget] FOREIGN KEY ([AnnualBudgetId]) REFERENCES [MST].[AnnualBudget] ([Id])
);

