﻿CREATE TABLE [dbo].[TaskManagerMaster] (
    [Id]                        VARCHAR (30)    NOT NULL,
    [TaskType]                  VARCHAR (20)    NULL,
    [TaskDescription]           NVARCHAR (250)  NULL,
    [CurrentStatus]             VARCHAR (20)    NULL,
    [AddedBy]                   VARCHAR (30)    NULL,
    [AddedDate]                 DATETIME        NULL,
    [AddedFromIP]               VARCHAR (15)    NULL,
    [UpdatedBy]                 VARCHAR (30)    NULL,
    [UpdatedDate]               DATETIME        NULL,
    [UpdatedFromIP]             VARCHAR (15)    NULL,
    [TaskPriority]              DECIMAL (5, 2)  DEFAULT ((0)) NULL,
    [TaskCategoryId]            VARCHAR (10)    NULL,
    [TaskDetailDescription]     NVARCHAR (1024) NULL,
    [TaskSubCategoryId]         VARCHAR (10)    NULL,
    [TaskSchedulerMasterId]     VARCHAR (30)    NULL,
    [IssueTransactionId]        VARCHAR (10)    NULL,
    [LastExecutionDate]         DATETIME        NULL,
    [NextExecutionDate]         DATETIME        NULL,
    [NoOfOccurences]            INT             NULL,
    [IsExpiredSchedule]         BIT             NULL,
    [ParentTaskManagerMasterId] VARCHAR (30)    NULL,
    [TaskTypeGroup]             VARCHAR (20)    NULL,
    [ClosingDate]               DATETIME        NULL,
    [TNATasksId]                VARCHAR (30)    NULL,
    [TakenForNotification]      BIT             DEFAULT ((0)) NULL,
    [StoryPoint]                DECIMAL (18, 2) NULL,
    [isOwnTask]                 BIT             DEFAULT ((0)) NULL,
    [ClosedBy]                  VARCHAR (30)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([IssueTransactionId]) REFERENCES [dbo].[IssueTransaction] ([Id]),
    FOREIGN KEY ([IssueTransactionId]) REFERENCES [dbo].[IssueTransaction] ([Id]),
    FOREIGN KEY ([IssueTransactionId]) REFERENCES [dbo].[IssueTransaction] ([Id]),
    FOREIGN KEY ([ParentTaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    FOREIGN KEY ([ParentTaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    FOREIGN KEY ([ParentTaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    FOREIGN KEY ([TaskCategoryId]) REFERENCES [HKP].[TaskCategory] ([Id]),
    FOREIGN KEY ([TaskCategoryId]) REFERENCES [HKP].[TaskCategory] ([Id]),
    FOREIGN KEY ([TaskCategoryId]) REFERENCES [HKP].[TaskCategory] ([Id]),
    FOREIGN KEY ([TaskSchedulerMasterId]) REFERENCES [dbo].[TaskSchedulerMaster] ([Id]),
    FOREIGN KEY ([TaskSchedulerMasterId]) REFERENCES [dbo].[TaskSchedulerMaster] ([Id]),
    FOREIGN KEY ([TaskSchedulerMasterId]) REFERENCES [dbo].[TaskSchedulerMaster] ([Id]),
    FOREIGN KEY ([TaskSubCategoryId]) REFERENCES [HKP].[TaskSubCategory] ([Id]),
    FOREIGN KEY ([TaskSubCategoryId]) REFERENCES [HKP].[TaskSubCategory] ([Id]),
    FOREIGN KEY ([TaskSubCategoryId]) REFERENCES [HKP].[TaskSubCategory] ([Id]),
    FOREIGN KEY ([TNATasksId]) REFERENCES [dbo].[TNATasks] ([Id]),
    FOREIGN KEY ([TNATasksId]) REFERENCES [dbo].[TNATasks] ([Id]),
    FOREIGN KEY ([TNATasksId]) REFERENCES [dbo].[TNATasks] ([Id])
);
