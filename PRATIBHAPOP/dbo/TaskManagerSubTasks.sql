CREATE TABLE [dbo].[TaskManagerSubTasks] (
    [Id]                  VARCHAR (30)   NOT NULL,
    [TaskManagerMasterId] VARCHAR (30)   NULL,
    [ResponsiblePersonId] VARCHAR (30)   NULL,
    [RequiredDate]        DATETIME       NULL,
    [TaskDetail]          NVARCHAR (250) NULL,
    [IsDone]              BIT            NULL,
    [Remarks]             NVARCHAR (250) NULL,
    [AddedBy]             VARCHAR (30)   NULL,
    [AddedDate]           DATETIME       NULL,
    [AddedFromIP]         VARCHAR (15)   NULL,
    [UpdatedBy]           VARCHAR (30)   NULL,
    [UpdatedDate]         DATETIME       NULL,
    [UpdatedFromIP]       VARCHAR (15)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([TaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    FOREIGN KEY ([TaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    FOREIGN KEY ([TaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    CONSTRAINT [FK__TaskManag__Respo__0D9B94C5] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskManag__Respo__43C29B4C] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskManag__Respo__683505EC] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

