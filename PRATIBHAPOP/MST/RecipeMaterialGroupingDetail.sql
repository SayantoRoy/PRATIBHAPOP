CREATE TABLE [MST].[RecipeMaterialGroupingDetail] (
    [Id]                             VARCHAR (10)    NOT NULL,
    [RecipeMaterialGroupingMasterId] VARCHAR (30)    NOT NULL,
    [MaterialMasterId]               VARCHAR (30)    NOT NULL,
    [ArticleId]                      VARCHAR (10)    NULL,
    [Value]                          DECIMAL (18, 2) NULL,
    [UomId]                          VARCHAR (10)    NULL,
    [AddedBy]                        VARCHAR (30)    NOT NULL,
    [AddedDate]                      DATETIME        NOT NULL,
    [AddedFromIP]                    VARCHAR (15)    NOT NULL,
    [UpdatedBy]                      VARCHAR (30)    NULL,
    [UpdatedDate]                    DATETIME        NULL,
    [UpdatedFromIP]                  VARCHAR (15)    NULL,
    CONSTRAINT [PK_RecipeMaterialGroupingDetail] PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    FOREIGN KEY ([ArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id]),
    FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK__RecipeMaterialGroupingDetail__RecipeMaterialGroupingMasterId] FOREIGN KEY ([RecipeMaterialGroupingMasterId]) REFERENCES [MST].[RecipeMaterialGroupingMaster] ([Id]),
    CONSTRAINT [FK__RecipeMaterialGroupingDetail__UomId] FOREIGN KEY ([UomId]) REFERENCES [SCS].[UnitOfMeasurement] ([Id])
);

