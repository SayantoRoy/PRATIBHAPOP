CREATE TABLE [dbo].[PFMonthlyDistributionEmployer] (
    [ID]                   INT             IDENTITY (1, 1) NOT NULL,
    [PFMntEmpWiseCalID]    VARCHAR (20)    NULL,
    [Value]                NUMERIC (18, 2) NULL,
    [SalaryHeadID]         VARCHAR (30)    NULL,
    [UpperLimit]           NUMERIC (18, 2) NULL,
    [ResidualValueSlrHdID] VARCHAR (30)    NULL,
    [AddedBy]              VARCHAR (30)    NOT NULL,
    [AddedDate]            DATETIME        NOT NULL,
    [AddedFromIP]          VARCHAR (15)    NOT NULL,
    [UpdatedBy]            VARCHAR (30)    NULL,
    [UpdatedDate]          DATETIME        NULL,
    [UpdatedFromIP]        VARCHAR (15)    NULL,
    CONSTRAINT [PK_PFMonthlyDistributionEmployer] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_PFMonthlyDistributionEmployer_PFMonthlyEmpWiseCalculation] FOREIGN KEY ([PFMntEmpWiseCalID]) REFERENCES [dbo].[PFMonthlyEmpWiseCalculation] ([ID]),
    CONSTRAINT [FK_PFMonthlyDistributionEmployer_SalaryHead] FOREIGN KEY ([SalaryHeadID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID]),
    CONSTRAINT [FK_PFMonthlyDistributionEmployer_SalaryHead1] FOREIGN KEY ([ResidualValueSlrHdID]) REFERENCES [dbo].[SalaryHead] ([SalaryHeadID])
);

