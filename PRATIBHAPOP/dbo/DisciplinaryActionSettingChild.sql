CREATE TABLE [dbo].[DisciplinaryActionSettingChild] (
    [Id]                                 VARCHAR (30)  NOT NULL,
    [DisciplinaryActionSettingDetailsId] VARCHAR (30)  NOT NULL,
    [DisciplinaryActionCategoryId]       VARCHAR (10)  NOT NULL,
    [LetterFormat]                       VARCHAR (100) NOT NULL,
    [LetterName]                         VARCHAR (100) NOT NULL,
    [LetterLanguage]                     VARCHAR (30)  NOT NULL,
    [IsDefault]                          BIT           DEFAULT ((0)) NOT NULL,
    [IsActive]                           BIT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([DisciplinaryActionSettingDetailsId]) REFERENCES [dbo].[DisciplinaryActionSettingDetails] ([Id]),
    CONSTRAINT [FK__Disciplin__Disci__6B7230A1] FOREIGN KEY ([DisciplinaryActionCategoryId]) REFERENCES [HKP].[DisciplinaryActionCategory] ([Id])
);

