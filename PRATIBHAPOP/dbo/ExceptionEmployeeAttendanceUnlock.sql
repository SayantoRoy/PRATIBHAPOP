CREATE TABLE [dbo].[ExceptionEmployeeAttendanceUnlock] (
    [Id]            VARCHAR (30) NOT NULL,
    [EmpSystemId]   VARCHAR (30) NULL,
    [PlantId]       VARCHAR (10) NULL,
    [IsActive]      BIT          NOT NULL,
    [WorkDate]      DATE         NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK__Exception__EmpSy__4A4F9D4A] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

