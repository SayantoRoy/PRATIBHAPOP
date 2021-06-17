CREATE TABLE [dbo].[SalaryIncrementNextDueDate] (
    [Id]            VARCHAR (30)  NOT NULL,
    [EmpSystemId]   VARCHAR (30)  NULL,
    [EffectiveDate] DATE          NULL,
    [NextDueDate]   DATE          NULL,
    [PlantId]       VARCHAR (10)  NULL,
    [GroupID]       VARCHAR (10)  NULL,
    [AddedBy]       VARCHAR (100) NOT NULL,
    [DateAdded]     DATETIME      NOT NULL,
    [UpdatedBy]     VARCHAR (100) NULL,
    [DateUpdated]   DATETIME      NULL,
    CONSTRAINT [PK_SalaryIncrementDueDate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__SalaryInc__EmpSy__45151B8A] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__SalaryInc__Group__371C01EE] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK__SalaryInc__Plant__15D01CBC] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

