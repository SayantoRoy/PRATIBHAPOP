CREATE TABLE [MST].[BulletinTemplateBuyerInfo] (
    [Id]                 VARCHAR (10) NOT NULL,
    [BulletinTemplateId] VARCHAR (10) NOT NULL,
    [BuyerId]            VARCHAR (10) NOT NULL,
    [BuyerStyleRefNo]    VARCHAR (50) NOT NULL,
    [OwnStyleRefNo]      VARCHAR (50) NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_BulletinTemplateBuyerInfo] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BulletinTemplateBuyerInfo_BulletinTemplate] FOREIGN KEY ([BulletinTemplateId]) REFERENCES [MST].[BulletinTemplate] ([Id]),
    CONSTRAINT [FK_BulletinTemplateBuyerInfo_BulletinTemplateBuyerInfo] FOREIGN KEY ([BuyerId]) REFERENCES [HKP].[Buyer] ([Id])
);

