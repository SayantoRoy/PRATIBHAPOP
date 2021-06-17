CREATE TABLE [dbo].[AttdnBonusLeaveType] (
    [Id]                           VARCHAR (20) NOT NULL,
    [AttdnBonusPmtPolicyMasterId]  VARCHAR (20) NULL,
    [AttdnBonusPmtPolicyDetailsId] VARCHAR (20) NULL,
    [LeaveTypeId]                  VARCHAR (10) NULL,
    [IsPreApplied]                 BIT          DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([AttdnBonusPmtPolicyDetailsId]) REFERENCES [dbo].[AttdnBonusPmtPolicyDetails] ([ID]),
    FOREIGN KEY ([AttdnBonusPmtPolicyMasterId]) REFERENCES [dbo].[AttdnBonusPmtPolicyMaster] ([ID]),
    FOREIGN KEY ([LeaveTypeId]) REFERENCES [dbo].[LeaveType] ([Id])
);

