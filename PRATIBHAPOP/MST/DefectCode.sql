CREATE TABLE [MST].[DefectCode] (
    [Id]             VARCHAR (10)  NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [ProcessId]      VARCHAR (10)  NOT NULL,
    [Code]           VARCHAR (10)  NOT NULL,
    [Description]    VARCHAR (250) NOT NULL,
    [Active]         BIT           NOT NULL,
    [Archive]        BIT           NOT NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_DefectCode] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DefectCode_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_DefectCode_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id])
);

