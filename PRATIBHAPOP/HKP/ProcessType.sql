CREATE TABLE [HKP].[ProcessType] (
    [Id]             VARCHAR (10)  NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [ProcessId]      VARCHAR (10)  NOT NULL,
    [Code]           VARCHAR (10)  NOT NULL,
    [ShortName]      VARCHAR (15)  NOT NULL,
    [StandardName]   VARCHAR (50)  NOT NULL,
    [UserName]       VARCHAR (50)  NOT NULL,
    [Description]    VARCHAR (250) NULL,
    [Remarks]        VARCHAR (250) NULL,
    [Active]         BIT           NOT NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_ProcessType] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProcessType_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ProcessType_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id])
);

