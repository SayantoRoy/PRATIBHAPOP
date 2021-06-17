CREATE TABLE [HKP].[SubProcessSet] (
    [Id]               VARCHAR (10)  NOT NULL,
    [CompanyGroupId]   VARCHAR (10)  NULL,
    [CompanyId]        VARCHAR (10)  NULL,
    [EntityId]         VARCHAR (10)  NULL,
    [ProcessId]        VARCHAR (10)  NULL,
    [ProcessTypeId]    VARCHAR (10)  NULL,
    [Code]             VARCHAR (10)  NOT NULL,
    [RequiredTimeUnit] VARCHAR (50)  NOT NULL,
    [Description]      VARCHAR (250) NULL,
    [AddedBy]          VARCHAR (30)  NOT NULL,
    [AddedDate]        DATETIME      NOT NULL,
    [AddedFromIP]      VARCHAR (15)  NOT NULL,
    [UpdatedBy]        VARCHAR (30)  NULL,
    [UpdatedDate]      DATETIME      NULL,
    [UpdatedFromIP]    VARCHAR (15)  NULL,
    CONSTRAINT [PK_SubProcessSet] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SubProcessSet_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_SubProcessSet_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_SubProcessSet_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_SubProcessSet_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_SubProcessSet_ProcessType] FOREIGN KEY ([ProcessTypeId]) REFERENCES [HKP].[ProcessType] ([Id])
);

