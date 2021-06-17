CREATE TABLE [dbo].[EmployeeAttendanceGroup] (
    [Id]                VARCHAR (30) NOT NULL,
    [PlantId]           VARCHAR (10) NOT NULL,
    [AttendanceGroupId] VARCHAR (30) NOT NULL,
    [CompanyGroupId]    VARCHAR (10) NOT NULL,
    [EmployeeId]        VARCHAR (30) NOT NULL,
    [AddedBy]           VARCHAR (30) NOT NULL,
    [AddedDate]         DATETIME     NOT NULL,
    [AddedFromIP]       VARCHAR (15) NOT NULL,
    [UpdatedBy]         VARCHAR (30) NULL,
    [UpdatedDate]       DATETIME     NULL,
    [UpdatedFromIP]     VARCHAR (15) NULL,
    CONSTRAINT [PK_EmployeeAttendanceGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeAttendanceGroup_AttendanceGroup] FOREIGN KEY ([AttendanceGroupId]) REFERENCES [dbo].[AttendanceGroup] ([Id]),
    CONSTRAINT [FK_EmployeeAttendanceGroup_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_EmployeeAttendanceGroup_CompanyGroup1] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_EmployeeAttendanceGroup_EmployeeAttendanceGroup] FOREIGN KEY ([Id]) REFERENCES [dbo].[EmployeeAttendanceGroup] ([Id]),
    CONSTRAINT [FK_EmployeeAttendanceGroup_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EmployeeAttendanceGroup_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

