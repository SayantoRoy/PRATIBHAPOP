CREATE TABLE [dbo].[AttdnManualData] (
    [EmpSystemID] VARCHAR (30)  NOT NULL,
    [WorkDate]    DATETIME      NOT NULL,
    [GroupID]     VARCHAR (10)  NULL,
    [DayStatus]   VARCHAR (10)  NULL,
    [InTime]      DATETIME      NULL,
    [OutTime]     DATETIME      NULL,
    [AddedBy]     VARCHAR (100) NULL,
    [DateAdded]   DATETIME      NULL,
    [UpdatedBy]   VARCHAR (100) NULL,
    [DateUpdated] DATETIME      NULL,
    [EntryFlag]   VARCHAR (20)  NULL,
    CONSTRAINT [PK_AttdnManualData] PRIMARY KEY CLUSTERED ([EmpSystemID] ASC, [WorkDate] ASC),
    CONSTRAINT [FK_AttdnManualData_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_AttdnManualData_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

