CREATE TABLE [dbo].[PFEmployerDistribution] (
    [ID]                   VARCHAR (30)    NOT NULL,
    [PFPolicyDetailsID]    VARCHAR (20)    NULL,
    [Value]                NUMERIC (18, 2) NULL,
    [SalaryHeadID]         VARCHAR (30)    NULL,
    [UpperLimit]           NUMERIC (18)    NULL,
    [ResidualValueSlrHdID] VARCHAR (30)    NULL,
    CONSTRAINT [PK_PFEmployerDistribution] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_PFEmployerDistribution_PFPolicyDetails] FOREIGN KEY ([PFPolicyDetailsID]) REFERENCES [dbo].[PFPolicyDetails] ([ID]),
    CONSTRAINT [FK_PFEmployerDistribution_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_PFEmployerDistribution_SalaryHead1] FOREIGN KEY ([ResidualValueSlrHdID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

