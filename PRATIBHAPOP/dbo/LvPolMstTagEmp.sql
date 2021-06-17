CREATE TABLE [dbo].[LvPolMstTagEmp] (
    [LvPolMstSystemID] VARCHAR (30)  NOT NULL,
    [EmpSystemID]      VARCHAR (30)  NOT NULL,
    [AddedBy]          VARCHAR (100) NOT NULL,
    [DateAdded]        DATETIME      NOT NULL,
    [UpdatedBy]        VARCHAR (100) NULL,
    [DateUpdated]      DATETIME      NULL,
    CONSTRAINT [PK_LvPolMstTagEmp] PRIMARY KEY CLUSTERED ([LvPolMstSystemID] ASC, [EmpSystemID] ASC),
    CONSTRAINT [FK_LvPolMstTagEmp_EmployeeInformation] FOREIGN KEY ([EmpSystemID]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_LvPolMstTagEmp_LeavePolicyMaster] FOREIGN KEY ([LvPolMstSystemID]) REFERENCES [dbo].[LeavePolicyMaster] ([SystemID])
);

