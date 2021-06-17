CREATE TABLE [dbo].[TaskManagerSubTaskRemarks] (
    [Id]                    VARCHAR (30)   NOT NULL,
    [TaskManagerMasterId]   VARCHAR (30)   NULL,
    [TaskManagerSubTasksId] VARCHAR (30)   NULL,
    [RemarksById]           VARCHAR (30)   NULL,
    [Remarks]               NVARCHAR (250) NULL,
    [AddedBy]               VARCHAR (30)   NULL,
    [AddedDate]             DATETIME       NULL,
    [AddedFromIP]           VARCHAR (15)   NULL,
    [UpdatedBy]             VARCHAR (30)   NULL,
    [UpdatedDate]           DATETIME       NULL,
    [UpdatedFromIP]         VARCHAR (15)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([RemarksById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    FOREIGN KEY ([TaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    FOREIGN KEY ([TaskManagerSubTasksId]) REFERENCES [dbo].[TaskManagerSubTasks] ([Id])
);

