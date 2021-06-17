CREATE TABLE [dbo].[BoMDocuments] (
    [Id]            VARCHAR (20)  NOT NULL,
    [BoMId]         VARCHAR (20)  NULL,
    [FileName]      VARCHAR (100) NULL,
    [Description]   VARCHAR (250) NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    CONSTRAINT [PK_BoMDocuments] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BoMDocuments_BoM] FOREIGN KEY ([BoMId]) REFERENCES [dbo].[BOMMaster] ([Id])
);

