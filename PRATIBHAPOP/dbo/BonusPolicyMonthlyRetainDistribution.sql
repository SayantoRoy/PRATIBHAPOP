CREATE TABLE [dbo].[BonusPolicyMonthlyRetainDistribution] (
    [ID]                   VARCHAR (20)    NOT NULL,
    [BonusPolicyDetailsID] VARCHAR (20)    NULL,
    [FstValue]             NUMERIC (18, 2) NULL,
    [FstSalaryHeadID]      VARCHAR (30)    NULL,
    [SndValue]             NUMERIC (18, 2) NULL,
    [SndSalaryHeadID]      VARCHAR (30)    NULL,
    CONSTRAINT [PK_BonusPolicyMonthlyRetainDistribution] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainDistribution_BonusPolicyMonthlyRetainDetails] FOREIGN KEY ([BonusPolicyDetailsID]) REFERENCES [dbo].[BonusPolicyMonthlyRetainDetails] ([ID]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainDistribution_SalaryHead] FOREIGN KEY ([FstSalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainDistribution_SalaryHead1] FOREIGN KEY ([SndSalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

