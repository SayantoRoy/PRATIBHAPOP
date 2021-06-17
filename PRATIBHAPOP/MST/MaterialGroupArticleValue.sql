CREATE TABLE [MST].[MaterialGroupArticleValue] (
    [Id]                       VARCHAR (10) NOT NULL,
    [MaterialGroupArticleId]   VARCHAR (10) NOT NULL,
    [MaterialAttributeId]      VARCHAR (10) NOT NULL,
    [MaterialAttributeValueId] VARCHAR (10) NULL,
    [ValueFreeText]            VARCHAR (50) NULL,
    [AddedBy]                  VARCHAR (30) NOT NULL,
    [AddedDate]                DATETIME     NOT NULL,
    [AddedFromIP]              VARCHAR (15) NOT NULL,
    [UpdatedBy]                VARCHAR (30) NULL,
    [UpdatedDate]              DATETIME     NULL,
    [UpdatedFromIP]            VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialGroupArticleValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialGroupArticleValue_MaterialAttribute] FOREIGN KEY ([MaterialAttributeId]) REFERENCES [HKP].[MaterialAttribute] ([Id]),
    CONSTRAINT [FK_MaterialGroupArticleValue_MaterialAttributeValue] FOREIGN KEY ([MaterialAttributeValueId]) REFERENCES [HKP].[MaterialAttributeValue] ([Id]),
    CONSTRAINT [FK_MaterialGroupArticleValue_MaterialGroupArticle] FOREIGN KEY ([MaterialGroupArticleId]) REFERENCES [MST].[MaterialGroupArticle] ([Id])
);

