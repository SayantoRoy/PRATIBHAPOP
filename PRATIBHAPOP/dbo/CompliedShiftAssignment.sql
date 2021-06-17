CREATE TABLE [dbo].[CompliedShiftAssignment] (
    [Id]              VARCHAR (10)  NOT NULL,
    [CompliedShiftId] VARCHAR (10)  NULL,
    [PlantId]         VARCHAR (10)  NULL,
    [EmpSystemId]     VARCHAR (30)  NOT NULL,
    [WorkDate]        DATETIME      NOT NULL,
    [AddedBy]         VARCHAR (30)  NOT NULL,
    [AddedDate]       DATETIME      NOT NULL,
    [AddedFromIP]     VARCHAR (15)  NULL,
    [UpdatedBy]       VARCHAR (30)  NULL,
    [UpdatedDate]     DATETIME      NULL,
    [UpdatedFromIP]   VARCHAR (150) NULL,
    CONSTRAINT [PK_CompliedShiftAssignment] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompliedShiftAssignment_CompliedShift] FOREIGN KEY ([CompliedShiftId]) REFERENCES [HKP].[CompliedShift] ([Id]),
    CONSTRAINT [FK_CompliedShiftAssignment_EmployeeInformation] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_CompliedShiftAssignment_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

