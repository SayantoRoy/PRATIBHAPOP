CREATE TABLE [dbo].[AttdnBonusPmtPolicyLeaveType] (
    [AttdnBonusPmtPolicyDetailsID] VARCHAR (20) NOT NULL,
    [LeaveTypeID]                  VARCHAR (30) NOT NULL,
    [ApprovalType]                 VARCHAR (50) NULL,
    CONSTRAINT [PK_AttdnBonusPmtPolicyLeaveType_1] PRIMARY KEY CLUSTERED ([AttdnBonusPmtPolicyDetailsID] ASC, [LeaveTypeID] ASC),
    CONSTRAINT [FK_AttdnBonusPmtPolicyLeaveType_AttdnBonusPmtPolicyDetails] FOREIGN KEY ([AttdnBonusPmtPolicyDetailsID]) REFERENCES [dbo].[AttdnBonusPmtPolicyDetails] ([ID])
);

