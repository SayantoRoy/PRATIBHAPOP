CREATE TABLE [MST].[CompanySubProcess] (
    [Id]             NVARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [CompanyId]      VARCHAR (10)  NOT NULL,
    [SubProcessId]   VARCHAR (10)  NOT NULL,
    [ProcessId]      VARCHAR (10)  NULL,
    [Archive]        BIT           NOT NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_CompanySubProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanySubProcess_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_CompanySubProcess_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanySubProcess_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_CompanySubProcess_SubProcess] FOREIGN KEY ([SubProcessId]) REFERENCES [HKP].[SubProcess] ([Id])
);

