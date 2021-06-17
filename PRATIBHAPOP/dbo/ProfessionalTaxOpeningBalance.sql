CREATE TABLE [dbo].[ProfessionalTaxOpeningBalance] (
    [Id]                         VARCHAR (50)    NOT NULL,
    [EmpSystemId]                VARCHAR (30)    NOT NULL,
    [TaxYearId]                  VARCHAR (10)    NOT NULL,
    [OpeningTaxableIncomeEarned] DECIMAL (18, 2) NOT NULL,
    [OpeningTaxPaid]             DECIMAL (18, 2) NOT NULL,
    [AddedBy]                    VARCHAR (100)   NOT NULL,
    [DateAdded]                  DATETIME        NOT NULL,
    [UpdatedBy]                  VARCHAR (100)   NULL,
    [DateUpdated]                DATETIME        NULL,
    [TaxTypeId]                  VARCHAR (30)    NULL,
    CONSTRAINT [PK_ProfessionalTaxOpeningBalance] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProfessionalTaxOpeningBalance_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_ProfessionalTaxOpeningBalance_TaxYear] FOREIGN KEY ([TaxYearId]) REFERENCES [SCS].[TaxYear] ([Id]),
    CONSTRAINT [FK_TaxOB_TaxType] FOREIGN KEY ([TaxTypeId]) REFERENCES [dbo].[TaxType] ([Id])
);

