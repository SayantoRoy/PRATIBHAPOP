CREATE TABLE [MST].[ManpowerBudgetAllowance] (
    [Id]                      VARCHAR (30)    NOT NULL,
    [ManpowerBudgetId]        VARCHAR (10)    NOT NULL,
    [CurrencyId]              VARCHAR (10)    NULL,
    [EffectiveDate]           DATETIME        NOT NULL,
    [MinimumSalary]           DECIMAL (18, 2) NOT NULL,
    [MaximumSalary]           DECIMAL (18, 2) NOT NULL,
    [SkillAllowance]          DECIMAL (18, 2) NOT NULL,
    [ResponsibilityAllowance] DECIMAL (18, 2) NOT NULL,
    [Active]                  BIT             NOT NULL,
    [Archive]                 BIT             NOT NULL,
    [AddedBy]                 VARCHAR (30)    NOT NULL,
    [AddedDate]               DATETIME        NOT NULL,
    [AddedFromIP]             VARCHAR (15)    NOT NULL,
    [UpdatedBy]               VARCHAR (30)    NULL,
    [UpdatedDate]             DATETIME        NULL,
    [UpdatedFromIP]           VARCHAR (15)    NULL,
    CONSTRAINT [PK_ManpowerBudgetAllowance] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ManpowerBudgetAllowance_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [SCS].[Currency] ([Id]),
    CONSTRAINT [FK_ManpowerBudgetAllowance_ManpowerBudget] FOREIGN KEY ([ManpowerBudgetId]) REFERENCES [MST].[ManpowerBudget] ([Id])
);

