CREATE TABLE [dbo].[RosterBudget] (
    [Id]            VARCHAR (30) NOT NULL,
    [BudgetId]      VARCHAR (10) NOT NULL,
    [RosterId]      VARCHAR (30) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_RosterBudget] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RosterBudget_BudgetId] FOREIGN KEY ([BudgetId]) REFERENCES [MST].[ManpowerBudget] ([Id]),
    CONSTRAINT [FK_RosterBudget_RosterId] FOREIGN KEY ([RosterId]) REFERENCES [dbo].[RosterPatternHeader] ([Id])
);

