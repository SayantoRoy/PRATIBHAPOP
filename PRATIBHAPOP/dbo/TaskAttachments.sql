CREATE TABLE [dbo].[TaskAttachments] (
    [Id]                  VARCHAR (30)   NOT NULL,
    [TaskManagerMasterId] VARCHAR (30)   NULL,
    [UploadedById]        VARCHAR (30)   NULL,
    [FileName]            NVARCHAR (50)  NULL,
    [AddedBy]             VARCHAR (30)   NULL,
    [AddedDate]           DATETIME       NULL,
    [AddedFromIP]         VARCHAR (15)   NULL,
    [UpdatedBy]           VARCHAR (30)   NULL,
    [UpdatedDate]         DATETIME       NULL,
    [UpdatedFromIP]       VARCHAR (15)   NULL,
    [FileOriginalName]    VARCHAR (255)  NULL,
    [Extension]           VARCHAR (10)   NULL,
    [FileDescription]     NVARCHAR (512) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([TaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    FOREIGN KEY ([TaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    FOREIGN KEY ([TaskManagerMasterId]) REFERENCES [dbo].[TaskManagerMaster] ([Id]),
    CONSTRAINT [FK__TaskAttac__Uploa__031E0652] FOREIGN KEY ([UploadedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskAttac__Uploa__39450CD9] FOREIGN KEY ([UploadedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__TaskAttac__Uploa__5DB77779] FOREIGN KEY ([UploadedById]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

