CREATE TABLE [TRN].[GRNDocumentMap] (
    [Id]             VARCHAR (50)  NOT NULL,
    [CompanyGroupId] VARCHAR (10)  NOT NULL,
    [GRNId]          VARCHAR (10)  NULL,
    [UserFilename]   VARCHAR (200) NOT NULL,
    [SystemFileName] VARCHAR (200) NOT NULL,
    [Description]    VARCHAR (500) NULL,
    [Remarks]        VARCHAR (500) NULL,
    [AddedBy]        VARCHAR (30)  NOT NULL,
    [AddedDate]      DATETIME      NOT NULL,
    [AddedFromIP]    VARCHAR (15)  NOT NULL,
    [UpdatedBy]      VARCHAR (30)  NULL,
    [UpdatedDate]    DATETIME      NULL,
    [UpdatedFromIP]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_GRNDocumentMap] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_GRNDocumentMap_CompanyGroupId] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [fk_GRNDocumentMap_GRNId] FOREIGN KEY ([GRNId]) REFERENCES [TRN].[InventoryReceive] ([Id])
);

