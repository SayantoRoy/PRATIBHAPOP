CREATE TABLE [dbo].[LeavePolicyWorkingDays] (
    [Id]         VARCHAR (30) NOT NULL,
    [LPMasterID] VARCHAR (30) NULL,
    [LPDetailID] VARCHAR (30) NULL,
    [DayType]    VARCHAR (5)  NULL,
    CONSTRAINT [PK_LeavePolicyWorkingDays] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LeavePolicyWorkingDays_DayType] FOREIGN KEY ([DayType]) REFERENCES [dbo].[DayType] ([DayType]),
    CONSTRAINT [FK_LeavePolicyWorkingDays_LeavePolicyMaster] FOREIGN KEY ([LPMasterID]) REFERENCES [dbo].[LeavePolicyMaster] ([SystemID])
);

