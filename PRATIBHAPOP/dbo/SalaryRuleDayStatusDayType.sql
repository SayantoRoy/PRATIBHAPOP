CREATE TABLE [dbo].[SalaryRuleDayStatusDayType] (
    [SalaryRuleDayStatusSystemID] VARCHAR (30) NOT NULL,
    [DayType]                     VARCHAR (5)  NOT NULL,
    CONSTRAINT [PK_SalaryRuleDayStatusDayType_1] PRIMARY KEY CLUSTERED ([SalaryRuleDayStatusSystemID] ASC, [DayType] ASC),
    CONSTRAINT [FK_SalaryRuleDayStatusDayType_SalaryRuleDayStatusMaster] FOREIGN KEY ([SalaryRuleDayStatusSystemID]) REFERENCES [dbo].[SalaryRuleDayStatusMaster] ([SalaryRuleDayStatusSystemID])
);

