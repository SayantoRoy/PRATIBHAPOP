CREATE TABLE [dbo].[BonusPolicyMonthlyRetainEmpWiseCalculation] (
    [ID]                 VARCHAR (20)    NOT NULL,
    [EmpSystemID]        VARCHAR (30)    NULL,
    [BnsPlcMthRetainID]  VARCHAR (20)    NULL,
    [SlrProcMstSystemID] VARCHAR (30)    NULL,
    [MonthNo]            INT             NOT NULL,
    [YearNo]             INT             NOT NULL,
    [EarningAmount]      NUMERIC (18, 2) NULL,
    [AddedBy]            VARCHAR (30)    NOT NULL,
    [AddedDate]          DATETIME        NOT NULL,
    [AddedFromIP]        VARCHAR (15)    NOT NULL,
    [UpdatedBy]          VARCHAR (30)    NULL,
    [UpdatedDate]        DATETIME        NULL,
    [UpdatedFromIP]      VARCHAR (15)    NULL,
    CONSTRAINT [PK_BonusPolicyMonthlyRetainEmpWiseCalculation] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainEmpWiseCalculation_BonusPolicyMonthlyRetainMaster] FOREIGN KEY ([BnsPlcMthRetainID]) REFERENCES [dbo].[BonusPolicyMonthlyRetainMaster] ([ID]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainEmpWiseCalculation_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainEmpWiseCalculation_SalaryProcMaster] FOREIGN KEY ([SlrProcMstSystemID]) REFERENCES [dbo].[SalaryProcMaster] ([SystemID])
);

