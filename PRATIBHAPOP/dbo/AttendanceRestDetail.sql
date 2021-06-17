CREATE TABLE [dbo].[AttendanceRestDetail] (
    [Id]               VARCHAR (50) NOT NULL,
    [AttendanceRestId] VARCHAR (50) NULL,
    [PlantId]          VARCHAR (10) NULL,
    [EmpSystemId]      VARCHAR (30) NULL,
    [AddedBy]          VARCHAR (30) NOT NULL,
    [AddedDate]        DATETIME     NOT NULL,
    [AddedFromIP]      VARCHAR (15) NOT NULL,
    [UpdatedBy]        VARCHAR (30) NULL,
    [UpdatedDate]      DATETIME     NULL,
    [UpdatedFromIP]    VARCHAR (15) NULL,
    CONSTRAINT [PK_AttendanceRestDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AttendanceRestDetails_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_AttendanceRestDetails_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK_AttendanceRestDetails_Rest] FOREIGN KEY ([AttendanceRestId]) REFERENCES [dbo].[AttendanceRest] ([Id])
);

