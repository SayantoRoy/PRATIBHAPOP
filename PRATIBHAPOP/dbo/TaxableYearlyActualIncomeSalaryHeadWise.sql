CREATE TABLE [dbo].[TaxableYearlyActualIncomeSalaryHeadWise] (
    [SystemID]            VARCHAR (30)    NOT NULL,
    [EmpInfoSystemID]     VARCHAR (30)    NOT NULL,
    [TaxPolicyMstID]      VARCHAR (30)    NULL,
    [TaxGroupID]          VARCHAR (30)    NULL,
    [SalaryHeadID]        VARCHAR (30)    NOT NULL,
    [TaxYearID]           VARCHAR (30)    NULL,
    [YearlyIncome]        NUMERIC (18, 4) NULL,
    [YearlyTaxableIncome] NUMERIC (18, 4) NULL,
    [AddedBy]             VARCHAR (100)   NOT NULL,
    [DateAdded]           DATETIME        NOT NULL,
    [UpdatedBy]           VARCHAR (100)   NULL,
    [DateUpdated]         DATETIME        NULL,
    CONSTRAINT [PK_TaxableYearlyActualIncomeSalaryHeadWise] PRIMARY KEY CLUSTERED ([SystemID] ASC),
    CONSTRAINT [FK_TaxableYearlyActualIncomeSalaryHeadWise_EmployeeInformation] FOREIGN KEY ([EmpInfoSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_TaxableYearlyActualIncomeSalaryHeadWise_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_TaxableYearlyActualIncomeSalaryHeadWise_TaxGroup] FOREIGN KEY ([TaxGroupID]) REFERENCES [dbo].[TaxGroup] ([SystemID]),
    CONSTRAINT [FK_TaxableYearlyActualIncomeSalaryHeadWise_TaxPolicyMaster] FOREIGN KEY ([TaxPolicyMstID]) REFERENCES [dbo].[TaxPolicyMaster] ([SystemID])
);

