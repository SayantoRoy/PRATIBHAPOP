CREATE TABLE [MST].[MaterialMasterArticleProcess] (
    [Id]                      VARCHAR (10) NOT NULL,
    [ProductDefinitionId]     VARCHAR (10) NOT NULL,
    [MaterialMasterArticleId] VARCHAR (10) NOT NULL,
    [ProcessId]               VARCHAR (10) NOT NULL,
    [AddedBy]                 VARCHAR (30) NOT NULL,
    [AddedDate]               DATETIME     NOT NULL,
    [AddedFromIP]             VARCHAR (15) NOT NULL,
    [UpdatedBy]               VARCHAR (30) NULL,
    [UpdatedDate]             DATETIME     NULL,
    [UpdatedFromIP]           VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialMasterArticleProcess] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterArticleProcess_MaterialMasterArticle] FOREIGN KEY ([MaterialMasterArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    CONSTRAINT [FK_MaterialMasterArticleProcess_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_MaterialMasterArticleProcess_ProductDefinition] FOREIGN KEY ([ProductDefinitionId]) REFERENCES [TRN].[ProductDefinition] ([Id])
);

