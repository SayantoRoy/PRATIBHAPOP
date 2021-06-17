CREATE TABLE [dbo].[TaskStatusHistory] (
    [Id]                  VARCHAR (30)   NOT NULL,
    [TaskManagerMasterId] VARCHAR (30)   NULL,
    [CreatedById]         VARCHAR (30)   NULL,
    [CreatedTime]         DATETIME       NULL,
    [Status]              NVARCHAR (20)  NULL,
    [Remarks]             NVARCHAR (100) NULL,
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
    CONSTRAINT [FK__TaskStatu__Creat__1A016BAA] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskStatu__Creat__50287231] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskStatu__Creat__749ADCD1] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

