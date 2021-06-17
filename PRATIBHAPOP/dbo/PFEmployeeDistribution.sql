CREATE TABLE [dbo].[PFEmployeeDistribution] (
    [ID]                   VARCHAR (20)    NOT NULL,
    [PFPolicyDetailsID]    VARCHAR (20)    NULL,
    [Value]                NUMERIC (18, 2) NULL,
    [SalaryHeadID]         VARCHAR (30)    NULL,
    [UpperLimit]           NUMERIC (18)    NULL,
    [ResidualValueSlrHdID] VARCHAR (30)    NULL,
    CONSTRAINT [PK_PFEmployeeDistribution] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_PFEmployeeDistribution_PFPolicyDetails] FOREIGN KEY ([PFPolicyDetailsID]) REFERENCES [dbo].[PFPolicyDetails] ([ID]),
    CONSTRAINT [FK_PFEmployeeDistribution_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_PFEmployeeDistribution_SalaryHead1] FOREIGN KEY ([ResidualValueSlrHdID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

