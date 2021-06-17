CREATE TABLE [dbo].[BonusPolicyMonthlyRetainStrcEmpWiseCalculation] (
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
    CONSTRAINT [PK_BonusPolicyMonthlyRetainStrcEmpWiseCalculation] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainStrcEmpWiseCalculation_BonusPolicyMonthlyRetainMaster] FOREIGN KEY ([BnsPlcMthRetainID]) REFERENCES [dbo].[BonusPolicyMonthlyRetainMaster] ([ID]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainStrcEmpWiseCalculation_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_BonusPolicyMonthlyRetainStrcEmpWiseCalculation_SalaryProcMaster] FOREIGN KEY ([SlrProcMstSystemID]) REFERENCES [dbo].[SalaryProcMaster] ([SystemID])
);

