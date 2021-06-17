CREATE TABLE [MMS].[CompanyGroupModuleApp] (
    [Id]             VARCHAR (4)     NOT NULL,
    [CompanyGroupId] VARCHAR (10)    NOT NULL,
    [ModuleAppId]    VARCHAR (2)     NOT NULL,
    [Sequence]       DECIMAL (18, 2) NOT NULL,
    [Description]    VARCHAR (250)   NULL,
    [Remarks]        VARCHAR (250)   NULL,
    [AddedBy]        VARCHAR (30)    NOT NULL,
    [AddedDate]      DATETIME        NOT NULL,
    [AddedFromIP]    VARCHAR (15)    NOT NULL,
    [UpdatedBy]      VARCHAR (30)    NULL,
    [UpdatedDate]    DATETIME        NULL,
    [UpdatedFromIP]  VARCHAR (15)    NULL,
    CONSTRAINT [PK_CompanyGroupModuleApp] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupModuleApp_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupModuleApp_ModuleApp] FOREIGN KEY ([ModuleAppId]) REFERENCES [MMS].[ModuleApp] ([Id])
);

