CREATE TABLE [dbo].[BOMMaster] (
    [Id]                 VARCHAR (20)  NOT NULL,
    [FGMaterialMasterId] VARCHAR (30)  NOT NULL,
    [FGArticleId]        VARCHAR (10)  NULL,
    [Description]        VARCHAR (250) NULL,
    [AddedBy]            VARCHAR (30)  NOT NULL,
    [AddedDate]          DATETIME      NOT NULL,
    [AddedFromIP]        VARCHAR (15)  NOT NULL,
    [UpdatedBy]          VARCHAR (30)  NULL,
    [UpdatedDate]        DATETIME      NULL,
    [UpdatedFromIP]      VARCHAR (15)  NULL,
    CONSTRAINT [PK_BOMMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BOMMaster_MaterialMaster] FOREIGN KEY ([FGMaterialMasterId]) REFERENCES [MST].[MaterialMaster] ([Id]),
    CONSTRAINT [FK_BOMMaster_MaterialMasterArticle] FOREIGN KEY ([FGArticleId]) REFERENCES [MST].[MaterialMasterArticle] ([Id])
);

