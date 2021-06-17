CREATE TABLE [MMS].[CompanyGroupModule] (
    [Id]             VARCHAR (4)     NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [ModuleId]       VARCHAR (20)    NOT NULL,
    [SubModuleId]    VARCHAR (20)    NULL,
    [Sequence]       DECIMAL (18, 2) NOT NULL,
    [Description]    VARCHAR (250)   NULL,
    [Remarks]        VARCHAR (250)   NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_CompanyGroupModule] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupModule_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupModule_Module] FOREIGN KEY ([ModuleId]) REFERENCES [MMS].[Module] ([Id]),
    CONSTRAINT [FK_CompanyGroupModule_SubModule] FOREIGN KEY ([SubModuleId]) REFERENCES [MMS].[SubModule] ([Id])
);

