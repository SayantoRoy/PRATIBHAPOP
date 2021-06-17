CREATE TABLE [dbo].[EmployeeOnDuty] (
    [Id]           VARCHAR (30)  NOT NULL,
    [EmpSystemId]  VARCHAR (30)  NOT NULL,
    [GroupId]      VARCHAR (10)  NOT NULL,
    [PlantId]      VARCHAR (10)  NOT NULL,
    [FromDate]     DATETIME      NOT NULL,
    [ToDate]       DATETIME      NOT NULL,
    [IsApproved]   BIT           NULL,
    [Reason]       VARCHAR (250) NULL,
    [AddedBy]      VARCHAR (30)  NOT NULL,
    [AddedDate]    DATETIME      NOT NULL,
    [UpdatedBy]    VARCHAR (30)  NULL,
    [UpdatedDate]  DATETIME      NULL,
    [ApprovedBy]   VARCHAR (30)  NULL,
    [ApprovedDate] DATETIME      NULL,
    CONSTRAINT [PK_EmployeeOnDuty] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmployeeOnDuty_CompanyGroup] FOREIGN KEY ([GroupId]) REFERENCES [ORG].[CompanyGroup] ([Id]),
    CONSTRAINT [FK_EmployeeOnDuty_EmployeeOnDuty] FOREIGN KEY ([EmpSystemId]) REFERENCES [dbo].[EmployeeInformation] ([SystemId])
);

