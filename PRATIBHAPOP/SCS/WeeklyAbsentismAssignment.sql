CREATE TABLE [SCS].[WeeklyAbsentismAssignment] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NULL,
    [PlantId]        VARCHAR (10) NULL,
    [EmpSystemID]    VARCHAR (30) NULL,
    [WorkingDate]    DATE         NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_WeeklyAbsentismAssignment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WeeklyAbsentismAssignment_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_WeeklyAbsentismAssignment_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_WeeklyAbsentismAssignment_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

