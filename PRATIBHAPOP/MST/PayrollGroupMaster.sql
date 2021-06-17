CREATE TABLE [MST].[PayrollGroupMaster] (
    [Id]             VARCHAR (10) NOT NULL,
    [PayrollGroupId] VARCHAR (10) NOT NULL,
    [CompanyGroupId] VARCHAR (10) NOT NULL,
    [EmployeeId]     VARCHAR (30) NOT NULL,
    [AddedBy]        VARCHAR (30) NOT NULL,
    [AddedDate]      DATETIME     NOT NULL,
    [AddedFromIP]    VARCHAR (15) NOT NULL,
    [UpdatedBy]      VARCHAR (30) NULL,
    [UpdatedDate]    DATETIME     NULL,
    [UpdatedFromIP]  VARCHAR (15) NULL,
    [PlantId]        VARCHAR (10) NULL,
    CONSTRAINT [PK_PayrollGroupMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PayrollGroupMaster_CompanyGroup] FOREIGN KEY ([CompanyGroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_PayrollGroupMaster_EmployeeInformation] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId]),
    CONSTRAINT [FK_PayrollGroupMaster_PayrollGroup] FOREIGN KEY ([PayrollGroupId]) REFERENCES [HKP].[PayrollGroup] ([Id]),
    CONSTRAINT [FK_PayrollGroupMaster_Plant] FOREIGN KEY ([PlantId]) REFERENCES [ORG].[Plant] ([Id])
);

