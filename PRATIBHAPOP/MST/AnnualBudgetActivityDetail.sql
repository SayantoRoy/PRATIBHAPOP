CREATE TABLE [MST].[AnnualBudgetActivityDetail] (
    [Id]                     BIGINT          IDENTITY (1, 1) NOT NULL,
    [AnnualBudgetId]         VARCHAR (20)    NOT NULL,
    [AnnualBudgetActivityId] VARCHAR (30)    NOT NULL,
    [EmployeeId]             VARCHAR (30)    NOT NULL,
    [ActivityId]             VARCHAR (10)    NOT NULL,
    [Amount]                 DECIMAL (18, 2) NOT NULL,
    [AddedBy]                VARCHAR (30)    NOT NULL,
    [AddedDate]              DATETIME        NOT NULL,
    [AddedFromIP]            VARCHAR (15)    NOT NULL,
    [UpdatedBy]              VARCHAR (30)    NULL,
    [UpdatedDate]            DATETIME        NULL,
    [UpdatedFromIP]          VARCHAR (15)    NULL,
    CONSTRAINT [PK_AnnualBudgetActivityDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AnnualBudgetActivityDetail_Activity] FOREIGN KEY ([ActivityId]) REFERENCES [HKP].[Activity] ([Id]),
    CONSTRAINT [FK_AnnualBudgetActivityDetail_AnnualBudget] FOREIGN KEY ([AnnualBudgetId]) REFERENCES [MST].[AnnualBudget] ([Id]),
    CONSTRAINT [FK_AnnualBudgetActivityDetail_AnnualBudgetActivity] FOREIGN KEY ([AnnualBudgetActivityId]) REFERENCES [MST].[AnnualBudgetActivity] ([Id]),
    CONSTRAINT [FK_AnnualBudgetActivityDetail_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

