CREATE TABLE [dbo].[BudgetCodeTagWithReportGroup] (
    [Id]               VARCHAR (30) NOT NULL,
    [ReportGroupId]    VARCHAR (30) NULL,
    [ManpowerBudgetId] VARCHAR (10) NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ManpowerBudgetId]) REFERENCES [MST].[ManpowerBudget] ([Id]),
    FOREIGN KEY ([ReportGroupId]) REFERENCES [dbo].[ReportingGroup] ([Id])
);

