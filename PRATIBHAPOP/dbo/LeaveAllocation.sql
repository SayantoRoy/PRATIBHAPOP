CREATE TABLE [dbo].[LeaveAllocation] (
    [YrCalSystemID]        VARCHAR (30)  NOT NULL,
    [EmpSystemID]          VARCHAR (30)  NOT NULL,
    [LvPolDetailsSystemID] VARCHAR (30)  NOT NULL,
    [LeaveDays]            INT           NULL,
    [AppliedLeave]         INT           CONSTRAINT [DF_LeaveAllocation_AppliedLeave] DEFAULT ((0)) NOT NULL,
    [AvailedLeave]         INT           CONSTRAINT [DF_LeaveAllocation_AvailedLeave] DEFAULT ((0)) NOT NULL,
    [GroupID]              VARCHAR (10)  NULL,
    [PlantID]              VARCHAR (10)  NULL,
    [AddedBy]              VARCHAR (100) NOT NULL,
    [DateAdded]            DATETIME      NOT NULL,
    [UpdatedBy]            VARCHAR (100) NULL,
    [DateUpdated]          DATETIME      NULL,
    CONSTRAINT [PK_LeaveAllocation] PRIMARY KEY CLUSTERED ([YrCalSystemID] ASC, [EmpSystemID] ASC, [LvPolDetailsSystemID] ASC),
    CONSTRAINT [FK_LeaveAllocation_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_LeaveAllocation_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_LeaveAllocation_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_LeaveAllocation_YearlyCalendar] FOREIGN KEY ([YrCalSystemID]) REFERENCES [dbo].[YearlyCalendar] ([Id])
);

