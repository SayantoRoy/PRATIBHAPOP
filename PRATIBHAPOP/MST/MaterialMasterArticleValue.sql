CREATE TABLE [MST].[MaterialMasterArticleValue] (
    [Id]                             INT          IDENTITY (1, 1) NOT NULL,
    [MaterialMasterId]               VARCHAR (30) NOT NULL,
    [MaterialAttributeId]            VARCHAR (10) NOT NULL,
    [MaterialMasterArticleId]        VARCHAR (10) NOT NULL,
    [MaterialAttributeValueId]       VARCHAR (10) NULL,
    [MaterialAttributeValueFreeText] VARCHAR (50) NULL,
    [AddedBy]                        VARCHAR (30) NOT NULL,
    [AddedDate]                      DATETIME     NOT NULL,
    [AddedFromIP]                    VARCHAR (15) NOT NULL,
    [UpdatedBy]                      VARCHAR (30) NULL,
    [UpdatedDate]                    DATETIME     NULL,
    [UpdatedFromIP]                  VARCHAR (15) NULL,
    CONSTRAINT [PK_MaterialMasterArticleValue] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialMasterArticleValue_MaterialAttribute] FOREIGN KEY ([MaterialAttributeId]) REFERENCES [HKP].[MaterialAttribute] ([Id]),
    CONSTRAINT [FK_MaterialMasterArticleValue_MaterialAttributeValue] FOREIGN KEY ([MaterialAttributeValueId]) REFERENCES [HKP].[MaterialAttributeValue] ([Id]),
    CONSTRAINT [FK_MaterialMasterArticleValue_MaterialMaster] FOREIGN KEY ([MaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_MaterialMasterArticleValue_MaterialMasterArticle] FOREIGN KEY ([MaterialMasterArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id])
);

