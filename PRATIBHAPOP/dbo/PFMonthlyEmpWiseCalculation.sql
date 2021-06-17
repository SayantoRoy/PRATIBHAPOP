CREATE TABLE [dbo].[PFMonthlyEmpWiseCalculation] (
    [ID]                         VARCHAR (20)    NOT NULL,
    [PFEligibleEmpID]            VARCHAR (20)    NULL,
    [MonthNo]                    INT             NOT NULL,
    [YearNo]                     INT             NOT NULL,
    [EmployeeContributionAmount] NUMERIC (18, 2) NULL,
    [IsDistributionEmp]          BIT             CONSTRAINT [DF_PFMonthlyEmpWiseCalculation_IsDistributionEmp] DEFAULT ((0)) NOT NULL,
    [EmployerContributionAmount] NUMERIC (18, 2) NULL,
    [IsDistributionEmpr]         BIT             CONSTRAINT [DF_PFMonthlyEmpWiseCalculation_IsDistributionEmpr] DEFAULT ((0)) NOT NULL,
    [AddedBy]                    VARCHAR (30)    NOT NULL,
    [AddedDate]                  DATETIME        NOT NULL,
    [AddedFromIP]                VARCHAR (15)    NOT NULL,
    [UpdatedBy]                  VARCHAR (30)    NULL,
    [UpdatedDate]                DATETIME        NULL,
    [UpdatedFromIP]              VARCHAR (15)    NULL,
    CONSTRAINT [PK_PFMonthlyEmpWiseCalculation] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_PFMonthlyEmpWiseCalculation_PFEligibleEmployee] FOREIGN KEY ([PFEligibleEmpID]) REFERENCES [dbo].[PFEligibleEmployee] ([ID])
);

