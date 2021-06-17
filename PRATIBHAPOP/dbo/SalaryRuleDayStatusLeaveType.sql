CREATE TABLE [dbo].[SalaryRuleDayStatusLeaveType] (
    [SalaryRuleDayStatusSystemID] VARCHAR (30) NOT NULL,
    [LeaveTypeID]                 VARCHAR (30) NOT NULL,
    [ApprovalType]                VARCHAR (50) NULL,
    [IsPostApplied]               BIT          DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SalaryRuleDayStatusLeaveType_1] PRIMARY KEY CLUSTERED ([SalaryRuleDayStatusSystemID] ASC, [LeaveTypeID] ASC),
    CONSTRAINT [FK_SalaryRuleDayStatusLeaveType_SalaryRuleDayStatusMaster] FOREIGN KEY ([SalaryRuleDayStatusSystemID]) REFERENCES [dbo].[SalaryRuleDayStatusMaster] ([SalaryRuleDayStatusSystemID])
);

