CREATE TABLE [TRN].[HolidayAbsentismAssignment] (
    [Id]             VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NULL,
    [PlantId]        VARCHAR (10) NULL,
    [EmpSystemID]    VARCHAR (30) NULL,
    [WorkDate]       DATE         NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    CONSTRAINT [PK_HolidayAbsentismAssignment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_HolidayAbsentismAssignment_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_HolidayAbsentismAssignment_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_HolidayAbsentismAssignment_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

