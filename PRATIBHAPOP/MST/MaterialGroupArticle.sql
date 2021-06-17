CREATE TABLE [MST].[MaterialGroupArticle] (
    [Id]                    VARCHAR (10)  NOT NULL,
    [MaterialGroupMasterId] VARCHAR (10)  NOT NULL,
    [Code]                  VARCHAR (200) NULL,
    [ShortName]             VARCHAR (200) NULL,
    [StandardName]          VARCHAR (200) NULL,
    [AddedBy]               VARCHAR (30)  NOT NULL,
    [AddedDate]             DATETIME      NOT NULL,
    [AddedFromIP]           VARCHAR (15)  NOT NULL,
    [UpdatedBy]             VARCHAR (30)  NULL,
    [UpdatedDate]           DATETIME      NULL,
    [UpdatedFromIP]         VARCHAR (15)  NULL,
    CONSTRAINT [PK_MaterialGroupArticle] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MaterialGroupArticle_MaterialGroupMaster] FOREIGN KEY ([MaterialGroupMasterId]) REFERENCES [MST].[MaterialGroupMaster] ([Id])
);

