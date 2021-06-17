CREATE TABLE [dbo].[BonusPolicyMonthlyRetainMonthNo] (
    [BnsPlcMthRetainMstID] VARCHAR (20) NOT NULL,
    [MonthNo]              VARCHAR (30) NOT NULL,
    [MonthName]            VARCHAR (30) NOT NULL,
    CONSTRAINT [PK_BonusPolicyMonthlyRetainMonthNo] PRIMARY KEY CLUSTERED ([BnsPlcMthRetainMstID] ASC, [MonthNo] ASC),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainMonthNo_BonusPolicyMonthlyRetainMaster] FOREIGN KEY ([BnsPlcMthRetainMstID]) REFERENCES [dbo].[BonusPolicyMonthlyRetainMaster] ([ID])
);

