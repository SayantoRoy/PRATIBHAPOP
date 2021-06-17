CREATE TABLE [dbo].[ProfessionalTaxDeductionMonthly] (
    [Id]              VARCHAR (30)    NOT NULL,
    [EmpSystemId]     VARCHAR (30)    NOT NULL,
    [EarnedAmount]    DECIMAL (18, 2) NULL,
    [StructureAmount] DECIMAL (18, 2) NULL,
    [MonthNo]         INT             NULL,
    [YearNo]          INT             NULL,
    [TaxYearId]       VARCHAR (10)    NULL,
    [AddedBy]         VARCHAR (100)   NOT NULL,
    [DateAdded]       DATETIME        NOT NULL,
    [UpdatedBy]       VARCHAR (100)   NULL,
    [DateUpdated]     DATETIME        NULL,
    CONSTRAINT [PK_ProfessionalTaxDeductionMonthly] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProfessionalTaxDeductionMonthly_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ProfessionalTaxDeductionMonthly_TaxYear] FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id])
);

