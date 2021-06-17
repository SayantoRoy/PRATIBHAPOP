CREATE TABLE [MST].[BulletinTemplate] (
    [Id]              VARCHAR (10)  NOT NULL,
    [CompanyGroupId]  VARCHAR (10)  NOT NULL,
    [BulletinName]    VARCHAR (50)  NOT NULL,
    [AlternativeName] VARCHAR (50)  NULL,
    [ByWhom]          VARCHAR (50)  NOT NULL,
    [ProductMasterId] VARCHAR (10)  NOT NULL,
    [SizeGroupId]     VARCHAR (10)  NOT NULL,
    [AddedBy]         VARCHAR (30)  NOT NULL,
    [AddedDate]       DATETIME      NOT NULL,
    [AddedFromIP]     VARCHAR (15)  NOT NULL,
    [UpdatedBy]       VARCHAR (30)  NULL,
    [UpdatedDate]     DATETIME      NULL,
    [UpdatedFromIP]   VARCHAR (15)  NULL,
    [PicFileName]     VARCHAR (250) NULL,
    CONSTRAINT [PK_BulletinTemplate] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BulletinTemplate_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_BulletinTemplate_ProductMaster] FOREIGN KEY ([ProductMasterId]) REFERENCES [MST].[ProductMaster] ([Id]),
    CONSTRAINT [FK_BulletinTemplate_SizeGroup] FOREIGN KEY ([SizeGroupId]) REFERENCES [HKP].[SizeGroup] ([Id])
);

