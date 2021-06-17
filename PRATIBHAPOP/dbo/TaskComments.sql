CREATE TABLE [dbo].[TaskComments] (
    [Id]                   VARCHAR (30)   NOT NULL,
    [TaskManagerMasterId]  VARCHAR (30)   NULL,
    [CreatedById]          VARCHAR (30)   NULL,
    [CreatedTime]          DATETIME       NULL,
    [CommentText]          NVARCHAR (300) NULL,
    [TaskAthorizationType] VARCHAR (40)   NULL,
    [AddedBy]              VARCHAR (30)   NULL,
    [AddedDate]            DATETIME       NULL,
    [AddedFromIP]          VARCHAR (15)   NULL,
    [UpdatedBy]            VARCHAR (30)   NULL,
    [UpdatedDate]          DATETIME       NULL,
    [UpdatedFromIP]        VARCHAR (15)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([TaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    FOREIGN KEY ([TaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    FOREIGN KEY ([TaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    CONSTRAINT [FK__TaskComme__Creat__05FA72FD] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskComme__Creat__3C217984] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskComme__Creat__6093E424] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

