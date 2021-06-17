﻿CREATE TABLE [dbo].[SubTasks] (
    [Id]                 INT             IDENTITY (1, 1) NOT NULL,
    [TaskMasterId]       VARCHAR (30)    NULL,
    [SubTaskDescription] NVARCHAR (1024) NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([TaskMasterId]) REFERENCES [dbo].[TaskMaster] ([Id])
);

