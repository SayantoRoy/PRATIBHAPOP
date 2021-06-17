CREATE TABLE [MST].[MaterialGroupArticlePrdProcessGroup] (
    [Id]                                    VARCHAR (10)    NOT NULL,
    [MaterialGroupArticleId]                VARCHAR (10)    NOT NULL,
    [MaterialGroupProductionProcessGroupId] VARCHAR (20)    NOT NULL,
    [OutSourceCost]                         DECIMAL (18, 4) NULL,
    [Wastage]                               DECIMAL (18, 2) NULL,
    [AddedBy]                               VARCHAR (30)    NOT NULL,
    [AddedDate]                             DATETIME        NOT NULL,
    [AddedFromIP]                           VARCHAR (15)    NULL,
    [UpdatedBy]                             VARCHAR (30)    NULL,
    [UpdatedDate]                           DATETIME        NULL,
    [UpdatedFromIP]                         VARCHAR (15)    NULL,
    CONSTRAINT [PK_MaterialGroupArticlePrdProcessGroup] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialGroupArticlePrdProcessGroup_MaterialGroupArticle] FOREIGN KEY ([MaterialGroupArticleId]) REFERENCES [MST].[MaterialGroupArticle] ([Id]),
    CONSTRAINT [FK_MaterialGroupArticlePrdProcessGroup_MaterialGroupProductionProcessGroup] FOREIGN KEY ([MaterialGroupProductionProcessGroupId]) REFERENCES [MST].[MaterialGroupProductionProcessGroup] ([Id])
);

