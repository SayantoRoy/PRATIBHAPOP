CREATE TABLE [dbo].[PlantWiseAttendanceLock] (
    [Id]            VARCHAR (10) NOT NULL,
    [PlantId]       VARCHAR (10) NULL,
    [LockedDate]    DATE         NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    [EmpSystemId]   VARCHAR (30) NULL,
    [IsActive]      BIT          DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_PlantWiseAttendanceLock] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__EmployeeId] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_PlantWiseAttendanceLock_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

