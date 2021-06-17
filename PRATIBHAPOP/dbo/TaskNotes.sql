CREATE TABLE [dbo].[TaskNotes] (
    [Id]                  VARCHAR (30)   NOT NULL,
    [TaskManagerMasterId] VARCHAR (30)   NULL,
    [CreatedById]         VARCHAR (30)   NULL,
    [CreatedTime]         DATETIME       NULL,
    [NoteText]            NVARCHAR (300) NULL,
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
    CONSTRAINT [FK__TaskNotes__Creat__1630DAC6] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskNotes__Creat__4C57E14D] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskNotes__Creat__70CA4BED] FOREIGN KEY ([CreatedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

