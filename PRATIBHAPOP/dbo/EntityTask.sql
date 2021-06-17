CREATE TABLE [dbo].[EntityTask] (
    [Id]            VARCHAR (30) NOT NULL,
    [EntityId]      VARCHAR (10) NULL,
    [TaskMasterId]  VARCHAR (30) NULL,
    [EmpSystemId]   VARCHAR (30) NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_EntityTask] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EntityTask_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_EntityTask_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_EntityTask_EntityTask] FOREIGN KEY ([TaskMasterId]) REFERENCES [dbo].[TaskMaster] ([Id])
);

