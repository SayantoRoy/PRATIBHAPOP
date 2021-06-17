CREATE TABLE [dbo].[DisciplinaryActionSettingDetails] (
    [Id]                           VARCHAR (30) NOT NULL,
    [DisciplinaryActionCategoryId] VARCHAR (10) NOT NULL,
    [Sequence]                     VARCHAR (30) NOT NULL,
    [LetterIssueDay]               VARCHAR (30) NOT NULL,
    [IsSeparable]                  BIT          DEFAULT ((0)) NULL,
    [PlantId]                      VARCHAR (10) NULL,
    [AddedBy]                      VARCHAR (30) NOT NULL,
    [AddedDate]                    DATETIME     NOT NULL,
    [AddedFromIP]                  VARCHAR (15) NOT NULL,
    [UpdatedBy]                    VARCHAR (30) NULL,
    [UpdatedDate]                  DATETIME     NULL,
    [UpdatedFromIP]                VARCHAR (15) NULL,
    [Description]                  VARCHAR (50) NULL,
    [IsActive]                     BIT          DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id]),
    CONSTRAINT [FK__Disciplin__Disci__6D5A7913] FOREIGN KEY ([DisciplinaryActionCategoryId]) REFERENCES [HKP].[DisciplinaryActionCategory] ([Id]),
    CONSTRAINT [FK__Disciplin__Disci__74DB9F4A] FOREIGN KEY ([DisciplinaryActionCategoryId]) REFERENCES [HKP].[DisciplinaryActionCategory] ([Id])
);

