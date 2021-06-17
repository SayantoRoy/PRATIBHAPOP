CREATE TABLE [HKP].[CompanyGroupBudget] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [BudgetId]       VARCHAR (10) NOT NULL,
    [Active]         BIT          NOT NULL,
    [Archive]        BIT          NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupBudget] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupBudget_Budget] FOREIGN KEY ([BudgetId]) REFERENCES [HKP].[Budget] ([Id]),
    CONSTRAINT [FK_CompanyGroupBudget_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id])
);

