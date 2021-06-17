CREATE TABLE [dbo].[ESICPolicyLeaveType] (
    [ESICPolicyMasterID] VARCHAR (20) NOT NULL,
    [LeaveTypeID]        VARCHAR (30) NOT NULL,
    CONSTRAINT [PK_ESICPolicyLeaveType_1] PRIMARY KEY CLUSTERED ([ESICPolicyMasterID] ASC, [LeaveTypeID] ASC)
);

