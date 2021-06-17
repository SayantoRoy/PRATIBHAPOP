CREATE TABLE [dbo].[IssueSubTask] (
    [Id]                  VARCHAR (10)  NOT NULL,
    [IssueTransactionId]  VARCHAR (10)  NULL,
    [RequiredDate]        DATETIME      NULL,
    [TaskDetail]          VARCHAR (250) NULL,
    [IsDone]              BIT           NOT NULL,
    [ResponsiblePersonId] VARCHAR (30)  NULL,
    [Remarks]             VARCHAR (250) NULL,
    [AddedBy]             VARCHAR (30)  NOT NULL,
    [AddedDate]           DATETIME      NOT NULL,
    [AddedFromIP]         VARCHAR (15)  NOT NULL,
    [UpdatedBy]           VARCHAR (30)  NULL,
    [UpdatedDate]         DATETIME      NULL,
    [UpdatedFromIP]       VARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([IssueTransactionId]) REFERENCES [dbo].[IssueTransaction] ([Id]),
    FOREIGN KEY ([IssueTransactionId]) REFERENCES [dbo].[IssueTransaction] ([Id]),
    FOREIGN KEY ([IssueTransactionId]) REFERENCES [dbo].[IssueTransaction] ([Id]),
    CONSTRAINT [FK__IssueSubT__Respo__290EA510] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__IssueSubT__Respo__4D810FB0] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__IssueSubT__Respo__72E79E89] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

