CREATE TABLE [MST].[ManpowerBudgetResponsiblePerson] (
    [Id]                     INT          IDENTITY (1, 1) NOT NULL,
    [ManpowerBudgetId]       VARCHAR (10) NOT NULL,
    [BudgetMasterId]         VARCHAR (20) NOT NULL,
    [BudgetMasterActivityId] VARCHAR (20) NULL,
    [SourceType]             VARCHAR (30) NOT NULL,
    [Active]                 BIT          NOT NULL,
    [AddedBy]                VARCHAR (30) NOT NULL,
    [AddedDate]              DATETIME     NOT NULL,
    [AddedFromIP]            VARCHAR (15) NOT NULL,
    [UpdatedBy]              VARCHAR (30) NULL,
    [UpdatedDate]            DATETIME     NULL,
    [UpdatedFromIP]          VARCHAR (15) NULL,
    CONSTRAINT [PK_ManpowerBudgetResponsiblePerson] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ManpowerBudgetResponsiblePerson_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_ManpowerBudgetResponsiblePerson_BudgetMasterActivity] FOREIGN KEY ([BudgetMasterActivityId]) REFERENCES [MST].[BudgetMasterActivity] ([Id]),
    CONSTRAINT [FK_ManpowerBudgetResponsiblePerson_ManpowerBudget] FOREIGN KEY ([ManpowerBudgetId]) REFERENCES [MST].[ManpowerBudget] ([Id])
);

