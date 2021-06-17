CREATE TABLE [dbo].[LunchOutHour] (
    [SystemId]     VARCHAR (50)    NOT NULL,
    [EmpSystemId]  VARCHAR (30)    NOT NULL,
    [LunchOutHour] DECIMAL (18, 2) NOT NULL,
    [WorkDate]     DATETIME        NOT NULL,
    [AddedBy]      VARCHAR (100)   NULL,
    [DateAdded]    DATETIME        NULL,
    [UpdatedBy]    VARCHAR (50)    NULL,
    [DateUpdated]  DATETIME        NULL,
    CONSTRAINT [FK_LunchOutHour_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

