CREATE TABLE [HKP].[Skill] (
    [Id]                  VARCHAR (10)    NOT NULL,
    [CompanyGroupId]      VARCHAR (10)    NOT NULL,
    [SkillCategoryId]     VARCHAR (10)    NOT NULL,
    [Sequence]            DECIMAL (18, 2) NOT NULL,
    [Code]                VARCHAR (10)    NOT NULL,
    [ShortName]           VARCHAR (15)    NOT NULL,
    [StandardName]        VARCHAR (50)    NOT NULL,
    [UserName]            VARCHAR (50)    NOT NULL,
    [Description]         VARCHAR (250)   NULL,
    [Remarks]             VARCHAR (250)   NULL,
    [IsMachineApplicable] BIT             NOT NULL,
    [Active]              BIT             CONSTRAINT [DF_Skill_Active] DEFAULT ('false') NOT NULL,
    [AddedBy]             VARCHAR (30)    NOT NULL,
    [AddedDate]           DATETIME        NOT NULL,
    [AddedFromIP]         VARCHAR (15)    NOT NULL,
    [UpdatedBy]           VARCHAR (30)    NULL,
    [UpdatedDate]         DATETIME        NULL,
    [UpdatedFromIP]       VARCHAR (15)    NULL,
    CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Skill_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_Skill_SkillCategory] FOREIGN KEY ([SkillCategoryId]) REFERENCES [HKP].[SkillCategory] ([Id])
);

