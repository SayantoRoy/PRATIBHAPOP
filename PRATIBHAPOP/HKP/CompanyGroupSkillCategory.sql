CREATE TABLE [HKP].[CompanyGroupSkillCategory] (
    [Id]              VARCHAR (10) NOT NULL,
    [CompanyGroupId]  VARCHAR (10) NOT NULL,
    [SkillCategoryId] VARCHAR (10) NOT NULL,
    [Active]          BIT          NOT NULL,
    [AddedBy]         VARCHAR (30) NOT NULL,
    [AddedDate]       DATETIME     NOT NULL,
    [AddedFromIP]     VARCHAR (15) NOT NULL,
    [UpdatedBy]       VARCHAR (30) NULL,
    [UpdatedDate]     DATETIME     NULL,
    [UpdatedFromIP]   VARCHAR (15) NULL,
    CONSTRAINT [PK_CompanyGroupSkillCategory] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyGroupSkillCategory_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_CompanyGroupSkillCategory_SkillCategory] FOREIGN KEY ([SkillCategoryId]) REFERENCES [HKP].[SkillCategory] ([Id])
);

