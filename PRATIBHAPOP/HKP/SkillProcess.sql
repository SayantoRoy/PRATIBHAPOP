CREATE TABLE [HKP].[SkillProcess] (
    [Id]            VARCHAR (10) NOT NULL,
    [ProcessId]     VARCHAR (10) NOT NULL,
    [SkillId]       VARCHAR (10) NOT NULL,
    [AddedBy]       VARCHAR (30) NOT NULL,
    [AddedDate]     DATETIME     NOT NULL,
    [AddedFromIP]   VARCHAR (15) NOT NULL,
    [UpdatedBy]     VARCHAR (30) NULL,
    [UpdatedDate]   DATETIME     NULL,
    [UpdatedFromIP] VARCHAR (15) NULL,
    CONSTRAINT [PK_SkillProces] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SkillProces_Process] FOREIGN KEY ([ProcessId]) REFERENCES [HKP].[Process] ([Id]),
    CONSTRAINT [FK_SkillProces_Skill] FOREIGN KEY ([SkillId]) REFERENCES [HKP].[Skill] ([Id])
);

