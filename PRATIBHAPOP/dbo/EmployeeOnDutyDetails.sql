CREATE TABLE [dbo].[EmployeeOnDutyDetails] (
    [Id]          VARCHAR (30) NOT NULL,
    [OnDutyId]    VARCHAR (30) NOT NULL,
    [Workdate]    DATETIME     NOT NULL,
    [AddedBy]     VARCHAR (30) NULL,
    [AddedDate]   DATETIME     NULL,
    [IsAvailed]   BIT          NOT NULL,
    [UpdatedBy]   VARCHAR (30) NULL,
    [UpdatedDate] DATETIME     NULL,
    CONSTRAINT [PK_EmployeeOnDutyDetails] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeOnDutyDetails_EmployeeOnDuty] FOREIGN KEY ([OnDutyId]) REFERENCES [dbo].[EmployeeOnDuty] ([Id])
);

