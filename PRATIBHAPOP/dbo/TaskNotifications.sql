CREATE TABLE [dbo].[TaskNotifications] (
    [Id]               INT             IDENTITY (1, 1) NOT NULL,
    [TaskId]           VARCHAR (30)    NULL,
    [NotificationId]   INT             DEFAULT ((0)) NULL,
    [NotificationName] VARCHAR (30)    NULL,
    [TaskType]         VARCHAR (30)    NULL,
    [TaskUserRole]     VARCHAR (30)    NULL,
    [TaskDesc]         NVARCHAR (1024) NULL,
    [TaskAssignBy]     VARCHAR (30)    NULL,
    [TaskAssignTo]     VARCHAR (30)    NULL,
    [TaskCreatedDate]  DATETIME        NULL,
    [isRead]           BIT             DEFAULT ((0)) NULL,
    [dateadded]        DATETIME        DEFAULT (getdate()) NULL,
    [GroupId]          VARCHAR (30)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__TaskNotif__TaskA__792A87C4] FOREIGN KEY ([TaskAssignBy]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskNotif__TaskA__7A1EABFD] FOREIGN KEY ([TaskAssignTo]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

