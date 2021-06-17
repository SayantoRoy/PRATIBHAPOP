CREATE TABLE [dbo].[EmployeeWeekOffByDay] (
    [SystemID]          VARCHAR (30)  NOT NULL,
    [EmpSystemID]       VARCHAR (30)  NULL,
    [FixSystemID]       VARCHAR (30)  NULL,
    [EffectiveDate]     DATE          NOT NULL,
    [AlignWithCC]       BIT           NULL,
    [IndividualWeekOff] BIT           NULL,
    [FstOffDay]         VARCHAR (30)  NULL,
    [FstDayLengthType]  VARCHAR (30)  NULL,
    [SndOffDay]         VARCHAR (30)  NULL,
    [SndDayLengthType]  VARCHAR (30)  NULL,
    [AddedBy]           VARCHAR (100) NOT NULL,
    [DateAdded]         DATETIME      NOT NULL,
    [UpdatedBy]         VARCHAR (100) NULL,
    [DateUpdated]       DATETIME      NULL,
    CONSTRAINT [PK_EmployeeWeekOffByDay] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_EmployeeWeekOffByDay_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeWeekOffByDay_ShiftDefination] FOREIGN KEY ([FixSystemID]) REFERENCES [dbo].[ShiftDefination] ([SystemID])
);

