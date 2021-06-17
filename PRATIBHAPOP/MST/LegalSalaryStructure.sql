CREATE TABLE [MST].[LegalSalaryStructure] (
    [Id]                 VARCHAR (10) NOT NULL,
    [LegalSalaryGradeId] VARCHAR (10) NOT NULL,
    [EffectiveDate]      DATETIME     NOT NULL,
    [AddedBy]            VARCHAR (30) NOT NULL,
    [AddedDate]          DATETIME     NOT NULL,
    [AddedFromIP]        VARCHAR (15) NOT NULL,
    [UpdatedBy]          VARCHAR (30) NULL,
    [UpdatedDate]        DATETIME     NULL,
    [UpdatedFromIP]      VARCHAR (15) NULL,
    [EmployeeLocationId] VARCHAR (10) NULL,
    CONSTRAINT [PK_LegalSalaryStructure] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LegalSalaryStructure_EmployeeLocation] FOREIGN KEY ([EmployeeLocationId]) REFERENCES [HKP].[EmployeeLocation] ([Id]),
    CONSTRAINT [FK_LegalSalaryStructure_LegalSalaryGrade] FOREIGN KEY ([LegalSalaryGradeId]) REFERENCES [SCS].[LegalSalaryGrade] ([Id])
);

