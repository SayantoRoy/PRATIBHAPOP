CREATE TABLE [dbo].[BonusPolicyMonthlyRetainDistributionStrcPmt] (
    [ID]                INT             IDENTITY (1, 1) NOT NULL,
    [BnsPlyMntRetainID] VARCHAR (20)    NULL,
    [SalaryHeadID]      VARCHAR (30)    NULL,
    [Value]             NUMERIC (18, 2) NULL,
    CONSTRAINT [PK_BonusPolicyMonthlyRetainDistributionStrcPmt] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainDistributionStrcPmt_BonusPolicyMonthlyRetainEmpWiseCalculation] FOREIGN KEY ([BnsPlyMntRetainID]) REFERENCES [dbo].[BonusPolicyMonthlyRetainEmpWiseCalculation] ([ID]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainDistributionStrcPmt_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

