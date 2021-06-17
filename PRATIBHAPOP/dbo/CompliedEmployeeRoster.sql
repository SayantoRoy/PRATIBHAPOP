CREATE TABLE [dbo].[CompliedEmployeeRoster] (
    [Id]                          VARCHAR (10) NOT NULL,
    [EmpSystemId]                 VARCHAR (30) NULL,
    [CompliedShiftRosterMasterID] VARCHAR (10) NULL,
    [AddedBy]                     VARCHAR (30) NOT NULL,
    [AddedDate]                   DATETIME     NOT NULL,
    [AddedFromIP]                 VARCHAR (15) NOT NULL,
    [UpdatedBy]                   VARCHAR (30) NULL,
    [UpdatedDate]                 DATETIME     NULL,
    [UpdatedFromIP]               VARCHAR (15) NULL,
    CONSTRAINT [PK_CompliedRosterShift] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompliedRosterShift_CompliedRosterShift] FOREIGN KEY ([CompliedShiftRosterMasterID]) REFERENCES [dbo].[CompliedShiftRosterMaster] ([Id]),
    CONSTRAINT [FK_CompliedRosterShift_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

