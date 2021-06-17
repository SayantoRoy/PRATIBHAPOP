CREATE TABLE [dbo].[SandwichLeaveLog] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [EmpSystemId]   VARCHAR (30)  NOT NULL,
    [LeaveMasterId] VARCHAR (30)  NOT NULL,
    [PlantId]       VARCHAR (10)  NULL,
    [WorkDate]      DATE          NOT NULL,
    [AddedBy]       VARCHAR (100) NOT NULL,
    [DateAdded]     DATETIME      NOT NULL,
    [UpdatedBy]     VARCHAR (100) NULL,
    [DateUpdated]   DATETIME      NULL,
    CONSTRAINT [PK_SandwichLeaveLog] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SandwichLeaveLog_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_SandwichLeaveLog_SandwichLeaveLog] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

