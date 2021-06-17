CREATE TABLE [MST].[LegalSalaryGradeDesignation] (
    [Id]                 VARCHAR (10) NOT NULL,
    [PlantId]            VARCHAR (10) NOT NULL,
    [LegalSalaryGradeId] VARCHAR (10) NULL,
    [LegalDesignationId] VARCHAR (10) NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    CONSTRAINT [PK_LegalSalaryGradeDesignation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LegalSalaryGradeDesignation_LegalDesignation] FOREIGN KEY ([LegalDesignationId]) REFERENCES [HKP].[LegalDesignation] ([Id]),
    CONSTRAINT [FK_LegalSalaryGradeDesignation_LegalSalaryGrade] FOREIGN KEY ([LegalSalaryGradeId]) REFERENCES [SCS].[LegalSalaryGrade] ([Id]),
    CONSTRAINT [FK_LegalSalaryGradeDesignation_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

