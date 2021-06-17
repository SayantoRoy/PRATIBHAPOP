CREATE TABLE [MST].[ExceptionForHolidayEmpList] (
    [Id]                    VARCHAR (20) NOT NULL,
    [WorkDate]              DATETIME     NULL,
    [ExceptionForHolidayId] VARCHAR (20) NOT NULL,
    [EmpSystemId]           VARCHAR (30) NOT NULL,
    [AddedBy]               VARCHAR (30) NOT NULL,
    [AddedDate]             DATETIME     NOT NULL,
    [AddedFromIP]           VARCHAR (15) NOT NULL,
    [UpdatedBy]             VARCHAR (30) NULL,
    [UpdatedDate]           DATETIME     NULL,
    [UpdatedFromIP]         VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([ExceptionForHolidayId]) REFERENCES [MST].[ExceptionForHoliday] ([Id]),
    FOREIGN KEY ([ExceptionForHolidayId]) REFERENCES [MST].[ExceptionForHoliday] ([Id])
);

