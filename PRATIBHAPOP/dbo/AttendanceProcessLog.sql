CREATE TABLE [dbo].[AttendanceProcessLog] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [PDate]          DATETIME      NOT NULL,
    [ProcessStatus]  BIT           NULL,
    [ProcessMessage] VARCHAR (250) NULL,
    [ProcessName]    VARCHAR (50)  NULL,
    [PlantId]        VARCHAR (10)  NULL,
    CONSTRAINT [PK_ScheduleLog] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AttendanceProcessLog_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_AttendanceProcessLog_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

