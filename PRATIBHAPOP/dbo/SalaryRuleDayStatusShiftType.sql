CREATE TABLE [dbo].[SalaryRuleDayStatusShiftType] (
    [SalaryRuleDayStatusSystemID] VARCHAR (30) NOT NULL,
    [ShiftDefinitionID]           VARCHAR (30) NOT NULL,
    CONSTRAINT [PK_SalaryRuleDayStatusShiftType_1] PRIMARY KEY CLUSTERED ([SalaryRuleDayStatusSystemID] ASC, [ShiftDefinitionID] ASC),
    CONSTRAINT [FK_SalaryRuleDayStatusShiftType_SalaryRuleDayStatusMaster] FOREIGN KEY ([SalaryRuleDayStatusSystemID]) REFERENCES [dbo].[SalaryRuleDayStatusMaster] ([SalaryRuleDayStatusSystemID]),
    CONSTRAINT [FK_SalaryRuleDayStatusShiftType_ShiftDefination] FOREIGN KEY ([ShiftDefinitionID]) REFERENCES [dbo].[ShiftDefination] ([SystemID])
);

