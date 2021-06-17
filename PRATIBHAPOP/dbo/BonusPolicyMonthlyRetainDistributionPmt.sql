CREATE TABLE [dbo].[BonusPolicyMonthlyRetainDistributionPmt] (
    [ID]                INT             IDENTITY (1, 1) NOT NULL,
    [BnsPlyMntRetainID] VARCHAR (20)    NULL,
    [SalaryHeadID]      VARCHAR (30)    NULL,
    [Value]             NUMERIC (18, 2) NULL,
    CONSTRAINT [PK_BonusPolicyMonthlyRetainDistributionPmt] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainDistributionPmt_BonusPolicyMonthlyRetainEmpWiseCalculation] FOREIGN KEY ([BnsPlyMntRetainID]) REFERENCES [dbo].[BonusPolicyMonthlyRetainEmpWiseCalculation] ([ID]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainDistributionPmt_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

