CREATE TABLE [ORG].[COARelationship] (
    [Id]            VARCHAR (10)  NOT NULL,
    [COAId]         VARCHAR (10)  NULL,
    [Sequence]      INT           NOT NULL,
    [StandardName]  VARCHAR (50)  NOT NULL,
    [UserName]      VARCHAR (50)  NOT NULL,
    [URL]           VARCHAR (200) NOT NULL,
    [Description]   VARCHAR (250) NULL,
    [Remarks]       VARCHAR (250) NULL,
    [Active]        BIT           NOT NULL,
    [Archive]       BIT           NOT NULL,
    [AddedBy]       VARCHAR (30)  NOT NULL,
    [AddedDate]     DATETIME      NOT NULL,
    [AddedFromIP]   VARCHAR (15)  NOT NULL,
    [UpdatedBy]     VARCHAR (30)  NULL,
    [UpdatedDate]   DATETIME      NULL,
    [UpdatedFromIP] VARCHAR (15)  NULL,
    CONSTRAINT [PK_COARelationship] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_COARelationship_COA] FOREIGN KEY ([COAId]) REFERENCES [HKP].[COA] ([Id])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Chart Of Account Relationship', @level0type = N'SCHEMA', @level0name = N'ORG', @level1type = N'TABLE', @level1name = N'COARelationship';

