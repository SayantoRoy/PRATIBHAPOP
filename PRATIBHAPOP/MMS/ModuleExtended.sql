CREATE TABLE [MMS].[ModuleExtended] (
    [Id]             VARCHAR (4)   NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [CompanyId]      VARCHAR (10)  NULL,
    [PlantId]        VARCHAR (10)  NULL,
    [ModuleId]       VARCHAR (20)  NOT NULL,
    [Url]            VARCHAR (150) NULL,
    [Remarks]        VARCHAR (250) NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_ModuleExtended] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ModuleExtended_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_ModuleExtended_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ModuleExtended_Module] FOREIGN KEY ([ModuleId]) REFERENCES [MMS].[Module] ([Id]),
    CONSTRAINT [FK_ModuleExtended_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

