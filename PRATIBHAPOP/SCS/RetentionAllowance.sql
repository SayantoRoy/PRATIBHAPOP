CREATE TABLE [SCS].[RetentionAllowance] (
    [Id]                 VARCHAR (10)    NOT NULL,
    [LegalSalaryGradeId] VARCHAR (10)    NULL,
    [ExperienceSpan]     DECIMAL (18, 4) NULL,
    [Amount]             DECIMAL (18, 4) NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    [PlantId]            VARCHAR (10)    NULL,
    CONSTRAINT [PK_RetentionAllowance] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RetentionAllowance_LegalSalaryGrade] FOREIGN KEY ([LegalSalaryGradeId]) REFERENCES [SCS].[LegalSalaryGrade] ([Id]),
    CONSTRAINT [FK_RetentionAllowance_PlantId] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

