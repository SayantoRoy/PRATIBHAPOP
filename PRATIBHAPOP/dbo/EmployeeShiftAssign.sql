CREATE TABLE [dbo].[EmployeeShiftAssign] (
    [SystemID]           VARCHAR (30)  NOT NULL,
    [EmpSystemID]        VARCHAR (30)  NULL,
    [FixSystemID]        VARCHAR (30)  NULL,
    [RosterSystemID]     VARCHAR (30)  NULL,
    [IsFix]              BIT           NULL,
    [IsRoster]           BIT           NULL,
    [EffectiveDate]      DATE          NULL,
    [RosterStartShiftID] VARCHAR (30)  NULL,
    [StartFromDay]       INT           NULL,
    [AddedBy]            VARCHAR (100) NOT NULL,
    [DateAdded]          DATETIME      NOT NULL,
    [UpdatedBy]          VARCHAR (100) NULL,
    [DateUpdated]        DATETIME      NULL,
    [IsSingleDayShift]   BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_EmployeeShiftAssign] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_EmployeeShiftAssign_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeShiftAssign_ShiftDefination] FOREIGN KEY ([FixSystemID]) REFERENCES [dbo].[ShiftDefination] ([SystemID]),
    CONSTRAINT [FK_EmployeeShiftAssign_ShiftDefination1] FOREIGN KEY ([RosterStartShiftID]) REFERENCES [dbo].[ShiftDefination] ([SystemID]),
    CONSTRAINT [FK_EmployeeShiftAssign_ShiftRosterMaster] FOREIGN KEY ([RosterSystemID]) REFERENCES [dbo].[ShiftRosterMaster] ([SystemID])
);

