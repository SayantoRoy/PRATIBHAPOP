CREATE TABLE [dbo].[AttdnProcessFinalData] (
    [EmpSystemID] VARCHAR (30)  NOT NULL,
    [WorkDate]    DATETIME      NOT NULL,
    [GroupID]     VARCHAR (10)  NULL,
    [PlantID]     VARCHAR (10)  NULL,
    [ShiftID]     VARCHAR (10)  NULL,
    [InTime]      DATETIME      NULL,
    [OutTime]     DATETIME      NULL,
    [DayStatus]   VARCHAR (10)  NULL,
    [AddedBy]     VARCHAR (100) NULL,
    [DateAdded]   DATETIME      NULL,
    [UpdatedBy]   VARCHAR (100) NULL,
    [DateUpdated] DATETIME      NULL,
    CONSTRAINT [PK_AttdnProcessFinalData] PRIMARY KEY CLUSTERED ([EmpSystemID] ASC, [WorkDate] ASC),
    CONSTRAINT [FK_AttdnProcessFinalData_CompanyGroup] FOREIGN KEY ([GroupID]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_AttdnProcessFinalData_CompliedShift] FOREIGN KEY ([ShiftID]) REFERENCES [HKP].[CompliedShift] ([Id]),
    CONSTRAINT [FK_AttdnProcessFinalData_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_AttdnProcessFinalData_Plant] FOREIGN KEY ([PlantID]) REFERENCES [ORG].[Plant] ([Id])
);

