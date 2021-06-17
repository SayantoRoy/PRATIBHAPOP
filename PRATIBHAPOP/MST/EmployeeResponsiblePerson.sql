CREATE TABLE [MST].[EmployeeResponsiblePerson] (
    [Id]                     INT          IDENTITY (1, 1) NOT NULL,
    [EmployeeId]             VARCHAR (30) NOT NULL,
    [SourceType]             VARCHAR (30) NOT NULL,
    [BudgetMasterId]         VARCHAR (20) NOT NULL,
    [BudgetMasterActivityId] VARCHAR (20) NULL,
    [ActivityPhoneId]        VARCHAR (20) NULL,
    [Active]                 BIT          NOT NULL,
    [AddedBy]                VARCHAR (30) NOT NULL,
    [AddedDate]              DATETIME     NOT NULL,
    [AddedFromIP]            VARCHAR (15) NOT NULL,
    [UpdatedBy]              VARCHAR (30) NULL,
    [UpdatedDate]            DATETIME     NULL,
    [UpdatedFromIP]          VARCHAR (15) NULL,
    [MappingLevel]           VARCHAR (20) NULL,
    CONSTRAINT [PK_EmployeeResponsiblePerson] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeResponsiblePerson_ActivityPhone] FOREIGN KEY ([ActivityPhoneId]) REFERENCES [HKP].[ActivityPhone] ([Id]),
    CONSTRAINT [FK_EmployeeResponsiblePerson_BudgetMaster] FOREIGN KEY ([BudgetMasterId]) REFERENCES [MST].[BudgetMaster] ([Id]),
    CONSTRAINT [FK_EmployeeResponsiblePerson_BudgetMasterActivity] FOREIGN KEY ([BudgetMasterActivityId]) REFERENCES [MST].[BudgetMasterActivity] ([Id]),
    CONSTRAINT [FK_EmployeeResponsiblePerson_Employee] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

