CREATE TABLE [dbo].[AttndManualDataFromApp] (
    [EmpSystemID]   VARCHAR (30)  NOT NULL,
    [WorkDate]      DATETIME      NOT NULL,
    [GroupID]       VARCHAR (10)  NULL,
    [ShiftSystemId] VARCHAR (30)  NULL,
    [DayStatus]     VARCHAR (10)  NULL,
    [InTime]        DATETIME      NULL,
    [OutTime]       DATETIME      NULL,
    [AddedBy]       VARCHAR (100) NULL,
    [DateAdded]     DATETIME      NULL,
    [UpdatedBy]     VARCHAR (100) NULL,
    [DateUpdated]   DATETIME      NULL,
    CONSTRAINT [PK_AttndManualDataFromApp] PRIMARY KEY CLUSTERED ([EmpSystemID] ASC, [WorkDate] ASC),
    CONSTRAINT [FK_AttndManualDataFromApp_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_AttndManualDataFromApp_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_AttndManualDataFromApp_ShiftDefination] FOREIGN KEY ([ShiftSystemId]) REFERENCES [dbo].[ShiftDefination] ([SystemID])
);

