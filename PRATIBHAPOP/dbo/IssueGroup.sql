CREATE TABLE [dbo].[IssueGroup] (
    [Id]                  VARCHAR (30) NOT NULL,
    [Name]                VARCHAR (50) NULL,
    [ResponsiblePersonId] VARCHAR (30) NULL,
    [AddedBy]             VARCHAR (30) NULL,
    [AddedDate]           DATETIME     NULL,
    [AddedFromIP]         VARCHAR (15) NULL,
    [UpdatedBy]           VARCHAR (30) NULL,
    [UpdatedDate]         DATETIME     NULL,
    [UpdatedFromIP]       VARCHAR (15) NULL,
    [CreateDate]          DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__IssueGrou__Respo__2449EFF3] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__IssueGrou__Respo__48BC5A93] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK__IssueGrou__Respo__6E22E96C] FOREIGN KEY ([ResponsiblePersonId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

