CREATE TABLE [dbo].[JobWorkIssueReturn] (
    [Id]                VARCHAR (50)  NOT NULL,
    [Date]              DATETIME      NOT NULL,
    [ByWhomId]          VARCHAR (30)  NOT NULL,
    [IssueReturn]       VARCHAR (20)  NOT NULL,
    [JobWorkLocationId] VARCHAR (50)  NOT NULL,
    [Remarks]           VARCHAR (250) NULL,
    [AddedBy]           VARCHAR (30)  NOT NULL,
    [AddedDate]         DATETIME      NOT NULL,
    [AddedFromIP]       VARCHAR (15)  NOT NULL,
    [UpdatedBy]         VARCHAR (30)  NULL,
    [UpdatedDate]       DATETIME      NULL,
    [UpdatedFromIP]     VARCHAR (15)  NULL,
    CONSTRAINT [PK_JobWorkIssueReturn] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_JobWorkIssueReturn_ByWhom] FOREIGN KEY ([ByWhomId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_JobWorkIssueReturn_JobWorkLocation] FOREIGN KEY ([JobWorkLocationId]) REFERENCES [HKP].[JobWorkLocation] ([Id])
);

