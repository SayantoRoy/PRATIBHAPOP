CREATE TABLE [HKP].[ProcessSet] (
    [Id]                VARCHAR (10)  NOT NULL,
    [CompanyGroupId]    VARCHAR (10)  NOT NULL,
    [CompanyId]         VARCHAR (10)  NOT NULL,
    [EntityId]          VARCHAR (10)  NOT NULL,
    [ProcessCategoryId] VARCHAR (10)  NOT NULL,
    [ProcessCriteriaId] VARCHAR (10)  NOT NULL,
    [Code]              VARCHAR (10)  NOT NULL,
    [RequiredTimeUnit]  VARCHAR (50)  NOT NULL,
    [Description]       VARCHAR (250) NULL,
    [AddedBy]           VARCHAR (30)  NOT NULL,
    [AddedDate]         DATETIME      NOT NULL,
    [AddedFromIP]       VARCHAR (15)  NOT NULL,
    [UpdatedBy]         VARCHAR (30)  NULL,
    [UpdatedDate]       DATETIME      NULL,
    [UpdatedFromIP]     VARCHAR (15)  NULL,
    CONSTRAINT [PK_ProcessSet] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProcessSet_Company] FOREIGN KEY ([CompanyId]) REFERENCES [ORG].[Company] ([Id]),
    CONSTRAINT [FK_ProcessSet_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_ProcessSet_Entity] FOREIGN KEY ([EntityId]) REFERENCES [ORG].[Entity] ([Id]),
    CONSTRAINT [FK_ProcessSet_ProcessCategory] FOREIGN KEY ([ProcessCategoryId]) REFERENCES [HKP].[ProcessCategory] ([Id]),
    CONSTRAINT [FK_ProcessSet_ProcessCriteria] FOREIGN KEY ([ProcessCriteriaId]) REFERENCES [HKP].[ProcessCriteria] ([Id])
);

