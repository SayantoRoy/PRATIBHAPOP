CREATE TABLE [dbo].[EmployeeBudgetCodeHistory] (
    [Id]                 VARCHAR (10) NOT NULL,
    [EmpSystemId]        VARCHAR (30) NOT NULL,
    [BudgetId]           VARCHAR (10) NOT NULL,
    [GivenDesignationId] VARCHAR (10) NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [LegalDesignationId] VARCHAR (10) NULL,
    CONSTRAINT [PK_EmployeeBudgetCodeHistory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeBudgetCodeHistory_Designation] FOREIGN KEY ([GivenDesignationId]) REFERENCES [HKP].[Designation] ([Id]),
    CONSTRAINT [FK_EmployeeBudgetCodeHistory_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeBudgetCodeHistory_LegalDesignation] FOREIGN KEY ([LegalDesignationId]) REFERENCES [HKP].[LegalDesignation] ([Id]),
    CONSTRAINT [FK_EmployeeBudgetCodeHistory_ManpowerBudget] FOREIGN KEY ([BudgetId]) REFERENCES [MST].[ManpowerBudget] ([Id])
);

